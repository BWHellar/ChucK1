<<< "Brendan Hellar - Test" >>>;
// These are the 4 Oscillators
SinOsc First => dac;
SqrOsc Second => dac;
TriOsc Third => dac;
SawOsc Fourth => dac;
// These will run in sequence based on the time set
0.6 => First.gain; 220 => First.freq; 1:: second => now;

0.5 => First.gain; 440 => First.freq; 1.5:: second => now;

.4 => First.gain; 500 => First.freq; 1.3:: second => now;

// These are how you declare integers.
2 => int intA;
<<< intA >>>;
// You can also do math in this fashion.  We are multiplying and pushing it into the previous Int and reprinting it
10 * intA => intA;
<<<intA>>>;

SinOsc newFirst => dac;
//You can also save variables into a new dac so you can manipulate sound as you move along.
265.63 => float myFreq;
0.6 => float myVol;
// We are setting a volume and freq above very specifically and pushing them to the SinOsc we created.
myFreq => newFirst.freq;
myVol => newFirst.gain;
// Then of course we need to set a duration.
1:: second => now;

// While Loops;
SawOsc b => dac;
TriOsc c => dac;
    150.50 => float newTest;
    0.3 => float newVol;
    newTest => b.freq;
    newVol => b.gain;
    1::second => now;

while (true)
{
    // You can also use Math Random like in other langauges.
    Math.random2f(30,1000) => c.freq;
    100:: ms => now;
}
// Notes on the duration
// Keep in mind that all the time mechanisms are store int he now stage;  In that 11:: minute => now;
// samp is 1 digital sample in ChucK
// ms is 1 millisecond
// second is 1 second
// minute is 1 minute
// hour is 1 hour
// day is 1 day
// week is 1 week

<<< "now:", now>>;