clear all;
clc;
%Given Data
v1=1;
s2=0.62-0.2i;
s3=0.4+0.3i;
%initial guess
v2=1;
v3=1;
for m=1:25
  v2=(conj(s2)/conj(v2)+10i*v2+5i*v3)/15i;
  v3=(conj(s3)/conj(v3)+5i*v2)/5i;
  disp([v2 v3]')
  disp('')
end
[abs(v2) angle(v2) *180/pi]
[abs(v2) angle(v2) *180/pi]
