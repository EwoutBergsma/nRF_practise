#include <zephyr/kernel.h>
#include <zephyr/drivers/gpio.h>

#define NUM_LEDS 4
#define NUM_BUTTONS 4

int current_flash_index = 0;

static const struct gpio_dt_spec leds[NUM_LEDS] = {
    GPIO_DT_SPEC_GET(led0, gpios),
    GPIO_DT_SPEC_GET(led1, gpios),
    GPIO_DT_SPEC_GET(led2, gpios),
    GPIO_DT_SPEC_GET(led3, gpios),
};

static const struct gpio_dt_spec buttons[NUM_BUTTONS] = {
    GPIO_DT_SPEC_GET(sw0, gpios),
    GPIO_DT_SPEC_GET(sw1, gpios),
    GPIO_DT_SPEC_GET(sw2, gpios),
    GPIO_DT_SPEC_GET(sw3, gpios),
};

int setup_leds(void)
{
        for (int i = 0; i < NUM_LEDS; i++) {
                if (!device_is_ready(leds[i].port)) return -1;  // Device not ready
                if (gpio_pin_configure_dt(&leds[i], GPIO_OUTPUT_INACTIVE) < 0) return -1;  // Configuration failed
        }
        return 0;  // Success
}

void turn_off_current_led(struct k_work *work)
{
        gpio_pin_set_dt(&leds[current_flash_index], 0);  // Turn off the current LED
}

K_WORK_DELAYABLE_DEFINE(turn_off_current_led_work, turn_off_current_led);

// Function to turn on LED and schedule turning it off
void flash_current_led_one_sec(void)
{
        gpio_pin_set_dt(&leds[current_flash_index], 1);
        k_work_schedule(&turn_off_current_led_work, K_SECONDS(1));
}



int main(void)
{
        // Initialize the LEDs
        if (setup_leds() < 0) return -1; 

        k_work_schedule(&turn_off_current_led_work, K_NO_WAIT);  // Start immediately

        return 0;
}
