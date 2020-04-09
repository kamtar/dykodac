#include "OutputPin.hpp"

OutputPin::OutputPin(gpio_port port, uint8_t pin_num) :
 m_port(port), m_pin(pin_num) 
{

}

void OutputPin::init()
{
    if(m_ready == true)
        return;

    hri_port_write_PINCFG_PMUXEN_bit(PORT, m_port, (1U << m_pin), false);
    _gpio_set_pin_pull_mode(m_port, (1U << m_pin), GPIO_PULL_OFF);
    _gpio_set_direction(m_port, (1U << m_pin), GPIO_DIRECTION_OUT);
    clear();

}

void OutputPin::set()
{
	_gpio_set_level(m_port,(1U << m_pin), true);
}

void OutputPin::clear()
{
	_gpio_set_level(m_port, (1U << m_pin), false);
}
