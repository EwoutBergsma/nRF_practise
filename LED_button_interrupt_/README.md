ChatGPT was quizing me on [nRF Connect SDK Fundamentals – Lesson 2](https://academy.nordicsemi.com/courses/nrf-connect-sdk-fundamentals/lessons/lesson-2-reading-buttons-and-controlling-leds/), which led me to trying this out.

Here is ChatGPT explaining what will happen:


```
# Button + LED Example (nRF Connect SDK Fundamentals – Lesson 2)

This project demonstrates two ways of handling a button press to control an LED
on a Nordic board running the nRF Connect SDK (Zephyr RTOS underneath):

1. **Polling** – continuously read the button state in a loop and update the LED.
2. **Interrupts** – configure the button as an interrupt source and use a
   callback + work queue to toggle the LED efficiently.

---

## 🟢 Hardware assumptions
- Board has a **button** exposed as `sw0` in the Devicetree aliases.
- Board has an **LED** exposed as `led0` in the Devicetree aliases.

(These are true for most Nordic DKs like nRF52 DK and nRF5340 DK.)

---

## 🧩 Polling method
Simplest way to react to a button:

```c
while (1) {
    int val = gpio_pin_get_dt(&button);

    if (val > 0) {
        gpio_pin_toggle_dt(&led);
    }

    k_msleep(100); // crude debounce + CPU rest
}
```