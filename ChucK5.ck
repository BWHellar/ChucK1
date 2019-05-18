// Primary

SinOsc First => dac;
SqrOsc Second => dac;

// We start with First
.5 => First.gain;
0 => Second.gain;
while(true)
{
    for(0=> int i; i<500;i++)
    {
        i=> First.freq;
        .001::second => now;
    }

    // Swapping
    .2 => Second.gain;
    0 => First.gain;
    for(0=> int i; i< 200;i++)
    {
        i=> Second.freq;
        .002::second=> now;
    }

    // Now both will play

    .5 => First.gain;
    .1 => Second.gain;
    for (0=> int i; i<400;i++)
    {
        i=> First.freq;
        i * 2=> Second.freq;
        .001::second=>now;
    }
}
// This will create an annoying yet effective alarm sound you might hear in the morning.