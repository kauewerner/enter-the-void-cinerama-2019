// Enter the void live cinema with SINTODRAMA
//
// Synth definitions
//
s.boot;
s.meter;
s.plotTree;
s.scope;
s.quit;
s.reboot;
s.options.numOutputBusChannels = 2;

// multiple sawtooth ------------------------------------------------------
(
SynthDef.new(\multiSaw,{
	arg freq = 100, cutoff = 2000, at = 0.001, re = 0.5, amp = 0.5, rf = 0.05, ps = 0;
	var sig, env;
	env = EnvGen.kr(Env.perc(at,re),doneAction:2);
	sig = 0;
	10.do{sig = sig + Saw.ar(freq*Rand(1-rf,1+rf),mul:0.1)};
	sig = Pan2.ar(LPF.ar(sig,cutoff),ps);
	Out.ar(0,sig * env * amp);
}).add;
)

Synth.new(\multiSaw,[\cutoff,1500,\re,1,\rf, 0.1,\ps,(2.0.rand-1)]);


// ambient klang pad ------------------------------------------------------
(
SynthDef.new(\klangPad,{
	arg freq = #[220,300,400], amp = #[0.5,0.1,0.3], rtime = #[10,10,10], at = 2.5, re = 2.5, mix = 0.75, room = 10, damp = 0.25, ma = 0.25, mf = 1, freq2 = 350, amp_sin = 0.35, amp_main = 0.25, ps = 0;
	var sig, env;
	env = EnvGen.kr(Env.perc(at,re),doneAction:2);
	sig = DynKlang.ar(`[freq,amp,nil]);
	sig = sig + SinOsc.ar(freq2 * (1 + SinOsc.ar(mf,mul:ma)),mul:amp_sin);
	sig = Pan2.ar(sig,ps);
	sig = FreeVerb.ar(sig,mix,room,damp);
	Out.ar(0,sig * env * amp_main);
}).add;
)

Synth.new(\klangPad,[\ma,10,\mf,1,\at,1,\amp_sin,0.015,\ps,(2.0.rand-1)]);


// Record buffer ------------------------------------------------------
(
~bufferSize = 44100 * 2;
b = Buffer.alloc(s, ~bufferSize , 2);
SynthDef(\recBuf, {
	arg amp = 1;
    var sig;
    sig = SoundIn.ar([0,1])*amp;
    RecordBuf.ar(sig, b.bufnum, doneAction: 2, loop: 0);
}).add;
)

Synth.new(\recBuf);


// Play buffer ------------------------------------------------------
(
SynthDef.new(\playBuf,{
	arg rate = 1, at = 1, re = 2, fr = 0.1, sp = 1, mix = 0.75, room = 1, damp = 0.25, ps = 0;
	var sig, env;
	env = EnvGen.kr(Env.perc(at,re),doneAction:2);
	sig = PlayBuf.ar(2,b.bufnum,LFTri.kr(fr,0,1,1.5)*rate,doneAction:2,startPos:sp);
	//sig = Pan2.ar(sig,ps);
	sig = FreeVerb.ar(sig,mix,room,damp);
	Out.ar(0,sig * env);
	}
).add;
)

// modulated pulse ------------------------------------------------------
(
SynthDef.new(\modPulse,{
	arg freq = 440, amp = 0.5, at = 0.001, re = 0.01, mix = 0.75, room = 1, damp = 0.25, amp_main = 0.5, rf = 0.001, cutoff = 1000, pw_freq = 15, pw_depth = 0.2, ps = 0;
	var sig, env , pw;
	env = EnvGen.kr(Env.perc(at,re),doneAction:2);
	pw = SinOsc.ar(pw_freq,0,pw_depth,0.5);
	sig = Pulse.ar(freq*Rand(1-rf,1+rf),pw,mul:amp);
	sig = Pan2.ar(LPF.ar(sig,cutoff),ps);
	sig = FreeVerb.ar(sig,mix,room,damp);
	Out.ar(0,sig * env * amp_main);
}).add;
)

Synth.new(\modPulse,[\re,1,\mix,0.75]);
