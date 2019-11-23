clear all
va = 80
vb = 80*exp(i*-120/180*pi)
vc = 80*exp(i*-240/180*pi)
za = 5
zb = 2-3i
zc = 4+3i
Ia = va/za
Ib = vb/zb
Ic = vc/zc
In = Ia+Ib+Ic
[abs(Ia) angle(Ia)*180/pi]
[abs(Ib) angle(Ib)*180/pi]
[abs(Ic) angle(Ic)*180/pi]
[abs(In) angle(In)*180/pi]
sa = Ia*za*conj(Ia)
sb = Ib*zb*conj(Ib)
sc = Ic*zc*conj(Ic)
st = sa+sb+sc