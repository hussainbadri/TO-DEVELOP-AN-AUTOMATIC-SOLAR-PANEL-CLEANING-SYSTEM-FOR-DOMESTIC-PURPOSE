clc
clear all
close all
l1=1000;
l2=1061.86;
M=-232.5:155:232.5;
N=232.5:-155:-232.5;
O=0:-1960/12:-1960;
xf=[M,N,M,N,M,N,M,N,M,N,M,N,M];
yf=[repelem(O(1),4) repelem(O(2),4) repelem(O(3),4)...
    repelem(O(4),4) repelem(O(5),4) repelem(O(6),4)...
    repelem(O(7),4) repelem(O(8),4) repelem(O(9),4) repelem(O(10),4)...
    repelem(O(11),4) repelem(O(12),4) repelem(O(13),4)]; 
for i=1:52
    th2(i)=2*(atan(sqrt(abs((((l1+l2)^2)-((xf(i)^2)+(yf(i)^2)))/(((xf(i)^2)+(yf(i)^2))-((l1-l2)^2))))));
    th1(i)=(atan(yf(i)/xf(i)))-atan((l2*sin(th2(i)))/(l1+l2*cos(th2(i))));
    xi(i)=l1*cos(th1(i));
    yi(i)=l1*sin(th1(i));
    Xf(i)=l1*cos(th1(i))+l2*cos(th2(i)+th1(i));
    Yf(i)=l1*sin(th1(i))+l2*sin(th2(i)+th1(i));
    line([0 xi(i)],[0 yi(i)]);
    line([xi(i) Xf(i)],[yi(i) Yf(i)]);
    pause(2)
    hold on
    th1(i)=th1(i)*(180/pi);
    th2(i)=th2(i)*(180/pi);
end
plot(xf,yf)
hold on
grid on
