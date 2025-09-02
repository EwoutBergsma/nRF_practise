#include <zephyr/kernel.h>
#include <zephyr/random/random.h>
#include <zephyr/drivers/gpio.h>

#define NUM_LEDS 4
#define NUM_BUTTONS 4
#define MAX_SEQUENCE_LENGTH 5
#define LED_ON_DURATION K_MSEC(1000)
#define LED_OFF_DURATION K_MSEC(500)

// All leds
static const struct gpio_dt_spec leds[NUM_LEDS] = {
        GPIO_DT_SPEC_GET(DT_ALIAS(led0), gpios),
        GPIO_DT_SPEC_GET(DT_ALIAS(led1), gpios),
        GPIO_DT_SPEC_GET(DT_ALIAS(led2), gpios),
        GPIO_DT_SPEC_GET(DT_ALIAS(led3), gpios),
};

// ALl buttons
static const struct gpio_dt_spec buttons[NUM_BUTTONS] = {
        GPIO_DT_SPEC_GET(DT_ALIAS(sw0), gpios),
        GPIO_DT_SPEC_GET(DT_ALIAS(sw1), gpios),
        GPIO_DT_SPEC_GET(DT_ALIAS(sw2), gpios),
        GPIO_DT_SPEC_GET(DT_ALIAS(sw3), gpios),
};

int setup_leds(void)
{
        for (int i = 0; i < NUM_LEDS; i++) {
                if (!device_is_ready(leds[i].port)) return -1;  // Device not ready
                if (gpio_pin_configure_dt(&leds[i], GPIO_OUTPUT_INACTIVE) < 0) return -1;  // Configuration failed
        }
        return 0;  // Success
}

int setup_buttons(void)
{
        for (int i = 0; i < NUM_BUTTONS; i++) {
                if (!device_is_ready(buttons[i].port)) return -1;  // Device not ready
                if (gpio_pin_configure_dt(&buttons[i], GPIO_INPUT) < 0) return -1;  // Configuration failed
        }
        return 0;  // Success
}

// Array to keep track of LED sequence
int led_sequence[MAX_SEQUENCE_LENGTH];
int user_input_sequence[MAX_SEQUENCE_LENGTH];
int current_sequence_length = 0;        // Each succesful sequence by player makes new sequence longer by one

void append_to_led_sequence(void)
{
        current_sequence_length++;  // Increase the length of the current sequence
        // Add random LED to sequence
        led_sequence[current_sequence_length - 1] = sys_rand32_get() % NUM_LEDS;
}


int current_flash_index = 0;  // Index of LED currently being flashed

void turn_on_current_led(void)
{
        gpio_pin_set_dt(&leds[current_flash_index], 1);
}

void turn_off_current_led(void)
{
        gpio_pin_set_dt(&leds[current_flash_index], 0);
}

void play_led_sequence(void)
{
        // Play the LED sequence
        for (int i = 0; i < current_sequence_length; i++) {
                current_flash_index = led_sequence[i];
                turn_on_current_led();
                k_sleep(LED_ON_DURATION);
                turn_off_current_led();
                k_sleep(LED_OFF_DURATION);
        }
}

void play_congratulations_sequence(void)
{
        // All flash
        for (int i = 0; i < NUM_LEDS; i++) {
                gpio_pin_set_dt(&leds[i], 1);
        }
        k_sleep(LED_ON_DURATION);
        for (int i = 0; i < NUM_LEDS; i++) {
                gpio_pin_set_dt(&leds[i], 0);
        }
        // Circle all LEDs
        for (int i = 0; i < NUM_LEDS; i++) {
                gpio_pin_set_dt(&leds[i], 1);
                k_sleep(LED_ON_DURATION);
                gpio_pin_set_dt(&leds[i], 0);
        }
        // All flash
        for (int i = 0; i < NUM_LEDS; i++) {
                gpio_pin_set_dt(&leds[i], 1);
        }
        k_sleep(LED_ON_DURATION);
        for (int i = 0; i < NUM_LEDS; i++) {
                gpio_pin_set_dt(&leds[i], 0);
        }
}

void print_led_sequence(void)
{
        printf("Current LED sequence: ");
        for (int i = 0; i < current_sequence_length; i++) {
                printf("%d ", led_sequence[i]);
        }
        printf("\n");
}

// User can now input their sequence using the buttons
// Once the correct amount of buttons have been pressed, this function stops
void get_user_input_sequence(void)
{
        for (int i = 0; i < current_sequence_length; i++) {
                int button_pressed = -1;
                // Wait for any button press
                while (button_pressed == -1) {
                        for (int j = 0; j < NUM_BUTTONS; j++) {
                                if (gpio_pin_get_dt(&buttons[j]) > 0) {
                                        button_pressed = j;
                                        break;
                                }
                        }
                        k_sleep(K_MSEC(10)); // Debounce delay
                }
                user_input_sequence[i] = button_pressed;
                // Wait for button release before continuing
                while (gpio_pin_get_dt(&buttons[button_pressed]) > 0) {
                        k_sleep(K_MSEC(10));
                }
        }
}

int check_user_input_sequence(void)
{
        for (int i = 0; i < current_sequence_length; i++) {
                if (user_input_sequence[i] != led_sequence[i]) {
                        printf("Incorrect sequence! Game Over.\n");
                        return 0;
                }
        }
        printf("Correct sequence! Next round.\n");
        return 1;
}

int play_game(void)
{
        // Check if game is done
        if (current_sequence_length == MAX_SEQUENCE_LENGTH) {
                printf("Game Over! Final Sequence Length: %d\n", current_sequence_length);
                return 0;
        }

        append_to_led_sequence();
        print_led_sequence();

        play_led_sequence();

        get_user_input_sequence();
        if (check_user_input_sequence()) {
                if (current_sequence_length == MAX_SEQUENCE_LENGTH) {
                        printf("Congratulations! You've completed the game.\n");
                        play_congratulations_sequence();
                }else{
                        printf("Nice! Continuing to next round.\n");
                }
        } else {
                printf("Incorrect sequence! Game Over.\n");
                return 0;
        }

        return 1;
}

int main(void)
{
        // Initialize the LEDs
        if (setup_leds() < 0) return -1; 

        // Initialize the buttons
        if (setup_buttons() < 0) return -1;

        while(true){
                if (!play_game()) break;
        }

        return 0;
}
