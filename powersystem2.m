clear all; 
clc;
disp('NR method for 3bus system');
%defining the ybus elements
Y11=7.5; Y12=2.5; Y13=5;
Y21=2.5; Y22=5.8; Y23=3.33;
Y31=5; Y32=3.33; Y33=8.33;
t11=-pi/2; t12=pi/2; t13=pi/2;
t21=pi/2; t22=-pi/2; t23=pi/2;
t31=pi/2; t32=pi/2; t33=-pi/2;
%defining the known states
d1=0; v1=1.0; v3=1.01;
%Defining the power injections
p2=-0.9; q2=-0.5; p3=0.6;
%Defining the initial valuses of inkown
d2=0; d3=0; v2=1.0;
X=[d2;d3;v2];
disp(X');
for m=1:10;
  fp2=Y21*v1*v2*cos(t21+d1-d2)+Y22*v2*v2*cos(t22)+Y23*v2*v3*cos(t23+d3-d2)-p2;
  fp3=Y31*v1*v3*cos(t31+d1-d3)+Y32*v2*v3*cos(t22+d2-d3)+Y33*v3*v3*cos(t33)-p3;
  fq2=-Y21*v2*v1*sin(t21+d1-d2)+Y22*v2*v2*sin(t22)+Y23*V3*v2*sin(t23+d3-d2)-q2;
  fX=[fp2;fp3;fq2];
  
  J11=Y21*v1*v2*sin(t21+d1-d2)+Y23*V2*v3*sin(t23+d3-d2);
  J12=-Y23*v3*v2*sin(t23+d3-d2);
  J13=Y21*v1*cos(t21+d1-d2)+2*Y22*v2*cos(t22)+Y23*v3*cos(t23+d3-d2);
  
  J21=-Y32*v2*v3*sin(t23+d2-d3);
  J22=Y31*v1*v3*sin(t31+d1-d3)+Y32*v2*v3*sin(t32+d2-d3);
  J23=Y23*v3*cos(t32+d2-d3);
  
  J31=Y21*v1*v2*cos(t21+d1-d2)+Y23*v3*v2*cos(t23+d3-d1);
  J32=-Y23*v3*v2*cos(t23+d3-d2);
  J33=-Y21*v1*sin(t21+d1-d2)-2*Y22*v2*sin(t22)-Y23*v3*sin(t23+d3-d2);
  
  J=[J11 J12 J13; J21 J22 J23; J31 J32 J33];
  X=X-J\fX;
  d2=X(1); d2=X(2); v2=X(3);
  disp(X);
  disp(' ')
end
dsip('v2');
disp(X(3));
disp('delta2')
disp(X(1)*180/pi)
disp('delta3')
disp(X(2))*180/pi)
%adding for git experiments purpose
