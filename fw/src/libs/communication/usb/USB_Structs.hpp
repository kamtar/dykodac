/*
 * USB_Structs.hpp
 *
 *  Created on: 10 Apr 2020
 *      Author: Kamtar
 */

#ifndef SRC_LIBS_COMMUNICATION_USB_USB_STRUCTS_HPP_
#define SRC_LIBS_COMMUNICATION_USB_USB_STRUCTS_HPP_

namespace KamtarUSB
{
	struct descriptor_header
	{
		uint8_t bLength;
		uint8_t bDescriptorType;
	} __attribute__((packed));

	struct device_desc
	{
		const descriptor_header _header = {18, 0x01};
		uint16_t bcdUSB;
		uint8_t bDeviceClass;
		uint8_t bDeviceSubClass;
		uint8_t bDeviceProtocol;
		uint8_t bMaxPacketSize0;
		uint16_t idVendor;
		uint16_t idProduct;
		uint16_t bcdDevice;
		uint8_t iManufacturer;
		uint8_t iProduct;
		uint8_t iSerialNumber;
		uint8_t bNumConfigurations;

	} __attribute__((packed));

	struct device_qualifier_desc
	{
		const descriptor_header _header = {0, 0};
		uint16_t bcdUSB;
		uint8_t bDeviceClass;
		uint8_t bDeviceSubClass;
		uint8_t bDeviceProtocol;
		uint8_t bMaxPacketSize0;
		uint8_t bNumConfigurations;
		uint8_t bReserved;

	} __attribute__((packed));

	struct standart_config_desc
	{
		const descriptor_header _header = {9, 0x02};
		uint16_t wTotalLength;
		uint8_t bNumInterfaces;
		uint8_t bConfigurationValue;
		uint8_t iConfiguration;
		uint8_t bmAttributes;
		uint8_t bMaxPower;

	} __attribute__((packed));

	struct other_speed_config_desc
	{
		const descriptor_header _header = {0,0};
		uint16_t wTotalLength;
		uint8_t bNumInterfaces;
		uint8_t bConfigurationValue;
		uint8_t iConfiguration;
		uint8_t bmAttributes;
		uint8_t bMaxPower;
	} __attribute__((packed));

	struct standart_interface_desc
	{
		const descriptor_header _header = {9, 0x04};
		uint8_t bInterfaceNumber;
		uint8_t bAlternateSetting;
		uint8_t bNumEndpoints;
		uint8_t bInterfaceClass;
		uint8_t bInterfaceSubClass;
		uint8_t bInterfaceProtocol;
		uint8_t iInterface;
	} __attribute__((packed));

	enum TransferType
	{
		Control = 0,
		Isochronous = 1,
		Bulk = 2,
		Interrupt = 3
	};

	enum SynchronizationType
	{
		NoSync = 0,
		Asynchronous = 1,
		Adaptive = 2,
		Synchronous = 3
	};

	enum UsageType
	{
		DataEndpoint = 0,
		FeedbackEndpoint = 1,
		ImplicitFeedbackDataEndpoint = 2,
		Reserved = 3
	};

	struct EnumsbmAttributes
	{
		TransferType tranfer_type : 2;
		SynchronizationType sync_type : 2;
		UsageType usage_type : 2;
	} __attribute__((packed));

	struct standart_endpoint_desc
	{
		const descriptor_header _header = {0,0};
		uint8_t bEndpointAddress;

		/*bmAttributes - 1 byte*/
		union
		{
			uint8_t raw_bmAttributes;
			EnumsbmAttributes bmAttributes;
		};

		uint16_t wMaxPacketSize;
		uint8_t bInterval;

	} __attribute__((packed));
}



#endif /* SRC_LIBS_COMMUNICATION_USB_USB_STRUCTS_HPP_ */
