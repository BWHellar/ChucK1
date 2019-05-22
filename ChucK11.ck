SndBuf sound => dac;
// Found a shortcut for pathing
me.dir() + "audio/cowbell_01.wav" => string filename;
filename => sound.read;
sound.samples()=> int numSamples;

while (true)
{   
    numSamples => sound.pos;
    -1 => sound.rate;
    1:: second => now;
}