# Przeskalowany potencjał bistabilny: a=b=1
p = plot(0.25*x^4 - 0.5*x^2, (x,-1.6,1.6), figsize=(6,4), axes_labels=[r'$x$',r'$V(x)$'], color="blue")
p += text("$-x_s$",(-1,0.025),fontsize=16, color='black')
p += text("$x_s$",(1,0.025),fontsize=16, color='black')
p.show()

#parametry dla wizualizacji
var('x v')
x0 = 1.5
v0 = 0.2
E = 0.25*x0^4 - 0.5*x0^2 + v0^2
#
#prawo zachowania energii
V=0.25*x^4 - 0.5*x^2
PZE = v^2 + V == E
#
#wychylenia ekstremalne
print "ekstremalne wychylenia dla (x0,v0) = (%.2f,%.2f)"%(x0,v0)
rozw = solve(PZE(v=0), x); show(rozw)
xmin = min([i.rhs() for i in rozw if imag(i.rhs()) == 0])
xmax = max([i.rhs() for i in rozw if imag(i.rhs()) == 0])
#
#i jego rozwiązanie
print "ekstremalne prędkości dla (x0,v0) = (%.2f,%.2f)"%(x0,v0)
rozw = solve(PZE, v); show(rozw)
v1=rozw[0].rhs()
v2=rozw[1].rhs()
vmax = abs(v1(x=0))
#
#krzywe fazowe
start_point = (x0,V(x=x0))
p0 = point(start_point,size=30) + text(r"$  x_0$",start_point,vertical_alignment='bottom',horizontal_alignment='left')
p1 = plot(V,(x,xmin,xmax))
p21 = plot(v1, (x,xmin,xmax), color='red')
p22 = plot(v2, (x,xmin,xmax), color='green')
(p0+p1).show(figsize=4)
(p21+p22).show(figsize=4)


# wykresy dla przypadku z tłumieniem
var('x v')
x01, v01 = 1.50, 0
x02, v02 = 1.52, 0
#
# siła
F = x-x^3
V = -integrate(F,x)
#
# tarcie: parametr gamma
g = 0.1
#
# numeryczne rozwiazanie równań ruchu
T = srange(0,20*pi,0.01)
num1 = desolve_odeint(vector([v,F-g*v]), [x01,v01], T, [x,v])
num2 = desolve_odeint(vector([v,F-g*v]), [x02,v02], T, [x,v])
#
#krzywe fazowe
lt  = plot(V, (x, -max([abs(x01),abs(x02)]),max([abs(x01),abs(x02)])), color='black', figsize=4)
lt += point((x01,V(x=x01)), color='green', size=50, axes_labels=['$x$','$V(x)$'])
lt += point((x02,V(x=x02)), color='red', size=50)
lb  = list_plot(num1.tolist(), plotjoined=1, color='green', axes_labels=['$x(t)$','$v(t)$'])
lb += list_plot(num2.tolist(), plotjoined=1, color='red', figsize=4)
rt  = list_plot(zip(T,num1[:,0].tolist()), plotjoined=1, color='green', axes_labels=['$t$','$x(t)$'])
rt += list_plot(zip(T,num2[:,0].tolist()), plotjoined=1, color='red', figsize=4)
rb  = list_plot(zip(T,num1[:,1].tolist()), plotjoined=1, color='green', axes_labels=['$t$','$v(t)$'])
rb += list_plot(zip(T,num2[:,1].tolist()), plotjoined=1, color='red', figsize=4)
#
html("""
<p align='center'>rozwiązania z warunkami początkowymi
<span style="color:green">($x_{01},v_{01}$)=(%.2f,%.2f)</span>
<span style="color:red">($x_{02},v_{02}$)=(%.2f,%.2f)</span>
dążą do tego samego atraktora: 
(x,v)=(-1,0)
</p>
"""%(x01,v01,x02,v02))
html.table([[lt,rt],[lb,rb]])



