I am practising my nRF connect SDK skills by creating a simple application.

Steps I took so far:
1. Created a new project using the nRF Connect SDK, then use `create a blank application`.
1. Created a build configuration for the application, using `nRF54L15dk/nRF54L15/cpu_app` it does give a warning about security. It proposes to use the `/ns` version, but that did not build. 
    - Flashing then worked, but we have nothing to show for it.
1.  I then wanted the make the LEDs work in a non-blocking way. For this I used the K_WORK_DELAYABLE_DEFINE
1. Then I decided to make a Simon Says game
1. Before that I moved this project into a subfolder name `Simon Says`, because I want to try something else in this repo.
