<<<<<<< Updated upstream
import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
boolean song_mic=true;
AudioPlayer song;  
AudioInput mic;
// Frame length
int frameLength = 1024; //--> when this is low, it may take more to compute

AgentFeature feat;
AgentDrawer drawer;

void setup()
{
  size(1280, 720);
  background(0);
  smooth();
  minim = new Minim(this);
  if(song_mic){   
    /* put any file you like here*/
    song = minim.loadFile("../../../data/mashup.mp3",frameLength);  
    feat = new AgentFeature(song.bufferSize(), song.sampleRate());
    song.play();     
  }
  else{
    // Mic input    
    mic = minim.getLineIn(Minim.MONO, frameLength);
    feat = new AgentFeature(mic.bufferSize(), mic.sampleRate());
  }
  drawer=new AgentDrawer(feat, 6);
}


void draw(){
  fill(0);
  rect(0,0,width, height);
    if(song_mic){
    feat.reasoning(song.mix);
  }
  else{
    feat.reasoning(mic.mix);
  }
  drawer.action();
}


 
=======
import ddf.minim.*; //libraries needed for sound analysis 
import ddf.minim.analysis.*;

Minim minim;
boolean song_mic=true; //can work also with mic (w true we just load song)
AudioPlayer song;  
AudioInput mic;
// Frame length
int frameLength = 1024; //--> when this is low, it may take more to compute

AgentFeature feat; //our two agents
AgentDrawer drawer;

void setup()
{
  size(1280, 720);
  background(0);
  smooth();
  minim = new Minim(this);
  if(song_mic){   
    /* put any file you like here*/
    song = minim.loadFile("../../../data/mashup.mp3",frameLength);  
    feat = new AgentFeature(song.bufferSize(), song.sampleRate()); //our agent feature 
    song.play();     //play song
  }
  else{
    // Mic input    
    mic = minim.getLineIn(Minim.MONO, frameLength);
    feat = new AgentFeature(mic.bufferSize(), mic.sampleRate());
  }
  drawer=new AgentDrawer(feat, 6); //drawer drawn with feat which is just AgentFeature above
}


void draw(){
  fill(0);
  rect(0,0,width, height); //black rectangle that fills the screen 

    if(song_mic){
    feat.reasoning(song.mix); //compute with song
  }
  else{
    feat.reasoning(mic.mix); //or compute with mic
  }
  drawer.action(); //calls drawer
}


 
>>>>>>> Stashed changes
