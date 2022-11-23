clear all
close all
clc
fdir='C:/Users/annal/OneDrive/Desktop/UNIBO/NHWAVE/test_landslide/results/results/';

est_ini=574000;
nord_ini=505600;

x_land=581078.490;
y_land=5063591.557;

est_land=x_land-est_ini;
nord_land=y_land-nord_ini;

%%

e1=load([fdir 'probe_0001']);
e2=load([fdir 'probe_0002']);
e3=load([fdir 'probe_0003']);

% landslide parameter
b = 460; %thickness
u= 23; %velocity
a= 0.8; %initial acceleration
t0= u/a;

figure (1)
subplot(3,1,1)
plot((e1(:,1)/t0),e1(:,2)/b,'b-')
title("probe_1")
hold on
grid on
ylabel('\eta/b')

subplot(3,1,2)
plot((e2(:,1)/t0),e2(:,2)/b,'b-')
title("probe_2")
hold on
grid on
ylabel('\eta/b')

subplot(3,1,3)
plot((e3(:,1)/t0),e3(:,2)/b,'b-')
hold on
grid on
title("probe_3")
ylabel('\eta/b')
xlabel('t/t0')
