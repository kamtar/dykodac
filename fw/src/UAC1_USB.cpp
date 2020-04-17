/*
 * UAC1_USB.cpp
 *
 *  Created on: 10 Apr 2020
 *      Author: Kamtar
 */
#include "UAC1_USB.hpp"
#include "fifo.h"
UAC1_USB *UAC1_USB::m_this = (UAC1_USB*) nullptr;
#include "hpl_dma.h"
#include <hal_delay.h>
volatile uint16_t cache[8048];
volatile uint16_t uindex = 0;
UAC1_USB::UAC1_USB() {

	memset((&m_dev_desc + sizeof(m_dev_desc._header)), 0, sizeof(m_dev_desc));
	memset((&m_standart_config_desc + sizeof(m_standart_config_desc._header)),
			0, sizeof(m_standart_config_desc));
	memset(
			(&m_audio_contro_standart_ifc_desc
					+ sizeof(m_audio_contro_standart_ifc_desc._header)), 0,
			sizeof(m_audio_contro_standart_ifc_desc));

	m_dev_desc.bcdUSB = 200;
	m_dev_desc.bDeviceClass = 0;
	m_dev_desc.bDeviceSubClass = 0;
	m_dev_desc.bDeviceProtocol = 0;
	m_dev_desc.bMaxPacketSize0 = 64;
	m_dev_desc.idVendor = 0x046D;
	m_dev_desc.idProduct = 0xC22E;
	m_dev_desc.bNumConfigurations = 1;

	m_standart_config_desc.wTotalLength = 0; //tobe calculated
	m_standart_config_desc.bNumInterfaces = 2;
	m_standart_config_desc.bConfigurationValue = 1;
	m_standart_config_desc.bmAttributes = 0xC0;
	m_standart_config_desc.bMaxPower = 10;

	m_audio_contro_standart_ifc_desc.bInterfaceNumber = 0;
	m_audio_contro_standart_ifc_desc.bNumEndpoints = 1;
	m_audio_contro_standart_ifc_desc.bInterfaceClass = 1; //audio class
	m_audio_contro_standart_ifc_desc.bInterfaceSubClass = 1; //audiocontrol
	m_audio_contro_standart_ifc_desc.bInterfaceProtocol = 0;
	m_audio_contro_standart_ifc_desc.iInterface = 0;

}
;

volatile uint16_t incnt = 0;
volatile uint16_t outcnt = 0;
volatile uint16_t f_size = 8048;
volatile int maxd = 0;
static uint32_t lastsize = 0;
volatile uint32_t n_frames;
volatile uint32_t in = 0;
volatile uint32_t dotherest = 0;
volatile uint32_t offset = 0;
extern struct _usb_d_dev_prvt prvt_inst;
#include <hpl_gpio.h>
extern uint32_t blink;
inline void UAC1_USB::data_in(const uint8_t ep, uint8_t state, void *ptr) {
	if (m_this->no)
		return;
	if (ep != 2)
		return;

	volatile uint32_t yy;
	volatile struct _usb_d_dev_ep *ept = (struct _usb_d_dev_ep*) ptr;
	if (ept->ep != ep)
		return;

	if (ept->trans_count == 0)
		return;

	uint16_t size = ept->trans_count;

	if (fifo_space_left(incnt,outcnt,f_size) < ((size / 2))) {
		yy = in;
		blink = 100;
		//__asm__("bkpt");
		UsbDeviceDescBank *bank = &prvt_inst.desc_table[2].DeviceDescBank[0];
		bank[0].PCKSIZE.bit.BYTE_COUNT = 0;
		return;
	}
	in += size / 2;
	size = size / 2;
	if ((incnt + size) >= f_size) {
		dotherest = (incnt + size) - f_size;
		offset = ((uint32_t) ept->cache) + (((size) - (dotherest)) * 2);

		_dma_set_destination_address(0, (const void*) (&cache[incnt]));
		_dma_set_source_address(0, ept->cache);
		_dma_set_data_amount(0, (size - dotherest));
		_dma_enable_transaction(0, true);
		incnt = dotherest;
	} else {

		_dma_set_destination_address(0, (const void*) (&cache[incnt]));
		_dma_set_source_address(0, ept->cache);
		_dma_set_data_amount(0, (size));
		_dma_enable_transaction(0, true);
		incnt = incnt + size;
	}
	/*	size = size/2;

	 if((incnt+size)>f_size)
	 {
	 int from0 = (incnt+size)-f_size;

	 memcpy(( void*)(&cache[incnt]), (const void*)ept->cache , (size-from0)*2 );
	 memcpy(( void*)(&cache[0]), (const void*)(&ept->cache[(size-from0)*2]) ,(from0*2));
	 incnt = from0;
	 }else
	 {
	 memcpy( ( void*)(&cache[incnt]), ( const void*)ept->cache, size*2 );
	 incnt = incnt + size;
	 }*/

	/*	for(int i=0;i<size;i+=2){
	 int16_t a = ((int16_t)(((int16_t)ept->cache[i+1])<<8)|(((int16_t)ept->cache[i])))/2;
	 fifo_in(a,cache,incnt,f_size);


	 }*/
	//maxd++;
	//volatile uint32_t tt = get_systime();
	UsbDeviceDescBank *bank = &prvt_inst.desc_table[2].DeviceDescBank[0];
	bank[0].PCKSIZE.bit.BYTE_COUNT = 0;

	return;
}