# wykresy dla przypadku z tłumieniem
var('x v')
x01, v01 = 1.58, 0
x02, v02 = 1.57, 0
#
# siła
F = x-x^3
V = -integrate(F,x)
#
# tarcie: parametr gamma
g = 0.1
#
# numeryczne rozwiazanie równań ruchu
T = srange(0,20*pi,0.01)
num1 = desolve_odeint(vector([v,F-g*v]), [x01,v01], T, [x,v])
num2 = desolve_odeint(vector([v,F-g*v]), [x02,v02], T, [x,v])
#
# wykresy funkcji
lt  = plot(V, (x, -max([abs(x01),abs(x02)]),max([abs(x01),abs(x02)])),color='black',  figsize=4)
lt += point((x01,V(x=x01)), color='blue', size=50, axes_labels=['$x$','$V(x)$'])
lt += point((x02,V(x=x02)), color='red', size=50)
lb  = list_plot(num1.tolist(), plotjoined=1, color='blue', axes_labels=['$x(t)$','$v(t)$'])
lb += list_plot(num2.tolist(), plotjoined=1, color='red', figsize=4)
rt  = list_plot(zip(T,num1[:,0].tolist()), plotjoined=1, color='blue', axes_labels=['$t$','$x(t)$'])
rt += list_plot(zip(T,num2[:,0].tolist()), plotjoined=1, color='red', figsize=4)
rb  = list_plot(zip(T,num1[:,1].tolist()), plotjoined=1, color='blue', axes_labels=['$t$','$v(t)$'])
rb += list_plot(zip(T,num2[:,1].tolist()), plotjoined=1, color='red', figsize=4)
#
html("""
<p align='center'>rozwiązania z warunkami początkowymi
<span style="color:blue">($x_{01},v_{01}$)=(%.2f,%.2f)</span>
<span style="color:red">($x_{02},v_{02}$)=(%.2f,%.2f)</span>
dążą do różnych atraktorów: 
<span style="color:blue">(x,v)=(1,0)</span>
<span style="color:red">(x,v)=(-1,0)</span>
</p>
"""%(x01,v01,x02,v02))
html.table([[lt,rt],[lb,rb]])


# przykładowa trajektoria  (górny wykres)
# wraz z krzywą fazową (dolny wykres)
var('x y z')
T = srange(0,150*pi,0.01)
sol=desolve_odeint( vector([y,x-x^3-0.26*y+0.3*cos(z), 1]), [0.1,0.1,0],T,[x,y,z])
t = line(zip(T,sol[:,0]), figsize=(12,4), axes_labels=["$t$","$x(t)$"], frame=1, axes=0)
b = line(zip(sol[:,0],sol[:,1]), figsize=(12,4), axes_labels=["$x(t)$","$v(t)$"], frame=1, axes=0)
html.table([[t],[b]])



# wykresy dla przypadku z tłumieniem
var('x y z')
x0, y0, z0 = 0.1,0.1,0
kolor = 'green'
#
# siła
F = x-x^3
V = -integrate(F,x)
#
# tarcie: parametr gamma
g = 0.1
A = 0.3
w = 1
#
# układ różniczkowych równań ruchu
dx = y
dy = F - g*y + A*cos(z)
dz = w
#
# numeryczne rozwiazanie równań ruchu
T = srange(0,30*pi,0.01)
num = desolve_odeint(vector([dx,dy,dz]), [x0,y0,z0], T, [x,y,z])
#
# wykresy funkcji
xmin = 1.5
lt  = plot(V, (x,-xmin,xmin), figsize=4)
lt += point((x0,V(x=x0)), color=kolor, size=50, axes_labels=['$x$','$V(x)$'])
lb  = list_plot(zip(num[:,0],num[:,1]), plotjoined=1, color=kolor, axes_labels=['$x(t)$','$v(t)$'], figsize=4)
rt  = list_plot(zip(T,num[:,0].tolist()), plotjoined=1, color=kolor, axes_labels=['$t$','$x(t)$'], figsize=4)
rb  = list_plot(zip(T,num[:,1].tolist()), plotjoined=1, color=kolor, axes_labels=['$t$','$v(t)$'], figsize=4)
#
html("""Układ równań różniczkowych
$\dot{x} = %s$
$\dot{y} = %s$
$\dot{z} = %s$
z warunkami początkowymi
$(x_0,y_0,z_0) = (%.2f,%.2f,%.2f)$
"""%(dx,dy,dz,x0,y0,z0))
html.table([[lt,rt],[lb,rb]])



