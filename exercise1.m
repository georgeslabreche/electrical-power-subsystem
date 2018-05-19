clearvars
clc

% Solar constant.
S = 1423; % W/m^2

% Cyclic variation factor.
Fc = 0.97; % When Earth's position from periphelion is 180 degrees.

% Secular degradation.
Fs = 0.7 + 0.3 * exp(-5 * 365 / 1000); % For t = 5 years.

% Solar cell efficiency (Assumption).
n = 0.28;

% Maximum sun angle incidence for near-Earth mission.
% phi = ?

% Maximum power required (during sunlight)
p_max = 330; % Watt

%---------------------%
% 4. Solar Array Area %
%---------------------%
% 1.4 What is the required area of the solar arrays? 
A = p_max / (S * n * Fs * Fc * cos(phi_s));

%-----------------%
% 6. Battery Mass %
%-----------------%
% Battery is needed during eclipse.
% Power required in eclipse.
Pe = 100; % Watt

% Time in eclipse is 22 minutes.
t_eclipse = 22 / 60; % hours.

% Depth of charge.
dod = 0.20; % percent.

% Energy Yields for Ni-H2, Li-Ion, and Ni-Cd.
u_nih2 = 60; % Wh/kg
u_liion = 120; % Wh/kg
u_nicd = 40; % Wh/kg

% Calculate battery masses in kg.
% Ni-H2
m_nih2 = (Pe * t_eclipse) / (u_nih2 * dod)

% Li-Ion
m_liion = (Pe * t_eclipse) / (u_liion * dod)

% Ni-Cd
m_nicd = (Pe * t_eclipse) / (u_nicd * dod)