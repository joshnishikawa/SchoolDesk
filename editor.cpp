#include "editor.h"

// Editor constructors
Editor::Editor(){};

Editor::Editor(int a, int b, int p){
  pinMode(p, INPUT_PULLUP);
  bounce = new Bounce(p, 50);
  encoder = new Encoder(a, b);
  level = 0;
  editing = 0;
};

// Editor destructor
Editor::~Editor(){
  delete bounce;
  delete encoder;
};

int Editor::send(){
  int incdec = encoder->read();
  if(incdec >= 1 && level < 127){       // If turned up but not already maxed
    level += 1;
    incdec = level;
    usbMIDI.sendControlChange(9, level, MIDIchannel);
  }
  else if (incdec <= -1 && level > 0){  // If turned down but not bottomed out
    level -= 1;
    incdec = level;
    usbMIDI.sendControlChange(9, level, MIDIchannel);
  }
  else{incdec = -1;}
  encoder->write(0);
  return incdec;
};

void Editor::setSound(int sound){
  int newValue = quadOne(sound, 35, 81);
  if (newValue >= 0){
    usbMIDI.sendNoteOn(newValue, 63, MIDIchannel);
    sound = newValue;
  }
};

int Editor::quadOne(byte val, byte min, byte max){
  int newValue = encoder->read();
  if (newValue == 4){
    if (val < max){
      encoder->write(0);
      newValue = val + 1;
    }
    else if (val == max){
      encoder->write(0);
      newValue = 0;
    }
  }
  else if (newValue == -4){
    if (val > 0){
      encoder->write(0);
      newValue = val - 1;
    }
    else if (val == 0){
      encoder->write(0);
      newValue = max;
    }
  }
  else if (newValue > 4 || newValue < -4){
    encoder->write(0);
    newValue = -1;
  }
  else{newValue = -1;}
  return newValue;
};
