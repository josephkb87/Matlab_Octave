% Square signal

% Square signal
A=[1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,...
1,1,1,1,1,0,0,0,0,0];
fs=10; %sampling frequency in Hz
tiv=1/fs; %time interval between samples;
t=0:tiv:(3-tiv); %time intervals set (30 values)
plot(t,A,'*'); %plots figure
axis([0 3 -0.5 1.5]);
xlabel('sec.'); title('square wave samples');

% Square signal2
fy=100; %signal frequency in Hz
wy=2*pi*fy; %signal frequency in rad/s
duy=0.03; %signal duration in seconds
fs=20000; %sampling frequency in Hz
tiv=1/fs; %time interval between samples;
t=0:tiv:(duy-tiv); %time intervals set
y=square(wy*t); %signal data set
plot(t,y,'k'); %plots figure
axis([0 duy -1.5 1.5]);
xlabel('seconds'); title('square signal');

% Sine signal
% Sine signal
fy=1; %signal frequency in Hz
wy=2*pi*fy; %signal frequency in rad/s
fs=60; %sampling frequency in Hz
tiv=1/fs; %time interval between samples;
t=0:tiv:(3-tiv); %time intervals set, 180 values
y=sin(wy*t); %signal data set
plot(t,y,'k'); %plots figure
axis([0 3 -1.5 1.5]);
xlabel('seconds'); title('sine signal');

% Sine and cosine signals
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

% Sawtooth signal
% Sawtooth signal
fy=100; %signal frequency in Hz
wy=2*pi*fy; %signal frequency in rad/s
duy=0.03; %signal duration in seconds
fs=20000; %sampling frequency in Hz
tiv=1/fs; %time interval between samples;
t=0:tiv:(duy-tiv); %time intervals set
y=sawtooth(wy*t); %signal data set
plot(t,y,'k'); %plots figure
axis([0 duy -1.5 1.5]);
xlabel('seconds'); title('sawtooth signal');

% Sawtooth signals
fy=100; %signal frequency in Hz
wy=2*pi*fy; %signal frequency in rad/s
duy=0.03; %signal duration in seconds
fs=20000; %sampling frequency in Hz
tiv=1/fs; %time interval between samples;
t=0:tiv:(duy-tiv); %time intervals set
y=sawtooth(wy*t,0.1); %signal data set (width 0.1)
subplot(2,2,1); plot(t,y,'k'); %plots figure
axis([0 duy -1.5 1.5]);
xlabel('seconds'); title('sawtooth signal');
y=sawtooth(wy*t,0.3); %signal data set (width 0.3)
subplot(2,2,2); plot(t,y,'k'); %plots figure
axis([0 duy -1.5 1.5]);
xlabel('seconds'); title('sawtooth signal');
y=sawtooth(wy*t,0.5); %signal data set (width 0.5)
subplot(2,2,3); plot(t,y,'k'); %plots figure
axis([0 duy -1.5 1.5]);
xlabel('seconds'); title('sawtooth signal');
y=sawtooth(wy*t,0.9); %signal data set (width 0.9)
subplot(2,2,4); plot(t,y,'k'); %plots figure
axis([0 duy -1.5 1.5]);
xlabel('seconds'); title('sawtooth signal');

% Adding Signals
% Sum of sines signal
fy=300; %signal frequency in Hz
wy=2*pi*fy; %signal frequency in rad/s
fs=6000; %sampling frequency in Hz
tiv=1/fs; %time interval between samples;
t=0:tiv:(5-tiv); %time intervals set (5 seconds)
%signal data set:
y=0.64*sin(wy*t)+0.21*sin(3*wy*t)+0.12*sin(5*wy*t);
sound(y,fs); %sound
t=0:tiv:(0.01-tiv); %time intervals set (0.01 second)
%signal data set:
y=0.6*sin(wy*t)+0.3*sin(3*wy*t)+0.2*sin(5*wy*t);
plot(t,y,'k'); %plots figure
axis([0 0.01 -1.5 1.5]);
xlabel('seconds'); title('sum of sines signal');


% Multiplication of sines signal
fx=70; %signal frequency in Hz
wx=2*pi*fx; %signal frequency in rad/s
fz=2; %signal frequency in Hz
wz=2*pi*fz; %signal frequency in rad/s
fs=6000; %sampling frequency in Hz
tiv=1/fs; %time interval between samples;
t=0:tiv:(8-tiv); %time intervals set (8 seconds)
y=sin(wx*t).*sin(wz*t); %signal data set
sound(y,fs); %sound
t=0:tiv:(1-tiv); %time intervals set (1 second)
y=sin(wx*t).*sin(wz*t); %signal data set
plot(t,y,'k'); %plots figure
axis([0 1 -1.5 1.5]);
xlabel('seconds'); title('multiplication of sines signal');

