close all
clear all
clc
run mid_angles.m
clf
l1=1000;
l2=1061;
for i=1:39
    xi(i)=l1*cosd(H1(i,2)+90);
    yi(i)=l1*sind(H1(i,2)+90);
    Xf(i)=l1*cosd(H1(i,2)+90)+l2*cosd(180-H2(i,2)+H1(i,2)+90);
    Yf(i)=l1*sind(H1(i,2)+90)+l2*sind(180-H2(i,2)+H1(i,2)+90);
    line([0 xi(i)],[0 yi(i)],'color','g','LineWidth',3)
    hold on
    line([xi(i) Xf(i)],[yi(i) Yf(i)],'color','b','LineWidth',3);
    hold on 
    xlim([-1300 1300])
    ylim([-600 2100])
    plot(Xf,Yf,'-o','MarkerSize',22.5,...
    'MarkerEdgeColor','red',...
    'MarkerFaceColor',[1 .6 .6])
    grid on
    pause(0.5)
    clf
    
%     hold on
%     th1(i)=th1(i)*(180/pi);
%     th2(i)=th2(i)*(180/pi);
end
