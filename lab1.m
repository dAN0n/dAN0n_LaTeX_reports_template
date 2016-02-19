Fs=8e3;
t=0:1/Fs:1;
t=t';

A=2;
f0=1e3;
phi=pi/4;
s1=A*cos(2*pi*f0*t+phi);
alpha=1e3;
s2=exp(-alpha*t) .* s1;

subplot(2,2,1); plot(s2(1:100))
subplot(2,2,2); plot(s2(1:100), '.')
subplot(2,2,3); stem(s2(1:100))
subplot(2,2,4); stairs(s2(1:100))
