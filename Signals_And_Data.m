Signals and Data


% Square Wave signal
A=[1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,...
1,1,1,1,1,0,0,0,0,0];
fs=10; %sampling frequency in Hz
tiv=1/fs; %time interval between samples;
t=0:tiv:(3-tiv); %time intervals set (30 values)
plot(t,A,'*'); %plots figure
axis([0 3 -0.5 1.5]);
xlabel('sec.'); title('square wave samples');



% Sine and cosine signals
fy=1; %signal frequency in Hz
wy=2*pi*fy; %signal frequency in rad/s
fs=60; %sampling frequency in Hz
tiv=1/fs; %time interval between samples;
t=0:tiv:(3-tiv); %time intervals set
ys=sin(wy*t); %signal data set
plot(t,ys,'k'); hold on; %plots figure
axis([0 3 -1.5 1.5]);
xlabel('seconds');
yc=cos(wy*t); %signal data set
plot(t,yc,'--k'); %plots figure