reset()
# wykresy dla przypadku z tłumieniem
var('x y z')
x01, y01, z01 = 0.1,0.1,0
x02, y02, z02 = 0.11,0.1,0
#
# siła
F = x-x^3
V = -integrate(F,x)
#
# tarcie: parametr gamma
g = 0.1
A = 0.3
w = 1
#
# układ różniczkowych równań ruchu
dx = y
dy = F - g*y + A*cos(z)
dz = w
#
# numeryczne rozwiazanie równań ruchu
T = srange(0,200*pi,0.01)
num1 = desolve_odeint(vector([dx,dy,dz]), [x01,y01,z01], T, [x,y,z])
num2 = desolve_odeint(vector([dx,dy,dz]), [x02,y02,z02], T, [x,y,z])
#
lnum = int(len(num1[:,0])/10)
trans1 = num1[:lnum]
asymp1 = num1[-lnum:]
trans2 = num2[:lnum]
asymp2 = num2[-lnum:]
#
# wykresy funkcji
lt = list_plot(zip(trans1[:,0],trans1[:,1]), plotjoined=1, color='green', axes_labels=['$x(t)$','$v(t)$'], figsize=4)
lt += list_plot(zip(trans2[:,0],trans2[:,1]), plotjoined=1, color='red')
rt = list_plot(zip(T[:lnum],trans1[:,0].tolist()), plotjoined=1, color='green', axes_labels=['$t$','$x(t)$'], figsize=4)
rt += list_plot(zip(T[:lnum],trans2[:,0].tolist()), plotjoined=1, color='red')
lb = list_plot(zip(asymp1[:,0],asymp1[:,1]), plotjoined=1, color='green', axes_labels=['$x(t)$','$v(t)$'], figsize=4)
lb += list_plot(zip(asymp2[:,0],asymp2[:,1]), plotjoined=0, color='red')
rb = list_plot(zip(T[-lnum:],asymp1[:,0].tolist()), plotjoined=1, color='green', axes_labels=['$t$','$x(t)$'], figsize=4)
rb += list_plot(zip(T[-lnum:],asymp2[:,0].tolist()), plotjoined=1, color='red')
#
html("""Układ równań różniczkowych
$\dot{x} = %s$
$\dot{y} = %s$
$\dot{z} = %s$
z różnymi warunkami początkowymi
<span style="color:green;">$(x_{01},y_{01},z_{01}) = (%.2f,%.2f,%.2f)$</span>
<span style="color:red;">$(x_{02},y_{02},z_{02}) = (%.2f,%.2f,%.2f)$</span>
"""%(dx,dy,dz,x01,y01,z01,x02,y02,z02))
html.table([[lt,rt],[lb,rb]])



