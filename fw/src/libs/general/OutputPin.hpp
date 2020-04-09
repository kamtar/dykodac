#ifndef OUTPUTPIN_HPP_
#define OUTPUTPIN_HPP_

#include <app_config.h>
#include "IOutputPin.hpp"
#include <hpl_gpio.h>

class OutputPin : public IOutputPin
{
public:

    struct D51PinConfig
    {

    };

    OutputPin(gpio_port port, uint8_t pin_num);

    virtual void init() override;

    virtual void set() override;
	virtual void clear() override;

private:
    gpio_port m_port;
    uint8_t m_pin;

    bool m_ready;
};
#endif
