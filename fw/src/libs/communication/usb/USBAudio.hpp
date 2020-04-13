/*
 * USBAudio.hpp
 *
 *  Created on: 10 Apr 2020
 *      Author: Kamtar
 */

#ifndef SRC_LIBS_COMMUNICATION_USB_USBAUDIO_HPP_
#define SRC_LIBS_COMMUNICATION_USB_USBAUDIO_HPP_

namespace KamtarUSB
{
	struct audio_interface_desc
	{
		uint8_t bLength = 9;
		const uint8_t bDescriptorType = 0x24;
		uint8_t bDescriptorSubtype;
		uint16_t bcdADC;
		uint16_t wTotalLength;
		uint8_t bInCollection;
		uint8_t baInterfaceNr1;
	} __attribute__((packed));

	struct audio_input_terminal_desc
	{
		uint8_t bLength = 9;
		const uint8_t bDescriptorType = 0x24;
		uint8_t bDescriptorSubtype;
		uint8_t bTerminalID;
		uint16_t wTerminalType;
		uint8_t bAssocTerminal;
		uint8_t bNrChannels;
		uint16_t wChannelConfig;
		uint8_t iChannelNames;
		uint8_t iTerminal;
	} __attribute__((packed));
}

#endif /* SRC_LIBS_COMMUNICATION_USB_USBAUDIO_HPP_ */
