% UDP Receive using DSP toolbox
% 2020/08/10 

udpr = dsp.UDPReceiver('LocalIPPort',5003);
setup(udpr);
tmp = udpr();
dataFloat = typecast(tmp, 'single');
release(udpr);