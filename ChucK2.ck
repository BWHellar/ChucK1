// You can print the current time and see when they are activated witht he VM
<<< "now:", now >>>;
//Here we can get an actual printout of the time instead of the harder to read basic now functioanlity.
<<< "now (in second):", now / second>>>;
// Here we can see the time machanism in action
5::second => now;
<<< "NEW now (in second):", now / second>>>;
// Due to ChucK being a specifically time language it will give an exact 5 second change to print out the new form.

SinOsc test => dac;
// This simple loop will replicate that old fashion beep and boop noise you hear in old scifi films.
while(true)
{
    Math.random2f(30, 500) => test.freq;
    100:: ms =>now;
}