SndBuf sound => Pan2 p => dac;

//Dir
me.dir() => string path;
<<< path>>>;

//Filename
// Something very important to keep in mind is this is not a normal pathing.
// Chuck routes from the current directory, NOT the directory of the computer in general.
// This means that you have to have the file in question saved before trying to route.
"audio/cowbell_01.wav" => string filename;
path + filename =>filename;
<<<filename>>>;

// Opening soundfile
filename => sound.read;
// Sets play position to the start of file
.5 => sound.gain; // Volume
0 => sound.pos; // Playhead position
1.0 => sound.rate; // Playhead speed

2::second => now;

// Testing
while(true)
{
    Math.random2f(.2,.8) => sound.gain;
    Math.random2f(.2,1.8) => sound.rate;
    Math.random2f(-1,1) => p.pan;
    0=> sound.pos;
    100::ms => now;
}