#include "MIDIcontroller.h"
#include "Flicker.h"

MIDI_CREATE_DEFAULT_INSTANCE();
MIDI_CREATE_INSTANCE(HardwareSerial, Serial3, MIDI1);
MIDI_CREATE_INSTANCE(HardwareSerial, Serial3, MIDI2);
MIDI_CREATE_INSTANCE(HardwareSerial, Serial3, MIDI3);

// PIN ASSIGNMENTS ##################################################
const int led0 = 13;    //the onboard (orange) LED
TouchSwitch Edit(23);



// DECLARATOINS #########################################################
byte MIDIchannel = 10;
Editor editor = Editor(encPinA, encPinB, editPin);
MIDItouch* Expression[22];
MIDIdrum* Drums[22]
void setup(){ // INITIALIZATION #########################################
  Drums[0] = new MIDIdrum padA(0, 38, TOUCH); TODO: WHICH PINS ARE ASSIGNED TO WHICH PADS?
  EEPROM.get(0, padA.number);

  MIDIdrum padB(1, 38, TOUCH);
  MIDIdrum padC(22, 38, TOUCH);
  MIDIdrum padD(3, 38, TOUCH);
  MIDIdrum padE(4, 38, TOUCH);
  MIDIdrum padF(15, 38, TOUCH);
  MIDIdrum padG(16, 38, TOUCH);
  MIDIdrum padH(17, 38, TOUCH);
  MIDIdrum padI(18, 38, TOUCH);
  MIDIdrum padJ(19, 38, TOUCH);
  MIDIdrum padK(19, 38, TOUCH);

  Ts[0] = new MIDIpot(expPin, 85);
  for(int i=2; i<18; i++){Ps[i] = new MIDIpot(muxPin1,46+i);} // CC 48~63

  pinMode(led0, OUTPUT);
  MIDI1.begin(MIDI_CHANNEL_OMNI); //MIDI1 MIDI2 and MIDI3 only need to send
  MIDI2.begin(MIDI_CHANNEL_OMNI); //no need to read each one
  MIDI3.begin(MIDI_CHANNEL_OMNI); //or set handlers for incoming messages

  MIDI.begin(MIDI_CHANNEL_OMNI);
  MIDI.setHandleClock(onClock); // blink LED?

  calibrateStuff();

}

void loop(){ // PROGRAM #################################################
  editor.bounce->update();
  // On Button Release ##################################################
  if (editor.bounce->risingEdge()){
    editor.encoder->write(0);

    if (editor.editing){
      switch(editing){
        case 1: EEPROM.put(1, pad1.number);

      }
      editor.editing = false;
    }
    else{programMode = !programMode;
    }
  }

  // On Button Press ####################################################
  else if (editor.bounce->fallingEdge()){
  }

  // On Hold ############################################################
  else if (editor.bounce->read() == LOW){

  // In Program Mode ######################################################
  if (programMode){
    }

    // In Control Mode ####################################################
    else{
}









void calibrateStuff(){
  snare0.setThreshold();
  snare1.setThreshold();
  snare22.setThreshold();
  snare3.setThreshold();
  snare4.setThreshold();
  snare15.setThreshold();
  snare16.setThreshold();
  snare17.setThreshold();
  snare18.setThreshold();
  snare19.setThreshold();
}

void printStuff(){
    Serial.print("snare0\t");
  Serial.print(snare0.hoverOnThreshold);
  Serial.print("\t");
  Serial.println(snare0.touchOnThreshold);
  
  Serial.print("snare1\t");
  Serial.print(snare1.hoverOnThreshold);
  Serial.print("\t");
  Serial.println(snare1.touchOnThreshold);

  Serial.print("snare22\t");
  Serial.print(snare22.hoverOnThreshold);
  Serial.print("\t");
  Serial.println(snare22.touchOnThreshold);

  Serial.print("snare3\t");
  Serial.print(snare3.hoverOnThreshold);
  Serial.print("\t");
  Serial.println(snare3.touchOnThreshold);

  Serial.print("snare4\t");
  Serial.print(snare4.hoverOnThreshold);
  Serial.print("\t");
  Serial.println(snare4.touchOnThreshold);

  Serial.print("snare15\t");
  Serial.print(snare15.hoverOnThreshold);
  Serial.print("\t");
  Serial.println(snare15.touchOnThreshold);

  Serial.print("snare16\t");
  Serial.print(snare16.hoverOnThreshold);
  Serial.print("\t");
  Serial.println(snare16.touchOnThreshold);

  Serial.print("snare17\t");
  Serial.print(snare17.hoverOnThreshold);
  Serial.print("\t");
  Serial.println(snare17.touchOnThreshold);

  Serial.print("snare18\t");
  Serial.print(snare18.hoverOnThreshold);
  Serial.print("\t");
  Serial.println(snare18.touchOnThreshold);

  Serial.print("snare19\t");
  Serial.print(snare19.hoverOnThreshold);
  Serial.print("\t");
  Serial.println(snare19.touchOnThreshold);

}
