#include "SchoolDesk.h"

MIDI_CREATE_DEFAULT_INSTANCE();
MIDI_CREATE_INSTANCE(HardwareSerial, Serial3, MIDI1);
MIDI_CREATE_INSTANCE(HardwareSerial, Serial3, MIDI2);
MIDI_CREATE_INSTANCE(HardwareSerial, Serial3, MIDI3);

byte MIDIchannel = 10;
const int redLED = 9;
const int greenLED = 6;
const int blueLED = 10;
Editor editor = Editor(2, 5, 7);
int editMe = 255;
MIDIdrum *Drum[22]; // Drum sounds for banks A and B
MIDItouch *Exp[22]; // Exp controllers for banks A and B
bool useExp[22];    // Use Exp instead of Drum?
int bankIndex = 0;  // 0 = bank A, 11 = bank B, 
bool programMode = false;
elapsedMillis timer = 0;   // > 1000 = toggles program mode

elapsedMillis stayLit = 0; // for the metronome LED
int pulse = 0;
void onStart(){pulse = 0;}
void onContinue(){pulse = 0;}
void onStop(){pulse = 0;}

void onClock() {
  pulse = pulse == 24 ? 0 : pulse;
  if(pulse == 0){
    stayLit = 0;
    digitalWrite(LED_BUILTIN, HIGH);
  }
  pulse += 1;
}

void pulsar(){
  static int value = 0;
  static bool reverse = false;
  static elapsedMillis tempo = 0;
  int reading = Exp[editMe]->read();

  value = reading >= 0 ? reading : value;
  if (tempo >= 255 - value*2) {
    reverse = !reverse;
    tempo = 0;
  }
  analogWrite(10, reverse ? tempo*1 : 255-tempo);
}


void setup(){
//  EEPROM.put(127, 255); // WARNING! RESTORES DEFAULT SETTINGS!
  byte resetDefaults = EEPROM.read(127);

  for(int i=22;i<44;i++){
    if(resetDefaults){
      useExp[i] = EEPROM.put(i, false); // Defalut to using drums only
    }
    else{useExp[i] = EEPROM.read(i);    // or load user-saved settings
    }
  }

  Drum[0]  = new MIDIdrum(19, resetDefaults ? EEPROM.put(0, 49) : EEPROM.read(0), TOUCH);
  Drum[1]  = new MIDIdrum(18, resetDefaults ? EEPROM.put(1, 50) : EEPROM.read(1), TOUCH);
  Drum[2]  = new MIDIdrum(23, resetDefaults ? EEPROM.put(2, 45) : EEPROM.read(2), TOUCH);
  Drum[3]  = new MIDIdrum( 0, resetDefaults ? EEPROM.put(3, 55) : EEPROM.read(3), TOUCH);
  Drum[4]  = new MIDIdrum( 3, resetDefaults ? EEPROM.put(4, 53) : EEPROM.read(4), TOUCH);
  Drum[5]  = new MIDIdrum( 1, resetDefaults ? EEPROM.put(5, 57) : EEPROM.read(5), TOUCH);
  Drum[6]  = new MIDIdrum(17, resetDefaults ? EEPROM.put(6, 38) : EEPROM.read(6), TOUCH);
  Drum[7]  = new MIDIdrum(16, resetDefaults ? EEPROM.put(7, 46) : EEPROM.read(7), TOUCH);
  Drum[8]  = new MIDIdrum(15, resetDefaults ? EEPROM.put(8, 41) : EEPROM.read(8), TOUCH);
  Drum[9]  = new MIDIdrum(22, resetDefaults ? EEPROM.put(9, 51) : EEPROM.read(9), TOUCH);
  Drum[10] = new MIDIdrum( 4, resetDefaults ? EEPROM.put(10,36) : EEPROM.read(10),TOUCH);

  Drum[11] = new MIDIdrum(19, resetDefaults ? EEPROM.put(11, 65) : EEPROM.read(11), TOUCH);
  Drum[12] = new MIDIdrum(18, resetDefaults ? EEPROM.put(12, 60) : EEPROM.read(12), TOUCH);
  Drum[13] = new MIDIdrum(23, resetDefaults ? EEPROM.put(13, 63) : EEPROM.read(13), TOUCH);
  Drum[14] = new MIDIdrum( 0, resetDefaults ? EEPROM.put(14, 56) : EEPROM.read(14), TOUCH);
  Drum[15] = new MIDIdrum( 3, resetDefaults ? EEPROM.put(15, 80) : EEPROM.read(15), TOUCH);
  Drum[16] = new MIDIdrum( 1, resetDefaults ? EEPROM.put(16, 54) : EEPROM.read(16), TOUCH);
  Drum[17] = new MIDIdrum(17, resetDefaults ? EEPROM.put(17, 66) : EEPROM.read(17), TOUCH);
  Drum[18] = new MIDIdrum(16, resetDefaults ? EEPROM.put(18, 61) : EEPROM.read(18), TOUCH);
  Drum[19] = new MIDIdrum(15, resetDefaults ? EEPROM.put(19, 64) : EEPROM.read(19), TOUCH);
  Drum[20] = new MIDIdrum(22, resetDefaults ? EEPROM.put(20, 81) : EEPROM.read(20), TOUCH);
  Drum[21] = new MIDIdrum( 4, resetDefaults ? EEPROM.put(21, 75) : EEPROM.read(21), TOUCH);

  EEPROM.put(127, 0); // Allow user settings to be saved

  Exp[0]  = new MIDItouch(19, 20);
  Exp[1]  = new MIDItouch(18, 21);
  Exp[2]  = new MIDItouch(23, 22);
  Exp[3]  = new MIDItouch( 0, 23);
  Exp[4]  = new MIDItouch( 3, 24);
  Exp[5]  = new MIDItouch( 1, 25);
  Exp[6]  = new MIDItouch(17, 26);
  Exp[7]  = new MIDItouch(16, 27);
  Exp[8]  = new MIDItouch(15, 28);
  Exp[9]  = new MIDItouch(22, 29);
  Exp[10] = new MIDItouch( 4, 30);

  Exp[11] = new MIDItouch(19, 102);
  Exp[12] = new MIDItouch(18, 103);
  Exp[13] = new MIDItouch(23, 104);
  Exp[14] = new MIDItouch( 0, 105);
  Exp[15] = new MIDItouch( 3, 106);
  Exp[16] = new MIDItouch( 1, 107);
  Exp[17] = new MIDItouch(17, 108);
  Exp[18] = new MIDItouch(16, 109);
  Exp[19] = new MIDItouch(15, 110);
  Exp[20] = new MIDItouch(22, 111);
  Exp[21] = new MIDItouch( 4, 112);

  for(int i=0;i<22;i++){ // calibrate all drums and exp controllers
    Drum[i]->setThreshold();
    Exp[i]->inputRange();
  }

  pinMode(greenLED, OUTPUT);
  pinMode(redLED, OUTPUT);
  pinMode(blueLED, OUTPUT);
  pinMode(LED_BUILTIN, OUTPUT); // orangeLED

  MIDI1.begin(MIDI_CHANNEL_OMNI); //MIDI1 MIDI2 and MIDI3 only need to send
  MIDI2.begin(MIDI_CHANNEL_OMNI); //no need to read each one
  MIDI3.begin(MIDI_CHANNEL_OMNI); //or set handlers for incoming messages
  MIDI.begin(MIDI_CHANNEL_OMNI);
  MIDI.setHandleClock(onClock);
  MIDI.setHandleStart(onStart);
  MIDI.setHandleStop(onStop);
  MIDI.setHandleContinue(onContinue);
}

