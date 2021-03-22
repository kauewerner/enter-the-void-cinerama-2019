// Enter the void live cinema with SINTODRAMA
//
// Ato 1 - Creditos
//

/*
Parte 1:
iniciar com baixas frequências;
alterar cutoff, attack e release
*/
(
Pbindef(\pAto1,\instrument,\multiSaw);
Pbindef(\pAto1).play;
Pbindef(\pAto1,\dur,Pseq((60/400)*[1],inf));
Pbindef(\pAto1,\freq,Pexprand(100,200,inf));
Pbindef(\pAto1,\rf,Pexprand(0.01,0.05,inf));
Pbindef(\pAto1,\amp,0.975);
Pbindef(\pAto1,\cutoff,Pseq((100..600)));
Pbindef(\pAto1,\at,Pexprand(0.001,0.062001,inf));
Pbindef(\pAto1,\re,Pexprand(0.15,0.17425,inf));
Pbindef(\pAto1,\ps,Pgauss(0,0.5,inf));
)

Pbindef(\pAto1,\at,Pexprand(0.001,0.2001,inf));
Pbindef(\pAto1,\re,Pexprand(0.15,0.725,inf));

Pbindef(\pAto1,\freq,Pexprand(100,400,inf));
Pbindef(\pAto1,\cutoff,Pseq((400..800)));
Pbindef(\pAto1,\cutoff,Pexprand(300,1500,inf));

/*
Parte 2:
 -> iniciar com estacato
 -> ativar a sequência de crescimento do release
 -> aumentar a faixa do ataque
 -> aumentar o release pre-final
*/
(
Pbindef(\pAto1,\freq,Pexprand(200,2200,inf));
Pbindef(\pAto1,\dur,Pseq((60/600)*[1,0.5,1,1],inf));
Pbindef(\pAto1,\rf,Pexprand(0.1,0.52,inf));
Pbindef(\pAto1,\amp,0.975);
Pbindef(\pAto1,\cutoff,Pexprand(2600,5200,inf));
Pbindef(\pAto1,\at,Pexprand(0.001,0.0275,inf));
Pbindef(\pAto1,\re,Pexprand(0.025,0.152,inf));
)

Pbindef(\pAto1,\re,Pseq((500..1000)*1.5/1000,inf));
Pbindef(\pAto1,\at,Pexprand(0.001,0.275,inf));
Pbindef(\pAto1,\re,Pexprand(0.725,1.52725,inf));

/*
Final:
 -> desativar a sequência anterior e, em parallelo, ativar o final
*/
(
Pbindef(\pAto1).stop;
Pbindef(\FinalAto1,\instrument,\klangPad);
Pbindef(\FinalAto1).play;
Pbindef(\FinalAto1,\dur,Pexprand(2,3,inf));
Pbindef(\FinalAto1,\freq,Ptuple([
		Pexprand(60,220,inf),
		Pexprand(360,710,inf),
	Pexprand(260,1220,inf)]).collect([_]));
Pbindef(\FinalAto1,\amp,Ptuple([
		Pexprand(0.1,1,inf),
		Pexprand(0.1,0.75,inf),
	Pexprand(0.1,0.5,inf)]).collect([_]));
Pbindef(\FinalAto1,\freq2,Pexprand(100,1800,inf));
Pbindef(\FinalAto1,\ma,Pexprand(0.1,0.3,inf));
Pbindef(\FinalAto1,\mf,Pexprand(0.1,50,inf));
Pbindef(\FinalAto1,\amp_sin,Pexprand(0.05,0.42,inf));
Pbindef(\FinalAto1,\amp_main,0.125);
Pbindef(\FinalAto1,\at,Pexprand(1,2.75,inf));
Pbindef(\FinalAto1,\re,Pexprand(2.5,5,inf));
Pbindef(\FinalAto1,\mix,Pexprand(0.5,1,inf));
Pbindef(\FinalAto1,\room,Pexprand(10,100,inf));
)

Pbindef(FinalAto1).stop;