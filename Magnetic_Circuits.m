% Example 2.3
% A magnetic core with three legs is shown in Figure 2.3. Its depth is 0.04 m, and there
% are 200 turns on the left most leg. The relative permeability of the core is 1500 with core
% lengths as shown. For the transformer circuit derive the following:
% 1. Equivalent circuit diagram with calculated values of magneto motive forces
% and reluctances. Neglect fringing at air gap
% 2. Flux ?g
% 3. Flux density in the left leg
% 4. Write MATLAB code to verify the answer in a, b, and c above.

% d) MATLAB Code:
clc;
clear all;
N=200; I= 2;
ur= 1500; u0= (4*pi*10^-7);
Lr= 1.08; Ll= 1.08; Lc= 0.34; Lair= 0.0004;
Ar=(0.09 * 0.04)
Ac=(0.15 * 0.04)
Aair=(0.15 * 0.04)
Rright= ((Lr)/(ur*u0*Ar))
Rleft= ((Ll)/(ur*u0*Ar))
Rcenter= ((Lc)/(ur*u0*Ac))
Rair= ((Lair)/(u0*Ac))
Rtotal= ((Rcenter+Rair)*(Rleft)/(Rcenter+Rair+Rleft))+Rright
Fluxtotal= (N*I)/Rtotal
FluxLeft= Fluxtotal
Fluxright= Fluxtotal*((Rcenter+Rair)/(Rcenter+Rair+Rright))
Fluxdensityleft= Fluxtotal/(Ar)