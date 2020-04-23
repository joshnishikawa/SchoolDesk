#ifndef editor_h
#define editor_h
#include "Arduino.h"
#include "MIDIcontroller.h"
extern byte MIDIchannel;

class Editor{
    int quadOne(byte val, byte min, byte max);
  public:
    Editor();
    Editor(int a, int b, int p);
    ~Editor();
    Bounce* bounce;
    Encoder* encoder;
    int number;
    int level;
    int sound;
    byte editing;
    int send();
    void setSound(int sound);
    
};
#endif
