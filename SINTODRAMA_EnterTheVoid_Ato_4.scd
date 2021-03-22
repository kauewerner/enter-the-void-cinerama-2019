// Enter the void live cinema with SINTODRAMA
//
// Ato 4 - Nascimento
//

(
Pbindef(\FinalAto1,\instrument,\klangPad);
Pbindef(\FinalAto1).play;
Pbindef(\FinalAto1,\dur,Pexprand(2,3,inf));
Pbindef(\FinalAto1,\freq,Ptuple([
		Pexprand(60,220,inf),
		Pexprand(160,410,inf),
	Pexprand(200,1220,inf)]).collect([_]));
Pbindef(\FinalAto1,\amp,Ptuple([
		Pexprand(0.1,1,inf),
		Pexprand(0.1,0.75,inf),
	Pexprand(0.1,0.5,inf)]).collect([_]));
Pbindef(\FinalAto1,\freq2,Pexprand(100,1800,inf));
Pbindef(\FinalAto1,\ma,Pexprand(0.1,0.53,inf));
Pbindef(\FinalAto1,\mf,Pexprand(100,5000,inf));
Pbindef(\FinalAto1,\amp_sin,Pexprand(0.05,0.742,inf));
Pbindef(\FinalAto1,\amp_main,0.025);
Pbindef(\FinalAto1,\at,Pexprand(1,2.75,inf));
Pbindef(\FinalAto1,\re,Pexprand(2.5,5,inf));
Pbindef(\FinalAto1,\mix,Pexprand(0.25,1,inf));
Pbindef(\FinalAto1,\room,Pexprand(10,100,inf));
Pbindef(\FinalAto1,\ps,Pgauss(0,0.5,inf));
)
s.scope;

Pbindef(\FinalAto1,\ma,Pexprand(0.25,0.73,inf));
Pbindef(\FinalAto1,\mf,Pexprand(1,10,inf));
Pbindef(\FinalAto1,\amp_main,0.025);

Pbindef(\FinalAto1).stop;

Synth.new(\multiSaw,[\freq,200.rand,\cutoff,5000,\at,4,\re,4,\rf, 0.1.rand,\ps,(2.0.rand-1)]);


//
(
Pbindef(\pRecAto2,\instrument,\recBuf);
Pbindef(\pRecAto2).play;
Pbindef(\pRecAto2,\dur,1);
Pbindef(\pRecAto2,\amp,0.75);
Pbindef(\pBufAto2,\instrument,\playBuf);
Pbindef(\pBufAto2).play;
Pbindef(\pBufAto2,\dur,0.5);
Pbindef(\pBufAto2,\rate,Pexprand(0.75,4,inf));
Pbindef(\pBufAto2,\fr,Pexprand(0.1,50,inf));
Pbindef(\pBufAto2,\sp,0);
Pbindef(\pBufAto2,\amp,3.5);
Pbindef(\pBufAto2,\at,0.001);
Pbindef(\pBufAto2,\re,2);
Pbindef(\pBufAto2,\mix,Pexprand(0.15,0.275,inf));
Pbindef(\pBufAto2,\room,Pexprand(2.5,10,inf));
)



// controle de dur
(
Pbindef(\pRecAto2,\dur,1);
Pbindef(\pBufAto2,\dur,0.1);
)

// controle de sampling
(
Pbindef(\pBufAto2,\rate,Pexprand(0.1,1.52,inf));
Pbindef(\pBufAto2,\fr,Pexprand(0.01,10,inf));
)
Pbindef(\pBufAto2,\rate,Pexprand(1.5,4,inf));
Pbindef(\pBufAto2,\fr,Pexprand(10,1000,inf));
//controle de reverb
(
Pbindef(\pBufAto2,\mix,Pexprand(0.75,0.975,inf));
Pbindef(\pBufAto2,\room,Pexprand(2.5,10,inf));
)

// controle de amplitude
(
Pbindef(\pRecAto2,\amp,0.75);
Pbindef(\pBufAto2,\amp,0.75);
)

(
Pbindef(\pRecAto2).stop;
Pbindef(\pBufAto2).stop;
)