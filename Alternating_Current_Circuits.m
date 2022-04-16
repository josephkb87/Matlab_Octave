% Problem 1
% The following Figure 3.17, power system has two loads attached to a 6 ? line with a supply
% current of values of 5 Angle 0°A, if the loads data are given as:
% Load 1: P = 100 W at 0.8 pf leading
% Load 2: P = 1000 W at 0.7 pf lagging. Determine:
% a) The value of the total watts, VAR, and VA for the circuit
% b) Value of the supply voltage E
% c) The power factor for the circuit
% d) Type of element and their impedance in each box
% e) Write a MATLAB program to verify the answers.

% Solution
% MATLAB CODE
P1 = 100;
pf1 = 0.8;
Q1=P1*tan(acos(pf1));
P2 = 1000;
pf2 = 0.7;
Q2=P2*tan(acos(pf2));
I=5;
Pl=I^2 * 6;
P=Pl+P1+P2
Q=Q2-Q1
S=P+Q*i;
VA=abs(S)
E=(S/conj(I));
magE=abs(E)
angleE=angle(E)*180/pi
powerFactor=cos(atan(Q/P))
V=E-(I*6);
I1=conj((P1-Q1*i)/V);
Z_1=V/I1
I2=I-I1;
Z_2=V/I2
P1 = 100;
pf1 = 0.8;
Q1=P1*tan(acos(pf1));
P2 = 1000;
pf2 = 0.7;
Q2=P2*tan(acos(pf2));
I=5;
Pl=I^2 * 6;
P=Pl+P1+P2
Q=Q2-Q1
S=P+Q*i;
VA=abs(S)
E=(S/conj(I));
magE=abs(E)
angleE=angle(E)*180/pi
powerFactor=cos(atan(Q/P))
V=E-(I*6);
I1=conj((P1-Q1*i)/V);
Z_1=V/I1
I2=I-I1;
Z_2=V/I2