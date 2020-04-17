/*
 * UAC1_USB.hpp
 *
 *  Created on: 10 Apr 2020
 *      Author: Kamtar
 */

#ifndef SRC_UAC1_USB_HPP_
#define SRC_UAC1_USB_HPP_


#define TSAMFREQ2BYTES(f) (f & 0xFFU), ((f >> 8U) & 0xFFU), ((f >> 16U) & 0xFFU)



#include "usbdc.h"
#include "USB_Structs.hpp"
#include "usb_device_descriptor.h"
#include "usb_misc.h"
class UAC1_USB
{
public:


	UAC1_USB();
	bool get_usb_power() const;
	void init_start();

	static int32_t handle_control_rq(struct usbdf_driver *drv, enum usbdf_control ctrl, void *param);

	/**
	 * \brief Process the class request
	 * \param[in] ep Endpoint address.
	 * \param[in] req Pointer to the request.
	 * \return Operation status.
	 */
	static int32_t handle_class_rq(uint8_t ep, struct usb_req *req, enum usb_ctrl_stage stage);

	static int32_t device_enable(struct usbdf_driver *drv, struct usbd_descriptors *desc);
	static int32_t usb_dev_disable(struct usbdf_driver *drv, struct usbd_descriptors *desc);

	static int32_t usb_dev_get_req(uint8_t ep, struct usb_req *req, enum usb_ctrl_stage stage);
	static int32_t usb_dev_set_req(uint8_t ep, struct usb_req *req, enum usb_ctrl_stage stage);

	static bool setup_data(const uint8_t ep, const enum usb_xfer_code rc, const uint32_t count);
	inline static void data_in(const uint8_t ep, uint8_t state, void*);
	inline static void feedback(const uint8_t ep, uint8_t state, void*);
	static UAC1_USB* m_this;


private:
	bool no = false;

	 struct usbdf_driver m_usbdf_conf;
	 struct usbdc_handler m_uacusb_rq_handler_cfg;

	 struct usbd_descriptors m_descriptor_cfg;
	 struct usbd_descriptors single_desc;



	 KamtarUSB::device_desc m_dev_desc;
	 KamtarUSB::standart_config_desc m_standart_config_desc;
	 KamtarUSB::standart_interface_desc m_audio_contro_standart_ifc_desc;

	 bool m_started = false;
	uint8_t _ctrl_buffer[64];



};

