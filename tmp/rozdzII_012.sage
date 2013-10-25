# wykresy dla przypadku z tłumieniem
var('x y z')
x0, y0, z0 = -0.5,-0.1,0
kolor = 'green'
# siła
F = x-x^3
V = -integrate(F,x)
# tarcie: parametr gamma
g = 0.5
w = 1
#punkty bifurkacji: 0.34357;  0.35506; 0.35785; 0.35846;  ostatni 0.3586
Akeys = ['$a_1$','$a_2$','$a_3$','$a_4$']
Aval  = [0.325,0.354,0.357,0.358]
A = dict(zip(Akeys,Aval))
p = A
for a in A.keys():
    # układ różniczkowych równań ruchu
    dx = y
    dy = F - g*y + A[a]*cos(z)
    dz = w
    # numeryczne rozwiazanie równań ruchu
    T = srange(0,100*pi,0.01)
    num = desolve_odeint(vector([dx,dy,dz]), [x0,y0,z0], T, [x,y,z])
    figsize = [12,3] if a == '$a_4$' else 3.5
    start, stop = int(len(num[:,0])*0.8), len(num[:,0])
    p[a] = list_plot(zip(num[:,0][start:stop],num[:,1][start:stop]), plotjoined=1,\
    color=kolor, axes_labels=['$x(t)$','$v(t)$'], legend_label='%s=%.5f'%(a,A[a]), figsize=figsize)
#
html("""Układ równań różniczkowych
$\dot{x} = %s$
$\dot{y} = %s$
$\dot{z} = %s$
z warunkami początkowymi
$(x_0,y_0,z_0) = (%.2f,%.2f,%.2f)$
"""%(dx,dy,dz,x0,y0,z0))
html.table([[p['$a_1$'],p['$a_2$'],p['$a_3$']]])
p['$a_4$'].show()



var('x y z')
# parametry układu równań różniczkowych
a, g = 0.3, 0.26
# częstotliwość (do obliczania cięcia Poincarego)
w0 = 1
# wartości początkowe
x0, y0, z0 = 0.1, 0.1, 0
#układ równań różniczkowych
dx = y
dy = x - x**3 - g*y + a*cos(z)
dz = w0
#krok co jaki wypełniać się ma nasza lista 
#rozwiązań ustawiamy równy okresowi
h = 2.0*pi/w0
###
#symulacje
###
T = 10000
listT = srange(0,T,float(h), include_endpoint=True)
sol = desolve_odeint(vector([dx, dy, dz]), [x0, y0, z0], listT, [x,y,z])
#i sam rysunek cięcia
points(zip(sol[:,0],sol[:,1]), figsize=(8,4), axes_labels=["$x(n\cdot2 \pi/\omega)$","$v(n\cdot2 \pi/\omega)$"], frame=1, axes=0, size=1)