void UAC1_USB::feedback(const uint8_t ep, uint8_t state, void*) {
	if (m_this->no == true)
		return;

}
void UAC1_USB::init_start() {
	if (get_usb_power() == false) {
		ASSERT(false);
		return;
	}

	UAC1_USB::m_this = this;

	usbdc_init(_ctrl_buffer);

	m_usbdf_conf.ctrl = UAC1_USB::handle_control_rq;
	m_usbdf_conf.func_data = nullptr;

	usbdc_register_function(&m_usbdf_conf);

	m_uacusb_rq_handler_cfg.next = nullptr;
	m_uacusb_rq_handler_cfg.func = (FUNC_PTR) (UAC1_USB::handle_class_rq);
	usbdc_register_handler(USBDC_HDL_REQ, &m_uacusb_rq_handler_cfg);

	single_desc.sod = g_UsbDeviceConfigurationDescriptor;
	single_desc.eod = g_UsbDeviceConfigurationDescriptor
			+ sizeof(g_UsbDeviceConfigurationDescriptor);

	usbdc_start(&single_desc);

	m_started = true;

	usbdc_attach();

}

bool UAC1_USB::setup_data(const uint8_t ep, const enum usb_xfer_code rc,
		const uint32_t count) {

	return true;
}
bool UAC1_USB::get_usb_power() const {
	return ((usbdc_get_state() > USBD_S_POWER) == false);
}

int32_t UAC1_USB::handle_control_rq(struct usbdf_driver *drv,
		enum usbdf_control ctrl, void *param) {
	ASSERT(m_this->m_started);
	switch (ctrl) {
	case USBDF_ENABLE:
		return device_enable(drv, (struct usbd_descriptors*) param);

	case USBDF_DISABLE:
		return usb_dev_disable(drv, (struct usbd_descriptors*) param);

	case USBDF_GET_IFACE:
		__asm__("BKPT");
		break;
	default:
		return ERR_INVALID_ARG;
	}
}

int32_t UAC1_USB::handle_class_rq(uint8_t ep, struct usb_req *req,
		enum usb_ctrl_stage stage) {
	ASSERT(m_this->m_started);

	//if(req->wIndex == 0x200){
	//req->wIndex = 1;
	//}

	if ((req->wIndex & 0x00FF) == 0 || (req->wIndex & 0x00FF) == 1) {
		if (req->bmRequestType & USB_EP_DIR_IN) {
			return usb_dev_get_req(ep, req, stage);
		} else {
			return usb_dev_set_req(ep, req, stage);
		}
	} else {
		return ERR_NOT_FOUND;
	}
}

/**
 * \brief Enable CDC ACM Function
 * \param[in] drv Pointer to USB device function driver
 * \param[in] desc Pointer to USB interface descriptor
 * \return Operation status.
 */
int32_t UAC1_USB::device_enable(struct usbdf_driver *drv,
		struct usbd_descriptors *desc) {
	m_this->no = true;

	usb_d_ep_init(0x81, 0x03, 8);
	//usb_d_ep_register_callback(0x81, USB_D_EP_CB_XFER, (FUNC_PTR)data_in);
	usb_d_ep_enable(0x81);

	usb_d_ep_init(0x02, USB_ENDPOINT_ISOCHRONOUS | 0x04, 196);
	usb_d_ep_register_callback(0x02, USB_D_EP_CB_XFER, (FUNC_PTR) data_in);
	usb_d_ep_enable(0x02);

	usb_d_ep_init(0x83, USB_ENDPOINT_ISOCHRONOUS | 0x04 | 0x10, 3);
	usb_d_ep_register_callback(0x83, USB_D_EP_CB_XFER, (FUNC_PTR) feedback);
	usb_d_ep_enable(0x83);

	m_this->no = false;

	return ERR_NONE;
}

/**
 * \brief Process the CDC class set request
 * \param[in] ep Endpoint address.
 * \param[in] req Pointer to the request.
 * \return Operation status.
 */
int32_t UAC1_USB::usb_dev_set_req(uint8_t ep, struct usb_req *req,
		enum usb_ctrl_stage stage) {
	uint16_t len = req->wLength;
	uint8_t *ctrl_buf = usbdc_get_ctrl_buffer();

	if (req->bmRequestType == 1 && req->bRequest == 11) {

		return ERR_NOT_FOUND;
	}

	return ERR_NOT_FOUND;

	__asm__("BKPT");
	switch (req->bRequest) {

	default:
		return ERR_INVALID_ARG;
	}
}

/**
 * \brief Process the CDC class get request
 * \param[in] ep Endpoint address.
 * \param[in] req Pointer to the request.
 * \return Operation status.
 */
int32_t UAC1_USB::usb_dev_get_req(uint8_t ep, struct usb_req *req,
		enum usb_ctrl_stage stage) {
	uint16_t len = req->wLength;

	if (req->bmRequestType == 0xa1 || req->bmRequestType == 0xa2) {
		switch (req->bRequest) {
		case 0x81:
		case 0x82:
		case 0x83:
		case 0x84:
			uint8_t arr[] = { 0xFF, 0xFF };
			usbdc_xfer(ep, arr, 2, false);
			return ERR_NONE;
		}
	}

	return ERR_NOT_FOUND;
}

int32_t UAC1_USB::usb_dev_disable(struct usbdf_driver *drv,
		struct usbd_descriptors *desc) {
	m_this->no = true;

	usb_iface_desc_t ifc_desc;
	uint8_t i;

	if (desc) {
		ifc_desc.bInterfaceClass = desc->sod[5];
		// Check interface
		if ((ifc_desc.bInterfaceClass != USB_AUDIO_CLASS)
				&& (ifc_desc.bInterfaceClass != USB_AUDIO_CLASS)) {
			return ERR_NOT_FOUND;
		}
	}

	usb_d_ep_deinit(0x81);
	usb_d_ep_deinit(0x02);
	usb_d_ep_deinit(0x83);

	m_this->no = false;
	return ERR_NONE;
}

