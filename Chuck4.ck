SinOsc First => dac;
250.55 => First.freq;
0.2 => First.gain;

2 => int intA;
// If Else also functions muchthe same to other langauges.  Nested If's also work as well.

// if (( intA == 1) || (intA == 2)) would also work here.  The && statements work as well.
if (intA == 1)
{
    1::second => now;
}
else
{
    440.40 => First.freq;
    2::second => now;
}