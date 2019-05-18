// Usage of Arrays
// Using 7 is how many blocks you have in the array.
int arrayA[7];
// We are storing 54 in the 0 position in the array.
54 => arrayA[0];
12 => arrayA[1];
90 => arrayA[2];
23 => arrayA[3];
51 => arrayA[4];
77 => arrayA[5];
22 => arrayA[6];


// Another way to declare an array. 
[12,13,14,15,16,17,18] @=> int arrayB[];

// Array retrieval

arrayA[1] => int data;
<<<data>>>;
// How to pop out ints in an array and replace 
66 => arrayA[1]; arrayA[1] => int data1;
<<<data1>>>;


[.5,.2,.5,.1,.9,.7] @=> float notes[];


// Array Looping
SinOsc s=> dac;
SinOsc m=>dac;

[100,200,300,400,500,600,700,800] @=> int arrayC[];
// This lets you know how many elements in the array.
<<< arrayC.cap()>>>;

for (0=> int i; i< arrayC.cap();i++)
{
    // Since we are pushing an array into a SinOsc we are able to run through the array as a freq instead of just console logging numbers.
    <<<i, arrayC[i]>>>;
    Std.mtof(arrayC[i]) => s.freq;
    Std.mtof(arrayB[i]) => m.freq;
    notes[i]::second => now;
}