// Enter the void live cinema with SINTODRAMA
//
// Ato 3 - Morte
//


// Caminhada pela rua
(
Pbindef(\pAto3,\instrument,\modPulse);
Pbindef(\pAto3).play;
Pbindef(\pAto3,\dur,Pseq(0.2*[1],inf));
Pbindef(\pAto3,\freq,Pseq([100,400,300,200,80,1000,50],inf));
Pbindef(\pAto3,\at,Pexprand(0.001,0.05,inf));
Pbindef(\pAto3,\re,Pexprand(0.25,0.5,inf));
Pbindef(\pAto3,\rf,0.01);
Pbindef(\pAto3,\pw_freq,0.1);
Pbindef(\pAto3,\pw_depth,0.1);
Pbindef(\pAto3,\amp,0.75);
Pbindef(\pAto3,\cutoff,400);
)

Pbindef(\pAto3,\freq,Pseq([100,400,300,200,80],inf));
Pbindef(\pAto3,\freq,Pseq([100,400,300,200,80,1000],inf));
Pbindef(\pAto3,\freq,Pseq([100,400,300,200,80,1000,50],inf));
Pbindef(\pAto3,\pw_freq,0.01);
Pbindef(\pAto3,\pw_freq,5);
Pbindef(\pAto3,\pw_depth,0.15);
Pbindef(\pAto3,\cutoff,900);
Pbindef(\pAto3,\rf,0.15);
Pbindef(\pAto3,\rf,0.001);

Pbindef(\pAto3,\cutoff,Pseq((1000..4000),inf));

// The void
Pbindef(\pAto3).play;
Pbindef(\pAto3).stop;

Pbindef(\pAto3,\dur,Pseq(2*[1],inf));
(
Pbindef(\pAto3,\cutoff,Pseq((1000..4000),inf));
Pbindef(\pAto3,\cutoff,4000);
Pbindef(\pAto3,\freq,Pseq([100,130,55,78,1000,300,180,200,3000],inf));
Pbindef(\pAto3,\dur,Pseq(0.2*[1,0.25,0.5,0.1,1],inf));
Pbindef(\pAto3,\rf,0.1);
Pbindef(\pAto3,\at,Pexprand(0.01,0.05,inf));
Pbindef(\pAto3,\re,Pexprand(0.575,0.75,inf));
)

Pbindef(\pAto3,\rf,Pseq((20..100)*0.5/100,inf));
Pbindef(\pAto3,\at,Pexprand(0.1,0.25,inf));
Pbindef(\pAto3,\re,Pexprand(0.575,1.75,inf));


//Policia!
(
Pbindef(\pAto3,\freq,Pexprand(100,1000,inf));
Pbindef(\pAto3,\dur,Pseq(0.1*[1,0.25,0.5,0.1],inf));
Pbindef(\pAto3,\rf,Pseq((50..100)*0.5/100,inf));
Pbindef(\pAto3,\cutoff,4000);
Pbindef(\pAto3,\at,Pexprand(0.001,0.025,inf));
Pbindef(\pAto3,\re,Pexprand(0.07575,0.275,inf));
Pbindef(\pAto3,\amp,0.95);
)

(
Pbindef(\pAto3,\instrument,\modPulse);
Pbindef(\pAto3).play;
Pbindef(\pAto3,\dur,Pseq([0.2],inf));
Pbindef(\pAto3,\freq,Pseq([100,400,300,200,80],inf));
Pbindef(\pAto3,\at,Pexprand(0.001,0.005,inf));
Pbindef(\pAto3,\re,Pexprand(0.25,0.5,inf));
Pbindef(\pAto3,\rf,0.01);
Pbindef(\pAto3,\pw_freq,0.1);
Pbindef(\pAto3,\pw_depth,0.1);
Pbindef(\pAto3,\amp,0.5);
Pbindef(\pAto3,\cutoff,400);
)

// Final Routine
(
{
Pbindef(\pAto3).play;
Pbindef(\pAto3,\dur,1);
Pbindef(\pAto3,\freq,Pseq([100,400,300,200],inf));
Pbindef(\pAto3,\rf,0.1);
Pbindef(\pAto3,\re,0.5);
10.wait;
Pbindef(\pAto3,\dur,2);
Pbindef(\pAto3,\freq,Pseq([100,400,300],inf));
Pbindef(\pAto3,\rf,0.2);
Pbindef(\pAto3,\re,1);
10.wait;
Pbindef(\pAto3,\dur,4);
Pbindef(\pAto3,\freq,Pseq([100,400],inf));
Pbindef(\pAto3,\rf,0.3);
Pbindef(\pAto3,\at,2);
Pbindef(\pAto3,\re,2);
10.wait;
Pbindef(\pAto3).stop;
}.fork;
)


Pbindef(\pAto3).stop;