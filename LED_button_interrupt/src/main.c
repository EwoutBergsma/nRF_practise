#include <zephyr/kernel.h>
#include <zephyr/drivers/gpio.h>
#include <zephyr/sys/printk.h>

// Define the button and led
static const struct gpio_dt_spec button = GPIO_DT_SPEC_GET(DT_ALIAS(sw0), gpios);
static const struct gpio_dt_spec led = GPIO_DT_SPEC_GET(DT_ALIAS(led0), gpios);

// Define the work item for the LED
static struct k_work led_work;

// Button callback structure
static struct gpio_callback button_cb_data;

static void led_work_handler(struct k_work *work)
{
        gpio_pin_toggle_dt(&led);
}

void button_pressed(const struct device *dev, struct gpio_callback *cb, uint32_t pins)
{
        k_work_submit(&led_work);
}

int main(void)
{
        // Configure LED
        if (!device_is_ready(led.port)) return 1;
        if (gpio_pin_configure_dt(&led, GPIO_OUTPUT_INACTIVE) < 0) return 1;

        // Configure Button
        if (!device_is_ready(button.port)) return 1;
        if (gpio_pin_configure_dt(&button, GPIO_INPUT) < 0) return 1;
        if (gpio_pin_interrupt_configure_dt(&button, GPIO_INT_EDGE_TO_ACTIVE) < 0) return 1;

        // Initialize work item
        k_work_init(&led_work, led_work_handler);

        // Initialize and add button callback
        gpio_init_callback(&button_cb_data, button_pressed, BIT(button.pin));
        gpio_add_callback(button.port, &button_cb_data);

        while (true)
        {
                // printk("Hello World\n");
                // k_sleep(K_SECONDS(1));
                k_sleep(K_FOREVER);
        }
}