# wykresy dla przypadku z tłumieniem
var('x y z')
x0, y0, z0 = 0.1,0.1,0
kolor = 'red'
#
# siła
F = x-x^3
V = -integrate(F,x)
#
# tarcie: parametr gamma
g = 0.22
A = 0.3
w = 1
#
# układ różniczkowych równań ruchu
dx = y
dy = F - g*y + A*cos(z)
dz = w
#
# numeryczne rozwiazanie równań ruchu
T = srange(0,20*pi,0.01)
num = desolve_odeint(vector([dx,dy,dz]), [x0,y0,z0], T, [x,y,z])
#
# wykresy funkcji
xmin = 1.5
lt  = plot(V, (x,-xmin,xmin), figsize=4)
lt += point((x0,V(x=x0)), color=kolor, size=50, axes_labels=['$x$','$V(x)$'])
lb  = list_plot(zip(num[:,0],num[:,1]), plotjoined=1, color=kolor, axes_labels=['$x(t)$','$v(t)$'], figsize=4)
rt  = list_plot(zip(T,num[:,0].tolist()), plotjoined=1, color=kolor, axes_labels=['$t$','$x(t)$'], figsize=4)
rb  = list_plot(zip(T,num[:,1].tolist()), plotjoined=1, color=kolor, axes_labels=['$t$','$v(t)$'], figsize=4)
#
html("""Układ równań różniczkowych
$\dot{x} = %s$
$\dot{y} = %s$
$\dot{z} = %s$
z warunkami początkowymi
$(x_0,y_0,z_0) = (%.2f,%.2f,%.2f)$
"""%(dx,dy,dz,x0,y0,z0))
html.table([[lt,rt],[lb,rb]])



reset()
# wykresy dla przypadku z tłumieniem
var('x y z')
x01, y01, z01 = 0.10,0.1,0
x02, y02, z02 = 0.11,0.1,0
#
# siła
F = x-x^3
V = -integrate(F,x)
#
# tarcie: parametr gamma
g = 0.22
A = 0.3
w = 1
#
# układ różniczkowych równań ruchu
dx = y
dy = F - g*y + A*cos(z)
dz = w
#
# numeryczne rozwiazanie równań ruchu
T = srange(0,200*pi,0.01)
num1 = desolve_odeint(vector([dx,dy,dz]), [x01,y01,z01], T, [x,y,z])
num2 = desolve_odeint(vector([dx,dy,dz]), [x02,y02,z02], T, [x,y,z])
#
lnum = int(len(num1[:,0])/10)
trans1 = num1[:lnum]
asymp1 = num1[-lnum:]
trans2 = num2[:lnum]
asymp2 = num2[-lnum:]
#
# wykresy funkcji
lt = list_plot(zip(trans1[:,0],trans1[:,1]), plotjoined=1, color='green', axes_labels=['$x(t)$','$v(t)$'], figsize=4)
lt += list_plot(zip(trans2[:,0],trans2[:,1]), plotjoined=1, color='red')
rt = list_plot(zip(T[:lnum],trans1[:,0].tolist()), plotjoined=1, color='green', axes_labels=['$t$','$x(t)$'], figsize=4)
rt += list_plot(zip(T[:lnum],trans2[:,0].tolist()), plotjoined=1, color='red')
lb = list_plot(zip(asymp1[:,0],asymp1[:,1]), plotjoined=1, color='green', axes_labels=['$x(t)$','$v(t)$'], figsize=4)
lb += list_plot(zip(asymp2[:,0],asymp2[:,1]), plotjoined=0, color='red')
rb = list_plot(zip(T[-lnum:],asymp1[:,0].tolist()), plotjoined=1, color='green', axes_labels=['$t$','$x(t)$'], figsize=4)
rb += list_plot(zip(T[-lnum:],asymp2[:,0].tolist()), plotjoined=1, color='red')
#
html("""Układ równań różniczkowych
$\dot{x} = %s$
$\dot{y} = %s$
$\dot{z} = %s$
z różnymi warunkami początkowymi
<span style="color:green;">$(x_{01},y_{01},z_{01}) = (%.2f,%.2f,%.2f)$</span>
<span style="color:red;">$(x_{02},y_{02},z_{02}) = (%.2f,%.2f,%.2f)$</span>
"""%(dx,dy,dz,x01,y01,z01,x02,y02,z02))
html.table([[lt,rt],[lb,rb]])