void loop(){
  editor.bounce->update();
  if (editor.bounce->fallingEdge()) timer = 0;

  else if (editor.bounce->risingEdge() && timer < 1000){
    if (programMode && editMe != 255){
      if (useExp[editMe]){
        useExp[editMe] = false;
        usbMIDI.sendNoteOn(Drum[editMe]->number, 63, MIDIchannel);
        usbMIDI.sendNoteOn(Drum[editMe]->number,  0, MIDIchannel);
      }
      else{useExp[editMe] = true;}
    }
    else if(!programMode){
      bankIndex = bankIndex == 11 ? 0 : 11; // toggle bank A/B
    }
  }

  else if (editor.bounce->read() == LOW){
    if (programMode && timer >= 1000){
      if (editMe != 255){
        for(int i = bankIndex; i < 11+bankIndex; i++){
          EEPROM.put(i, Drum[i]->number);
          EEPROM.put(i+22, useExp[i+22]);
        }
        editMe = 255; // no longer editing
      }
      programMode = false;
      digitalWrite(redLED, LOW);
      while (editor.bounce->read() == LOW); // wait for release
    }
    else if (!programMode && timer >= 1000){
      programMode = true;
      digitalWrite(redLED, HIGH);
      while (editor.bounce->read() == LOW);
    }
  }

  else if (programMode){/////////////////////////////////////////////////
    digitalWrite(greenLED, LOW);
    digitalWrite(blueLED, LOW);

    for(int i = bankIndex; i < 11+bankIndex; i++){
      if(useExp[i]){
        if(Exp[i]->read() > 63){
          editMe = i;
        }
      }
      else{
        if(Drum[i]->send() >= 0){
          editMe = i;
        }
      }
    }
    if(editMe != 255){
      if (useExp[editMe]){
        pulsar();
      }
      else{
        editor.setSound(Drum[editMe]->number);
      }
    }
  }

  else{//controlMode/////////////////////////////////////////////////////
    digitalWrite(greenLED, bankIndex);
    digitalWrite(blueLED, !bankIndex);

    for(int i = bankIndex; i < 11+bankIndex; i++){
        if(useExp[i]){Exp[i]->send();}
        else         {Drum[i]->send();}
    }
    editor.send(); // use encoder as MIDI CC
  }

  if(stayLit > 50){digitalWrite(LED_BUILTIN, LOW);} // metronome LED off
}
