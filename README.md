# SchoolDesk
( a plug-and-play velocity-sensitive USB MIDI drum controller)
--------------------------------------------------------------------------------

*NOTE: School Desk is a controller. It is not a sound synthesizer
     * nor is there a sound bank of any kind. It only sends MIDI messages
     * to trigger sounds in a Digital Audio Workstation (DAW).
     * You must have your DAW open and have School Desk assigned to control an
     * instrument with its own soundbank or synthesis in the DAW.
     
Plug your School Desk into a USB port and it will be automatically recognized
as a MIDI controller and should appear as "School Desk" in your DAW.

School Desk has two banks which store 11 sounds each.

These are the default sounds for Bank 1:
 __________ __________ __________ __________ __________ __________
|1         |2         |3         |4         |5         |6         |
| Crash 1  |  Hi Tom  | Low Tom  | Splash   | Ride Bell| Crash 2  |
|          |          |          |          |          |          |
'----------^----------^----------^----------^----------^----------'
|7           |8           |9            |10          |11          |
| Snare Drum |  Hi-Hats   |  Floor Tom  | Ride Cymbal| Kick Drum  |
|            |            |             |            |  Note #36  |
'------------^------------^-------------^------------^------------'


These are the default sounds for Bank 2:
 __________ __________ __________ __________ __________ __________
|1         |2         |3         |4         |5         |6         |
| Crash 1  |  Hi Tom  | Low Tom  | Splash   | Ride Bell| Crash 2  |
|          |          |          |          |          |          |
'----------^----------^----------^----------^----------^----------'
|7           |8           |9            |10          |11          |
| Snare Drum |  Hi-Hats   |  Floor Tom  | Ride Cymbal| Kick Drum  |
|            |            |             |            |            |
'------------^------------^-------------^------------^------------'

You can switch between banks 1 and 2 by pressing and releasing
The "Edit" button.

--------------------------------------------------------------------------------

Different sounds can also be assigned to each pad by following these steps:

1. Press and HOLD the Edit button on the right side of the controller.
    The orange LED will light up.

2. While holding this button, tap the pad you want to edit.
    The orange LED will now begin to blink and you can release the Edit button.

3. Now the controller is in "Program Mode" and the sound for the pad you
    tapped can be changed by turning the knob on the back of the controller.
    Continue to trigger the pad until you find the desired sound.*

4. While in program mode (indicated by the blinking LED) you may change
    the sounds for any of the pads by first triggering the pad and then
    turning the knob while triggering the pad until you reach the desired sound.

5. When you have finished choosing your sounds. Press the Edit button once
    again. The sounds you selected will be saved to internal memory and will be
    available the next time you plug in School Desk (unltil you change them).
    
    *NOTE: Turning the knob will cycle though note numbers 35 through 81.
          * These are the numbers that are assigned to drum sounds
          * according to the general MIDI standard. 
          * These numbers are as follows:

          * GM DRUM SOUNDS
      MIDI# - NOTE - SOUND
        35    B  0   Acoustic Bass Drum
        36    C  1   Bass Drum 1
        37    C# 1   Side Stick
        38    D  1   Acoustic Snare
        39    D# 1   Hand Clap
        40    E  1   Electric Snare
        41    F  1   Low Floor Tom
        42    F# 1   Closed Hi Hat
        43    G  1   High Floor Tom
        44    G# 1   Pedal Hi-Hat
        45    A  1   Low Tom
        46    A# 1   Open Hi-Hat
        47    B  1   Low-Mid Tom
        48    C  2   Hi-Mid Tom
        49    C# 2   Crash Cymbal 1
        50    D  2   High Tom
        51    D# 2   Ride Cymbal 1
        52    E  2   Chinese Cymbal
        53    F  2   Ride Bell
        54    F# 2   Tambourine
        55    G  2   Splash Cymbal
        56    G# 2   Cowbell
        57    A  2   Crash Cymbal 2
        58    A# 2   Vibraslap
        59    B  2   Ride Cymbal 2
        60    C  3   Hi Bongo
        61    C# 3   Low Bongo
        62    D  3   Mute Hi Conga
        63    D# 3   Open Hi Conga
        64    E  3   Low Conga
        65    F  3   High Timbale
        66    F# 3   Low Timbale
        67    G  3   High Agogo
        68    G# 3   Low Agogo
        69    A  3   Cabasa
        70    A# 3   Maracas
        71    B  3   Short Whistle
        72    C  4   Long Whistle
        73    C# 4   Short Guiro
        74    D  4   Long Guiro
        75    D# 4   Claves
        76    E  4   Hi Wood Block
        77    F  4   Low Wood Block
        78    F# 4   Mute Cuica
        79    G  4   Open Cuica
        80    G# 4   Mute Triangle
        81    A  4   Open Triangle

    * Any note which does not have a sound assigned to it in your DAW
    * will not be audible.

--------------------------------------------------------------------------------

You may also set any (or all) of the pads to be used as expression controllers.

These are the Control Chang numbers used for Bank 1:
 __________ __________ __________ __________ __________ __________
|1         |2         |3         |4         |5         |6         |
|          |          |          |          |          |          |
|  CC #20  |  CC #21  |  CC #22  |  CC #23  |  CC #24  |  CC #25  |
'----------^----------^----------^----------^----------^----------'
|7           |8           |9            |10          |11          |
|            |            |             |            |            |
|   CC #26   |   CC #27   |   CC #28    |   CC #29  |   CC #30   |
'------------^------------^-------------^------------^------------'


These are the Control Chang numbers used for Bank 2:
 __________ __________ __________ __________ __________ __________
|1         |2         |3         |4         |5         |6         |
|          |          |          |          |          |          |
|  CC #102 |  CC #103 |  CC #104 |  CC #105 |  CC #106 |  CC #107 |
'----------^----------^----------^----------^----------^----------'
|7           |8           |9            |10          |11          |
|            |            |             |            |            |
|   CC #108  |   CC #109  |   CC #110   |   CC #111  |   CC #112  |
'------------^------------^-------------^------------^------------'

A pad can be set as an expression controller by following these steps:

1. 


*NOTE: All of these Control Change numbers are otherwise 'undefined' in the
    * general MIDI specification and should therefore be safe to use.
    * However, please be aware that these numbers cannot be changed.

