% 125 kVA,11000/120 V:
clc
k = 0.75, S = 125, Q = 2 × S, f = 60, Bm = 1.1, D = 0.34, V1 = 11000, V2 = 120,
del = 2.2, Kw = 0.29,
c1 = 0.42, c2 = .1, d1 = 0.7, d2 = 0.14, e1 = 0.9, e2 = .42
%main dimension
Et = k × (S)^0.5 %emf per turn
Ai = Et/(4.44 × f × Bm) %core area
d = (Ai/k)^0.5
Aia = k × ((d)^2) %amended net core section
fa = Aia × Bm %flux
Et = 4.44 × f × fa %emf per turn
T2 = V2/Et %no. secondary turn per phase
T1 = T2 × (V1/V2) %no. primary turn per phase
Aw = S/(2.22 × f × Ai × Bm × del × Kw) %window area
L = Aw/(D?d) %window length
W = 2 × D + 0.9 × d %window width
%magnetic circuit
c11 = 2 × (c1 × c2) × d^2
d11 = 2 × (d1 × d2) × d^2
e11 = 1 × (e1 × e2) × d^2
GC = c11 + d11 + e11
ai = 0.9 × GC
netsec = 0.9 × 2 × c1 × d × e1 × d

%core loss
cv = 3 × ai × L %core volume
we = cv × 7.55 %core weight
pi0 = 2.7 %from curve 2.10
loss = we × pi0 × 10^(?3) %loss of core
Y = 2 × netsec × W × 1000000 %yoke size
weight = Y × 7.55 × 10^(?3)
den = 1.35 × Aia/netsec
pi1 = 1.9
loss1 = weight × pi1 × 10^(?3)
losst = (loss + loss1 × 1.075) × 1000 %total core loss
%magnetizing current
ATC = 3 × L
ATY = 2 × W × 4 × 100
ATT = ATC + ATY
vac = 31;vay = 10;
VA = we × vac + weight × vay
Im = VA/(V1)
I2 = S × 1000/V2
del2 = 2.8
a2 = I2/del2
l2 = pi × d × T2
ro = 0.021 × 10^(?6)
R2 = ro × l2/(a2 × 10^(?6))
Ploss2 = (I2^2) × R2

%primary wdg
I1 = S × 1000/V1
a1 = I1/del2
d1 = ((4 × a2/pi)^0.5) × 0.001
DIA = 2 × d1 + d
l1 = DIA × T1
R1 = ro × l1/(a1 × 10^?6)
Ploss1 = (I1^2) × R1
Pc = (Ploss1 + Ploss2) × 1.07 %total copper loss
Plosstot = Pc + losst
eff = 1?(Plosstot/(Plosstot + S × 1000))
x = (losst/Pc)^0.5
%Weight of transformer
weiron = we + weight
wecopper = (l1 × a1 + l2 × a2) × 8900 × (10^(?6))
wic = weiron + wecopper
copiro = weiron/wecopper
