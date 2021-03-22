// Enter the void live cinema with SINTODRAMA
//
// Ato 2 - Viagem
//

/*
Parte 1:
 -> iniciar com baixa dur no pRec e pBuf
 -> iniciar com rate insectal e ir adicionando as baixas frequencias
 -> iniciar com baixo mix de reverb e aumentar quando surge o efeito da droga
*/
(
Pbindef(\pRecAto2,\instrument,\recBuf);
Pbindef(\pRecAto2).play;
Pbindef(\pRecAto2,\dur,1);
Pbindef(\pRecAto2,\amp,2.75);
Pbindef(\pBufAto2,\instrument,\playBuf);
Pbindef(\pBufAto2).play;
Pbindef(\pBufAto2,\dur,0.5);
Pbindef(\pBufAto2,\rate,Pexprand(1,4,inf));
Pbindef(\pBufAto2,\fr,Pexprand(0.01,1,inf));
Pbindef(\pBufAto2,\sp,0);
Pbindef(\pBufAto2,\amp,2.5);
Pbindef(\pBufAto2,\at,0.1);
Pbindef(\pBufAto2,\re,2);
Pbindef(\pBufAto2,\mix,Pexprand(0.15,0.275,inf));
Pbindef(\pBufAto2,\room,Pexprand(2.5,10,inf));
//Pbindef(\pBufAto2,\ps,Pgauss(0,0.5,inf));
)

/*
Parte 2:
 -> variar entre rates baixos e altos
*/

// controle de dur
(
Pbindef(\pRecAto2,\dur,1);
Pbindef(\pBufAto2,\dur,0.15);
)

// controle de sampling
(
Pbindef(\pBufAto2,\rate,Pexprand(0.10,4.72,inf));
Pbindef(\pBufAto2,\fr,Pexprand(0.01,5,inf));
)
Pbindef(\pBufAto2,\rate,Pexprand(1.5,4,inf));
Pbindef(\pBufAto2,\fr,Pexprand(100,5000,inf));
//controle de reverb
(
Pbindef(\pBufAto2,\mix,Pexprand(0.5,0.975,inf));
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