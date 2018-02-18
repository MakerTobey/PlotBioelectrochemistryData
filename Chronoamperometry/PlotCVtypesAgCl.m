function PlotCVtypesAgCl(ylimit,xlimit,Datax,Data1,Data2,Data3,Units,Filename)
%%% make plot

% plot axis
FontSize = 12;
Xlabel = ['Voltage in ' char(Units(1)) ' vs. Ag/AgCl'];
Ylabel = ['Current in ' char(Units(2))];
Titel = [];%'Cyclic voltammetry data vs AgCl';

X = Datax;% +0.210 ; %Silver chloride electrode (E=+0.210V 3molar, with respect to the standard hydrogen electrode)

%plot
figure
plot(X,Data1,...
    X,Data2,...
    X,Data3,'LineWidth',1.5);

% set(gca,'XLim',[0 length(L)]);
set(gca,'YLim',ylimit,'XLim',xlimit);
% set(gca,'XTick',0:4:24); Voltage 0.5 1-1 1-2 5 10 50 100
legend('Non-porous *10','Nanoporous','Microporous anode','Location','southeast');%,'Box','off');

title(Titel,'FontSize',FontSize); xlabel(Xlabel,'FontSize',FontSize); ylabel(Ylabel,'FontSize',FontSize);

saveas(gca,Filename,'jpg');

end