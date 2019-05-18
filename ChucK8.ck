
// Since ChucK is music oriented you are able to set directionality of the noise.
SinOsc s => dac.left;   
SinOsc t => dac.right;

500 => s.freq;
220.23 => t.freq;

1::second => now;

// Multichannel audio

SinOsc m => dac.chan(0);
SinOsc p => dac.chan(1);

320 => m.freq;
100 => p.freq;

// Depending on what your setup is this could sound horrid.

1::second=>now;
// This is how we can use a panning object. -1 on one side and 1 on the other. So it pans across.
SinOsc a => Pan2 q => dac;

1.0=> q.pan;
1::second=> now;

1 => float panPos;
while(panPos > -1)
{
    panPos => q.pan;
    <<< panPos >>>;
    panPos -.1 => panPos;  // This will let us decrease slightly each iteration
    .01::second => now;
}

// Sound Chaining
Noise J => Pan2 K => dac;
while(true)
{
    Math.sin(now/1::second *2*pi) => K.pan;
    100::ms =>now;
}