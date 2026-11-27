
% Constants of the Halleys Comet

comet_a = 17.834;
comet_e = 0.96714;
comet_T = 75.32;

%1

g = @(E,e,M) E - e*(sin(E)) - M;