static uint8_t g_UsbDeviceConfigurationDescriptor[] = {
		    USB_DESCRIPTOR_LENGTH_DEVICE, /* Size of this descriptor in bytes */
			    USB_DESCRIPTOR_TYPE_DEVICE,   /* DEVICE Descriptor Type */
			    USB_SHORT_GET_LOW(USB_DEVICE_SPECIFIC_BCD_VERSION),
			    USB_SHORT_GET_HIGH(USB_DEVICE_SPECIFIC_BCD_VERSION), /* USB Specification Release Number in
			                                                            Binary-Coded Decimal (i.e., 2.10 is 210H). */
			    USB_DEVICE_CLASS,                                    /* Class code (assigned by the USB-IF). */
			    USB_DEVICE_SUBCLASS,                                 /* Subclass code (assigned by the USB-IF). */
			    USB_DEVICE_PROTOCOL,                                 /* Protocol code (assigned by the USB-IF). */
			    64,                         /* Maximum packet size for endpoint zero
			                                                            (only 8, 16, 32, or 64 are valid) */
			    0xC9U,
			    0x1FU, /* Vendor ID (assigned by the USB-IF) */
			    0x98U,
			    0x00U, /* Product ID (assigned by the manufacturer) */
			    USB_SHORT_GET_LOW(USB_DEVICE_DEMO_BCD_VERSION),
			    USB_SHORT_GET_HIGH(USB_DEVICE_DEMO_BCD_VERSION), /* Device release number in binary-coded decimal */
			    0x00U,                                           /* Index of string descriptor describing manufacturer */
			    0x00U,                                           /* Index of string descriptor describing product */
			    0x00U,                                           /* Index of string descriptor describing the
			                                                        device's serial number */
			    USB_DEVICE_CONFIGURATION_COUNT,                  /* Number of possible configurations */
	#if USBCFG_AUDIO_CLASS_2_0                                                        /* interval polling(2^x ms) */
	#else
	    /* Configuration Descriptor Size - always 9 bytes*/
	    USB_DESCRIPTOR_LENGTH_CONFIGURE, /* Size of this descriptor in bytes */
	    USB_DESCRIPTOR_TYPE_CONFIGURE,   /* CONFIGURATION Descriptor Type */
	    USB_SHORT_GET_LOW(
	        USB_DESCRIPTOR_LENGTH_CONFIGURE + USB_DESCRIPTOR_LENGTH_INTERFACE + USB_AUDIO_CONTROL_INTERFACE_HEADER_LENGTH +
	        USB_AUDIO_INPUT_TERMINAL_ONLY_DESC_SIZE + USB_AUDIO_FEATURE_UNIT_ONLY_DESC_SIZE(2, 1) +
	        USB_AUDIO_OUTPUT_TERMINAL_ONLY_DESC_SIZE + USB_DESCRIPTOR_LENGTH_AC_INTERRUPT_ENDPOINT +
	        USB_DESCRIPTOR_LENGTH_INTERFACE + USB_DESCRIPTOR_LENGTH_INTERFACE + USB_AUDIO_STREAMING_IFACE_DESC_SIZE +
	        USB_AUDIO_STREAMING_TYPE_I_DESC_SIZE + USB_ENDPOINT_AUDIO_DESCRIPTOR_LENGTH + USB_AUDIO_STREAMING_ENDP_DESC_SIZE
	#if defined(USB_DEVICE_AUDIO_USE_SYNC_MODE) && (USB_DEVICE_AUDIO_USE_SYNC_MODE > 0U)
	        ),
	#else
	        + USB_ENDPOINT_AUDIO_DESCRIPTOR_LENGTH), /* Total length of data returned for this configuration. */
	#endif
	    USB_SHORT_GET_HIGH(
	        USB_DESCRIPTOR_LENGTH_CONFIGURE + USB_DESCRIPTOR_LENGTH_INTERFACE + USB_AUDIO_CONTROL_INTERFACE_HEADER_LENGTH +
	        USB_AUDIO_INPUT_TERMINAL_ONLY_DESC_SIZE + USB_AUDIO_FEATURE_UNIT_ONLY_DESC_SIZE(2, 1) +
	        USB_AUDIO_OUTPUT_TERMINAL_ONLY_DESC_SIZE + USB_DESCRIPTOR_LENGTH_AC_INTERRUPT_ENDPOINT +
	        USB_DESCRIPTOR_LENGTH_INTERFACE + USB_DESCRIPTOR_LENGTH_INTERFACE + USB_AUDIO_STREAMING_IFACE_DESC_SIZE +
	        USB_AUDIO_STREAMING_TYPE_I_DESC_SIZE + USB_ENDPOINT_AUDIO_DESCRIPTOR_LENGTH + USB_AUDIO_STREAMING_ENDP_DESC_SIZE
	#if defined(USB_DEVICE_AUDIO_USE_SYNC_MODE) && (USB_DEVICE_AUDIO_USE_SYNC_MODE > 0U)
	        ),
	#else
	        + USB_ENDPOINT_AUDIO_DESCRIPTOR_LENGTH), /* Total length of data returned for this configuration. */
	#endif
	    USB_AUDIO_SPEAKER_INTERFACE_COUNT, /* Number of interfaces supported by this configuration */
	    USB_AUDIO_SPEAKER_CONFIGURE_INDEX, /* Value to use as an argument to the
	                                            SetConfiguration() request to select this configuration */
	    0x00U,                             /* Index of string descriptor describing this configuration */
	    0xC0U,
	    /* Configuration characteristics
	       D7: Reserved (set to one)
	       D6: Self-powered
	       D5: Remote Wakeup
	       D4...0: Reserved (reset to zero)
	    */
			20, /* Maximum power consumption of the USB
	                           * device from the bus in this specific
	                           * configuration when the device is fully
	                           * operational. Expressed in 2 mA units
	                           *  (i.e., 50 = 100 mA).
	                           */

	    USB_DESCRIPTOR_LENGTH_INTERFACE,   /* Size of this descriptor in bytes */
	    USB_DESCRIPTOR_TYPE_INTERFACE,     /* INTERFACE Descriptor Type */
	    USB_AUDIO_CONTROL_INTERFACE_INDEX, /* Number of this interface. */
	    0x00U,                             /* Value used to select this alternate setting
	                                          for the interface identified in the prior field */
	    0x01U,                             /* Number of endpoints used by this
	                                          interface (excluding endpoint zero). */
	    USB_AUDIO_CLASS,                   /*The interface implements the Audio Interface class  */
	    USB_SUBCLASS_AUDIOCONTROL,         /*The interface implements the AUDIOCONTROL Subclass  */
	    0x00U,                             /*The interface doesn't use any class-specific protocols  */
	    0x00U,                             /* The device doesn't have a string descriptor describing this iInterface  */

	    /* Audio Class Specific type of INTERFACE Descriptor */
	    USB_AUDIO_CONTROL_INTERFACE_HEADER_LENGTH,   /* Size of the descriptor, in bytes  */
	    USB_DESCRIPTOR_TYPE_AUDIO_CS_INTERFACE,      /* CS_INTERFACE Descriptor Type   */
	    USB_DESCRIPTOR_SUBTYPE_AUDIO_CONTROL_HEADER, /* HEADER descriptor subtype   */
	    0x00U, 0x01U, /* Audio Device compliant to the USB Audio specification version 1.00  */
	    0x28, 0x00U,  /* Total number of bytes returned for the class-specific AudioControl interface descriptor. Includes
	                     the combined length of this descriptor header and all Unit and Terminal descriptors. */
	    0x01U, /* The number of AudioStreaming and MIDIStreaming interfaces in the Audio Interface Collection to which this
	              AudioControl interface belongs   */
	    0x01U, /* The number of AudioStreaming and MIDIStreaming interfaces in the Audio Interface baNumber */

	    /* Audio Class Specific type of Input Terminal*/
	    USB_AUDIO_INPUT_TERMINAL_ONLY_DESC_SIZE, /* Size of the descriptor, in bytes  */
	    USB_DESCRIPTOR_TYPE_AUDIO_CS_INTERFACE,  /* CS_INTERFACE Descriptor Type   */
	    USB_DESCRIPTOR_SUBTYPE_AUDIO_CONTROL_INPUT_TERMINAL,
	    /* INPUT_TERMINAL descriptor subtype  */
	    USB_AUDIO_SPEAKER_CONTROL_INPUT_TERMINAL_ID, /* Constant uniquely identifying the Terminal within the audio
	              function. This value is used in all requests
	              to address this Terminal.  */
	    0x01U, 0x01,  /* A generic microphone that does not fit under any of the other classifications.  */
	    0x00U,        /* This Input Terminal has no association  */
	    0x02U,        /* This Terminal's output audio channel cluster has 1 logical output channels  */
	    0x03U, 0x00U, /* Spatial locations present in the cluster */
	    0x00U,        /* Index of a string descriptor, describing the name of the first logical channel.   */
	    0x00U,        /* Index of a string descriptor, describing the Input Terminal.   */

	    /* Audio Class Specific type of Feature Unit */
	    /* The USB_AUDIO_FEATURE_UNIT_ONLY_DESC_SIZE should be changed to 0x0a and Master channel controls should be changed
	       to 0x03, 0x00U, 0x00U, if sampling rate is 48k */
	    USB_AUDIO_FEATURE_UNIT_ONLY_DESC_SIZE(2, 1),       /* Size of the descriptor, in bytes   */
	    USB_DESCRIPTOR_TYPE_AUDIO_CS_INTERFACE,            /* CS_INTERFACE Descriptor Type  */
	    USB_DESCRIPTOR_SUBTYPE_AUDIO_CONTROL_FEATURE_UNIT, /* FEATURE_UNIT descriptor subtype   */
	    USB_AUDIO_SPEAKER_CONTROL_FEATURE_UNIT_ID, /* Constant uniquely identifying the Unit within the audio function. This
	             value is used in all requests to
	             address this Unit.  */
	    USB_AUDIO_SPEAKER_CONTROL_INPUT_TERMINAL_ID, /* ID of the Unit or Terminal to which this Feature Unit is connected.
	                                                  */
	    0x01U,                                       /* Size in bytes of an element of the bmaControls() array:  */
	    0x03U,                                       /* Master channel0 controls */
	    0x00U,                                       /* Master channel1 controls */
	    0x00U,                                       /* Master channel2 controls */
	    0x00U,                                       /* Index of a string descriptor, describing this Feature Unit.   */

	    /* Audio Class Specific type of  Output Terminal */
	    USB_AUDIO_OUTPUT_TERMINAL_ONLY_DESC_SIZE, /* Size of the descriptor, in bytes  */
	    USB_DESCRIPTOR_TYPE_AUDIO_CS_INTERFACE,   /* CS_INTERFACE Descriptor Type   */
	    USB_DESCRIPTOR_SUBTYPE_AUDIO_CONTROL_OUTPUT_TERMINAL,
	    /* OUTPUT_TERMINAL descriptor subtype  */
	    USB_AUDIO_SPEAKER_CONTROL_OUTPUT_TERMINAL_ID, /* Constant uniquely identifying the Terminal within the audio
	                                                     function*/
	    0x01U, 0x03U, /* A Terminal dealing with a signal carried over an endpoint in an AudioStreaming interface */
	    0x00U,        /*  This Output Terminal has no association   */
	    USB_AUDIO_SPEAKER_CONTROL_FEATURE_UNIT_ID, /* ID of the Unit or Terminal to which this Terminal is connected.   */
	    0x00U,                                     /* Index of a string descriptor, describing the Output Terminal.  */

	    USB_DESCRIPTOR_LENGTH_AC_INTERRUPT_ENDPOINT, /* Size of this descriptor, in bytes: 9U */
	    USB_DESCRIPTOR_TYPE_ENDPOINT,                /* ENDPOINT descriptor type */
	    USB_AUDIO_CONTROL_ENDPOINT | (USB_IN << USB_DESCRIPTOR_ENDPOINT_ADDRESS_DIRECTION_SHIFT),
	    /* Endpoint address */
	    USB_ENDPOINT_INTERRUPT, /* Transfer type */
	    USB_SHORT_GET_LOW(FS_AUDIO_INTERRUPT_IN_PACKET_SIZE), USB_SHORT_GET_HIGH(FS_AUDIO_INTERRUPT_IN_PACKET_SIZE),
	    /* Max Packet Size */
	    FS_AUDIO_INTERRUPT_IN_INTERVAL, /* Interval */
	    0, 0,

	    /* Audio Class Specific INTERFACE Descriptor, alternative interface 0  */
	    USB_DESCRIPTOR_LENGTH_INTERFACE,  /* Descriptor size is 9 bytes  */
	    USB_DESCRIPTOR_TYPE_INTERFACE,    /* INTERFACE Descriptor Type   */
	    USB_AUDIO_STREAM_INTERFACE_INDEX, /* The number of this interface is 1.  */
	    0x00U,                            /* The value used to select the alternate setting for this interface is 0   */
	    0x00U,                    /* The number of endpoints used by this interface is 0 (excluding endpoint zero)   */
	    USB_AUDIO_CLASS,          /* The interface implements the Audio Interface class   */
	    USB_SUBCLASS_AUDIOSTREAM, /* The interface implements the AUDIOSTREAMING Subclass   */
	    0x00U,                    /* The interface doesn't use any class-specific protocols   */
	    0x00U,                    /* The device doesn't have a string descriptor describing this iInterface  */

	    /* Audio Class Specific INTERFACE Descriptor, alternative interface 1 */
	    USB_DESCRIPTOR_LENGTH_INTERFACE,  /* Descriptor size is 9 bytes  */
	    USB_DESCRIPTOR_TYPE_INTERFACE,    /* INTERFACE Descriptor Type  */
	    USB_AUDIO_STREAM_INTERFACE_INDEX, /*The number of this interface is 1.  */
	    0x01U,                            /* The value used to select the alternate setting for this interface is 1  */
	#if defined(USB_DEVICE_AUDIO_USE_SYNC_MODE) && (USB_DEVICE_AUDIO_USE_SYNC_MODE > 0U)
	    0x01U,                    /* The number of endpoints used by this interface is 1 (excluding endpoint zero)    */
	#else
	    0x02U, /* The number of endpoints used by this interface is 2 (excluding endpoint zero)    */
	#endif
	    USB_AUDIO_CLASS,          /* The interface implements the Audio Interface class   */
	    USB_SUBCLASS_AUDIOSTREAM, /* The interface implements the AUDIOSTREAMING Subclass   */
	    0x00U,                    /* The interface doesn't use any class-specific protocols  */
	    0x00U,                    /* The device doesn't have a string descriptor describing this iInterface  */

	    /* Audio Class Specific CS INTERFACE Descriptor*/
	    USB_AUDIO_STREAMING_IFACE_DESC_SIZE,            /* Size of the descriptor, in bytes  */
	    USB_DESCRIPTOR_TYPE_AUDIO_CS_INTERFACE,         /* CS_INTERFACE Descriptor Type  */
	    USB_DESCRIPTOR_SUBTYPE_AUDIO_STREAMING_GENERAL, /* AS_GENERAL descriptor subtype  */
	    USB_AUDIO_SPEAKER_CONTROL_INPUT_TERMINAL_ID,    /* The Terminal ID of the Terminal to which the endpoint of this
	                                                       interface is connected. */
	    0x01U,        /* Delay introduced by the data path. Expressed in number of frames.  */
	    0x01U, 0x00U, /* PCM  */

	    /* Audio Class Specific type I format INTERFACE Descriptor */
	    USB_AUDIO_STREAMING_TYPE_I_DESC_SIZE,               /* bLength (11) */
	    USB_DESCRIPTOR_TYPE_AUDIO_CS_INTERFACE,             /* bDescriptorType (CS_INTERFACE) */
	    USB_DESCRIPTOR_SUBTYPE_AUDIO_STREAMING_FORMAT_TYPE, /* DescriptorSubtype: AUDIO STREAMING FORMAT TYPE */
	    USB_AUDIO_FORMAT_TYPE_I,                            /* Format Type: Type I */
	    AUDIO_FORMAT_CHANNELS,                              /* Number of Channels: one channel */
	    AUDIO_FORMAT_SIZE,                                  /* SubFrame Size: one byte per audio subframe */
	    AUDIO_FORMAT_BITS,                                  /* Bit Resolution: 8 bits per sample */
	    0x01U,                                              /* One frequency supported */
	                                                        /*   0x40, 0x1F,0x00U,                  8 kHz */
	    TSAMFREQ2BYTES(AUDIO_SAMPLING_RATE_KHZ * 1000),     /* 16 kHz */
                                   /*   0x80,0xBB,0x00U,                  48 kHz */
	                                                        /*   0x00U, 0xFA,0x00U,                72 kHz */
	#if defined(USB_DEVICE_AUDIO_USE_SYNC_MODE) && (USB_DEVICE_AUDIO_USE_SYNC_MODE > 0U)
	    /* ENDPOINT Descriptor */
	    USB_ENDPOINT_AUDIO_DESCRIPTOR_LENGTH, /* Descriptor size is 9 bytes  */
	    USB_DESCRIPTOR_TYPE_ENDPOINT,         /* Descriptor type (endpoint descriptor) */
	    USB_AUDIO_SPEAKER_STREAM_ENDPOINT |
	        (USB_OUT << USB_DESCRIPTOR_ENDPOINT_ADDRESS_DIRECTION_SHIFT), /* OUT endpoint address 1 */
	    USB_ENDPOINT_ISOCHRONOUS | 0x0CU,                                 /* Isochronous endpoint and Synchronous*/
	    USB_SHORT_GET_LOW(FS_ISO_OUT_ENDP_PACKET_SIZE), USB_SHORT_GET_HIGH(FS_ISO_OUT_ENDP_PACKET_SIZE), /* 16 bytes  */
	    FS_ISO_OUT_ENDP_INTERVAL, /* bInterval(0x01U): x ms */
	    0x00U,                    /* Unused */
	    0x00U,                    /* Synchronization Endpoint (if used) is endpoint 0x83  */
	#else
	    /* ENDPOINT Descriptor */
	    USB_ENDPOINT_AUDIO_DESCRIPTOR_LENGTH, /* Descriptor size is 9 bytes  */
	    USB_DESCRIPTOR_TYPE_ENDPOINT,         /* Descriptor type (endpoint descriptor) */
	    USB_AUDIO_SPEAKER_STREAM_ENDPOINT |
	        (USB_OUT << USB_DESCRIPTOR_ENDPOINT_ADDRESS_DIRECTION_SHIFT), /* OUT endpoint address 1 */
	    USB_ENDPOINT_ISOCHRONOUS | 0x04,                                  /* Isochronous endpoint */
	    USB_SHORT_GET_LOW(FS_ISO_OUT_ENDP_PACKET_SIZE + AUDIO_FORMAT_CHANNELS * AUDIO_FORMAT_SIZE),
	    USB_SHORT_GET_HIGH(FS_ISO_OUT_ENDP_PACKET_SIZE + AUDIO_FORMAT_CHANNELS * AUDIO_FORMAT_SIZE), /* 16 bytes  */
	    FS_ISO_OUT_ENDP_INTERVAL, /* bInterval(0x01U): x ms */
	    0x00U,                    /* Unused */
	    USB_AUDIO_SPEAKER_FEEDBACK_ENDPOINT |
	        (USB_IN
	         << USB_DESCRIPTOR_ENDPOINT_ADDRESS_DIRECTION_SHIFT), /* Synchronization Endpoint (if used) is endpoint 0x83  */
	#endif
	    /* Audio Class Specific ENDPOINT Descriptor  */
	    USB_AUDIO_STREAMING_ENDP_DESC_SIZE,      /*  Size of the descriptor, in bytes  */
	    USB_AUDIO_STREAM_ENDPOINT_DESCRIPTOR,    /* CS_ENDPOINT Descriptor Type  */
	    USB_AUDIO_EP_GENERAL_DESCRIPTOR_SUBTYPE, /* AUDIO_EP_GENERAL descriptor subtype  */
	    0x00U,                                   /* Bit 0: Sampling Frequency 0
	                                                Bit 1: Pitch 0
	                                                Bit 7: MaxPacketsOnly 0   */
	    0x00U,                                   /* Indicates the units used for the wLockDelay field: 0: Undefined  */
	    0x00U, 0x00U, /* Indicates the time it takes this endpoint to reliably lock its internal clock recovery circuitry */

	#if defined(USB_DEVICE_AUDIO_USE_SYNC_MODE) && (USB_DEVICE_AUDIO_USE_SYNC_MODE > 0U)
	#else
	    /* Endpoint 3 Feedback ENDPOINT */
	    USB_ENDPOINT_AUDIO_DESCRIPTOR_LENGTH, /* bLength */
	    USB_DESCRIPTOR_TYPE_ENDPOINT,         /* bDescriptorType */
	    USB_AUDIO_SPEAKER_FEEDBACK_ENDPOINT |
	        (USB_IN << USB_DESCRIPTOR_ENDPOINT_ADDRESS_DIRECTION_SHIFT), /* This is an IN endpoint with endpoint number 3 */
	    USB_ENDPOINT_ISOCHRONOUS | 0x04 | 0x10,                          /*  Types -
	                                                                         Transfer: ISOCHRONOUS
	                                                                         Sync: Async
	                                                                         Usage: Feedback EP   */
	    FS_ISO_FEEDBACK_ENDP_PACKET_SIZE, 0x00,                          /* wMaxPacketSize */
	    0x01,                                                            /* interval polling(2^x ms) */
	    0x03,                                                            /* bRefresh(32ms)  */
	    0x00,                                                            /* unused */
	#endif
	#endif /* AUDIO_CLASS_2_0 */
	};


#endif /* SRC_UAC1_USB_HPP_ */
