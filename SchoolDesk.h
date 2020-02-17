//LIBRARIES THAT MUST BE INCLUDED FOR SCHOOLDESK TO WORK
#include "Arduino.h"
#include <MIDI.h>
#include <Bounce.h>
#include <Encoder.h>
#include <EEPROM.h>
#include "Flicker.h"
#include "MIDIcontroller.h"
#include "editor.h"

/*TEENSY LC PIN ASSIGNMENTS
               ______
          ____|      |____
     GND | GND|      |Vin |
 Touch 0 | 0  |______AGND |
 Touch 1 | 1         3.3v |
   Enc-A | 2        (_)23 | Touch 23
 Touch 3 | 3        (_)22 | Touch 22
 Touch 4 | 4        (_)21 | Pedal A
   Enc-B | 5           20 | Pedal B
GreenLED | 6           19 | Touch 19
  Switch | 7           18 | Touch 18
MIDI out | 8           17 | Touch 17
  RedLED | 9           16 | Touch 16
 BlueLED | 10          15 | Touch 15
         | 11          14 | Pedal C
         | 12          13 | LED_BUILTIN
         |________________|

 __________ __________ __________ __________ __________ __________
|A       19|B       18|C       23|D        0|E        3|F        1|
| Note #49 | Note #50 | Note #45 | Note #55 | Note #53 | Note #57 |
|      #65 |      #60 |      #63 |      #56 |      #80 |      #54 |
'----------^----------^----------^----------^----------^----------'
|G         17|H         16|I          15|J         22|K          4|
| Note #38   |  Note #46  |  Note #41   | Note #51   | Note #36   |
|      #66   |       #61  |       #64   |      #81   |      #75   |
'------------^------------^-------------^------------^------------'

*/
