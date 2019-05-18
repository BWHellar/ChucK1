SqrOsc s => dac;
// This sets a general seed
// What this is basically saying is that everytime you Shred it will have 5 different variations and random sequences it can generate.
Math.srandom (5);

while(true)
{
    // This will give you a random float for the gain and a random int for the freq.
    Math.random2(20,500) => int i;
    Math.random2f(.2,.9) => float v;
    <<<i,v>>>;
    i => s.freq;
    v => s.gain;
    0.5::second => now;
}
    

