# Timer for Flic and Elgato Stream Deck
A 45 min timer to start / pause and kill the timer.  You will get an alert and an audio feedback when the timer is done.

The goal is to start a typer via a physical button and you will get an alert when the timer is done. In additon I added the ability to pause and resume by re-activating the button.

If you have a flic button then you can assign a long hold to kill the running process.

Note: right now there is an issue with running the timmer twice using the OSA script editor.


# How to install


## Flic
copy this repo to 

```
~/Library/Application Scripts/com.shortcutlabs.FlicMac
```

Open the flic app and assign a button to the first action.


## Elgato Stream Dec
Install the OSA Script editor
Then run the Apple Script command like so:

```
do shell script "'/Users/[username]/Library/Application Scripts/com.shortcutlabs.FlicMac/timerShellScript/timer.sh'"
````


 
You need to exit stream deck app and re-launch it to make the button work.