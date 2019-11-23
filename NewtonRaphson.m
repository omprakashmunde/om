clear all;
clc;
disp('NR Load for 3 bus systems:');
%Defining the Ybus elements
Y11=14; Y13=10; Y13=-4;
Y21=10; Y22=15; Y23=5;
Y31=4; Y32=5; Y33=5;
t11=-pi/2; t12=pi/2; t13=pi/2;
t21=pi/2; t22=-pi/2; t23=pi/2;
t31=pi/2; t32=pi/2; t33=-pi/2;
%Defining the known states
d1=0; v1=1; v3=1.01;
%Defining the Power injections
p2=-0.9; q2=-0.5; p3=1.3-0.7;
%Defining the initial values of unknowns
d2=0; d3=0; v2=1.0;
X=[d2; d3; v2];
disp(X')
for o=1:10
  fp2=Y21*v1*v2*cos(t21+d1-d2)+Y22*v2*v2*cos(t22)+Y23*v3*v2*cos(t23+d3-d2)-p2;
  fp3=Y31*v1*v3*cos(t31+d1-d3)+Y32*v2*v3*cos(t32+d2-d3)+Y33*v2*v2cos(t33)-p3;
  fq2=-Y21*v1*v3*sin(t21+d1-d2)-Y22*v2*v2*sin(t22)-Y23*v3*v2*sin(t23+d3-d2)-q2;
  
  fX=[fp2; fp3; fq2];
  
  J11=
  
  
  
  
  
  
  end
