SndBuf sound => dac;
// Found a shortcut for pathing
me.dir() + "audio/snare_01.wav" => string filename;
filename => sound.read;
sound.samples() => int num;
<<<filename>>>;
<<< num>>>;

SndBuf snare => dac;
string samples[3];
me.dir() + "audio/snare_01.wav" => samples [0];
me.dir() + "audio/cowbell_01.wav" => samples [1];
me.dir() + "audio/snare_01.wav" => samples [2];

<<< samples.cap()>>>;

while(true)
{
    Math.random2(0,samples.cap()-1) => int test;
    samples[test] => snare.read;
    250::ms => now;
    
}