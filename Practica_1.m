% Parametros
Ip = 0.0079;  % Pendulum Moment of Inertia (kg*m^2)
Mc = 0.7031;  % Lumped Mass of the cart system (kg)
Lp = 0.3302;  % Distance from Pivot to Center of Gravity (m)
Mp = 0.23;    % Pendulum Mass with Fitting (kg)
g = 9.81;     % Gravitational Constant (m/s^2)
Bp = 0.0024;  % Viscous Damping Coefficient at Pendulum Axis (Nms/rad)
Beq = 4.3;
M = Mc + Mp;
alpha0 = deg2rad(1);

%Ganancias
A = (Ip + (Mp * Lp^2)) * Beq;
B = (Mp^2) * (Lp^2) * g;
C = (Ip * Mp * Lp) - ((Mp^2) * (Lp^3));
D = Mp * Lp * Bp;
E = M * Mp * Lp * g;
F = M * Bp;
G = Mp^2 * Lp^2;
H = Beq * Mp * Lp;

Den = (M * Ip) + (Mc * Mp * (Lp^2));
I = (Mp^2) * (Lp^2);

sim("Simulink_Parctica_1.slx")