# wykresy dla przypadku z tłumieniem
var('x y z')
x0, y0, z0 = 0.1,0.1,0
kolor = 'firebrick'
#
# siła
F = x-x^3
V = -integrate(F,x)
#
# tarcie: parametr gamma
g = 0.25
A = 0.3
w = 1
#
# układ różniczkowych równań ruchu
dx = y
dy = F - g*y + A*cos(z)
dz = w
#
# numeryczne rozwiazanie równań ruchu
T = srange(0,50*pi,0.01)
num = desolve_odeint(vector([dx,dy,dz]), [x0,y0,z0], T, [x,y,z])
#
# wykresy funkcji
xmin = 1.5
lt  = plot(V, (x,-xmin,xmin), figsize=4)
lt += point((x0,V(x=x0)), color=kolor, size=50, axes_labels=['$x$','$V(x)$'])
lb  = list_plot(zip(num[:,0],num[:,1]), plotjoined=1, color=kolor, axes_labels=['$x(t)$','$v(t)$'], figsize=4)
rt  = list_plot(zip(T,num[:,0].tolist()), plotjoined=1, color=kolor, axes_labels=['$t$','$x(t)$'], figsize=4)
rb  = list_plot(zip(T,num[:,1].tolist()), plotjoined=1, color=kolor, axes_labels=['$t$','$v(t)$'], figsize=4)
#
html("""Układ równań różniczkowych
$\dot{x} = %s$
$\dot{y} = %s$
$\dot{z} = %s$
z warunkami początkowymi
$(x_0,y_0,z_0) = (%.2f,%.2f,%.2f)$
"""%(dx,dy,dz,x0,y0,z0))
html.table([[lt,rt],[lb,rb]])



reset()
# wykresy dla przypadku z tłumieniem
var('x y z')
x01, y01, z01 = 0.1,0.1,0
x02, y02, z02 = 0.11,0.1,0
#
# siła
F = x-x^3
V = -integrate(F,x)
#
# tarcie: parametr gamma
g = 0.25
A = 0.3
w = 1
#
# układ różniczkowych równań ruchu
dx = y
dy = F - g*y + A*cos(z)
dz = w
#
# numeryczne rozwiazanie równań ruchu
T = srange(0,200*pi,0.01)
num1 = desolve_odeint(vector([dx,dy,dz]), [x01,y01,z01], T, [x,y,z])
num2 = desolve_odeint(vector([dx,dy,dz]), [x02,y02,z02], T, [x,y,z])
#
lnum = int(len(num1[:,0])/10)
trans1 = num1[:lnum]
asymp1 = num1[-lnum:]
trans2 = num2[:lnum]
asymp2 = num2[-lnum:]
#
# wykresy funkcji
lt = list_plot(zip(trans1[:,0],trans1[:,1]), plotjoined=1, color='green', axes_labels=['$x(t)$','$v(t)$'], figsize=4)
lt += list_plot(zip(trans2[:,0],trans2[:,1]), plotjoined=1, color='red')
rt = list_plot(zip(T[:lnum],trans1[:,0].tolist()), plotjoined=1, color='green', axes_labels=['$t$','$x(t)$'], figsize=4)
rt += list_plot(zip(T[:lnum],trans2[:,0].tolist()), plotjoined=1, color='red')
lb = list_plot(zip(asymp1[:,0],asymp1[:,1]), plotjoined=1, color='green', axes_labels=['$x(t)$','$v(t)$'], figsize=4)
lb += list_plot(zip(asymp2[:,0],asymp2[:,1]), plotjoined=1, color='red')
rb = list_plot(zip(T[-lnum:],asymp1[:,0].tolist()), plotjoined=1, color='green', axes_labels=['$t$','$x(t)$'], figsize=4)
rb += list_plot(zip(T[-lnum:],asymp2[:,0].tolist()), plotjoined=1, color='red')
#
html("""Układ równań różniczkowych
$\dot{x} = %s$
$\dot{y} = %s$
$\dot{z} = %s$
z różnymi warunkami początkowymi
<span style="color:green;">$(x_{01},y_{01},z_{01}) = (%.2f,%.2f,%.2f)$</span>
<span style="color:red;">$(x_{02},y_{02},z_{02}) = (%.2f,%.2f,%.2f)$</span>
"""%(dx,dy,dz,x01,y01,z01,x02,y02,z02))
html.table([[lt,rt],[lb,rb]])





