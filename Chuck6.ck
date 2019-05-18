TriOsc First => dac;
for (0=> int i; i <= 127;i++)
{
    // MIDI to Hertz convert
    Std.mtof(i) => float Hz;
    <<< i, Hz>>>;
    // Thdis will run through the entire range of Hertz on a possible keyboard
    Hz => First.freq;
    200::ms => now;
}

//There are 3 utility functions
// std.abs - Takes Int and returns Int
// std.fabs - Returns absolute value of floating number
// std.sgn - Computes sign of the input

// Sample which converts
 -10 => int negative;
-1.2234 => float negativeFloat;

Std.abs(negative) => int absInt;
Std.fabs(negativeFloat) => float fabsInt;

<<< absInt, fabsInt >>>;

// Vol as int
// Pretty cool conceptually
1=> int volume;
45.6 => float midiNote;
volume => float fVol;
Std.ftoi(midiNote) => int ImNote;
<<< volume, midiNote, fVol, ImNote>>>;

// Working with random.

while(true)
{
    // This will give random numbers every .5 seconds. They will tend to be massive.
    Math.random() => int i;
    <<< i >>>;
    .5::second=> now;
}
// The above is an infinite loop so below will never run but for the sake of knowledge
while(true)
{
    // This will generate between two numbers
    Math.random2(19,20) => int i;
    <<<i>>>;
    .5::second=> now;
}

while (true)
{
    // Same concept except this will randomly generate a floating point value.
    Math.randomf() => float i;
    <<<i>>>;
    .5::second=> now;
}

while(true)
{
    // Same concept but will generate float values between 50 and 1000
    Math.random2f(50,1000) => float i;
    <<<i>>>;
    .5:second=> now;
}