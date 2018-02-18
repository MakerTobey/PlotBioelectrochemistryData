%%% MAIN replot

load LightOff05Plain
load LightOff05Film
load LightOff05Scaffold

X = LightOff05Scaffold.data(:,1);
Units = LightOff05Scaffold.units;

%% plot CV cuves
%%% vs AgCl

% dark
Filename = 'Scaffold Dark CV0,5_AgCl';
ylimit = [-14 8];
xlimit = [-0.3 0.41];
PlotCVtypesAgCl(ylimit, xlimit, X, LightOff05Plain.data(:,2)*10, LightOff05Film.data(:,2),  LightOff05Scaffold.data(:,2),  Units, Filename);
