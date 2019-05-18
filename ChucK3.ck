now + 10::second => time later;
// This will give us a simple countdown in the ChucKian console.  From 10 seconds to 1
// It is saying as long as now is less than later it will run this loop.
while(now<later)
{
    <<< "time left:", (later-now)/second >>>;
    // This will check and print out every 1 second.
    1::second=>now;
}

<<< "END">>>;
// So when the countdown is completed the string will activate and the new while loop will activate.aw
SinOsc First => dac;
while(true)
{
    Math.random2f(50,1000) => First.freq;
    .5::second=>now;
}