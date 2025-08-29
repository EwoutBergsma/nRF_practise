#include <zephyr/kernel.h>
#include <zephyr/drivers/gpio.h>

static const struct gpio_dt_spec led_0 = GPIO_DT_SPEC_GET(DT_ALIAS(led0), gpios);
static const struct gpio_dt_spec led_1 = GPIO_DT_SPEC_GET(DT_ALIAS(led1), gpios);
static const struct gpio_dt_spec led_2 = GPIO_DT_SPEC_GET(DT_ALIAS(led2), gpios);
static const struct gpio_dt_spec led_3 = GPIO_DT_SPEC_GET(DT_ALIAS(led3), gpios);


int setup_led(const struct gpio_dt_spec *led)
{
        if (!device_is_ready(led->port)) return -1;  // Device not ready
        if (gpio_pin_configure_dt(led, GPIO_OUTPUT_ACTIVE) < 0) return -1;  // Configuration failed
        return 0;  // Success
}

int main(void)
{
         if (setup_led(&led_0) < 0 || setup_led(&led_1) < 0 || setup_led(&led_2) < 0 || setup_led(&led_3) < 0) {
                return -1; 
        }


        for (int i = 0; i < 3; i++) {
                gpio_pin_set_dt(&led_0,1); // Turns on LED 
                gpio_pin_set_dt(&led_1,1); // Turns on LED
                gpio_pin_set_dt(&led_2,1); // Turns on LED
                gpio_pin_set_dt(&led_3,1); // Turns on LED
                k_msleep(1000); // Wait for 1 second
                gpio_pin_set_dt(&led_0,0); // Turns off LED
                gpio_pin_set_dt(&led_1,0); // Turns off LED
                gpio_pin_set_dt(&led_2,0); // Turns off LED
                gpio_pin_set_dt(&led_3,0); // Turns off LED
                k_msleep(1000); // Wait for 1 second
        }

        return 0;
}
