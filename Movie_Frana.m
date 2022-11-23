clear all
close all
clc

est_ini=574000;
nord_ini=5056000;

x_land=581078;
y_land=5063592;

est_land=x_land-est_ini;
nord_land=y_land-nord_ini;

% fdir=['C:/Users/annal/OneDrive/Desktop/UNIBO/NHWAVE/']; %test_landslide/results/'];
fdir='C:/Users/annal/OneDrive/Desktop/UNIBO/NHWAVE/test_landslide/results_rigid/';
dep=load([fdir 'depth_00001']);

[n m]=size(dep);
dx=20;
dy=20;
x=[0:m-1]*dx;
y=[0:n-1]*dy;

position=dep(round(nord_land/dy),round(est_land/dx));

nfile=0:1:24;
sec=nfile;

wid=10;
len=7;
set(gcf,'units','inches','paperunits', 'inches', 'papersize',[wid len], 'position',[0.8 0.5 wid len])
clf

vidObj=VideoWriter('prova_2_movie.avi');
vidObj.FrameRate=12;

open(vidObj);

for num=1:length(nfile)

     fnum=sprintf('_%0.5d',num);
     eta=importdata([fdir 'depth' fnum]);

 surf(x,y,eta,'EdgeColor', "w",'FaceAlpha',0.6,'FaceLighting','gouraud','LineStyle',':', 'FaceColor','texturemap')
 hold on; 
 plot3(x(round(est_land/dx)),y(round(nord_land/dy)),position,'o','markerfacecolor','r')
 
    title ([' Time = ' num2str(sec(num)) ' sec '])
    xlabel(' x(m) ')
    ylabel(' y(m) ')
    zlabel(' z(m) ')

    xlim([6000 8000])
    ylim([6500 8500])
    zlim([0 800])
    
    set(gcf, 'Render', 'zbuffer');

    v = [10 -8 5];
    [caz,cel] = view(v);

    f=getframe(gcf);
    writeVideo(vidObj, f);
end

close(vidObj)

