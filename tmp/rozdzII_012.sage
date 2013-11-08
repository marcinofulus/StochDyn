# wykresy dla przypadku z tłumieniem
var('x y z')
x0, y0, z0 = -0.5,-0.1,0
kolor = ['blue','red','green','black','orange']
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
j=0
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
    p[a] = list_plot(zip(num[:,0][start:stop],num[:,1][start:stop]), plotjoined=1, color=kolor[j], axes_labels=['$x(t)$','$v(t)$'], legend_label='%s=%.5f'%(a,A[a]), figsize=figsize)
    j+=1
html("""Układ równań różniczkowych
$\dot{x} = %s$
$\dot{y} = %s$
$\dot{z} = %s$
z warunkami początkowymi
$(x_0,y_0,z_0) = (%.2f,%.2f,%.2f)$
"""%(dx,dy,dz,x0,y0,z0))
html.table([[p['$a_1$'],p['$a_2$'],p['$a_3$']]])
p['$a_4$'].show()
#
PunktyBifurkacji = [0.34357,0.35506,0.35785,0.35846]
i = 2
delta_2 = (PunktyBifurkacji[i-1] - PunktyBifurkacji[i-2])/(PunktyBifurkacji[i] - PunktyBifurkacji[i-1])
i = 3
delta_3 = (PunktyBifurkacji[i-1] - PunktyBifurkacji[i-2])/(PunktyBifurkacji[i] - PunktyBifurkacji[i-1])
html.table([['$\delta_2$',delta_2],['$\delta_3$',delta_3],['$\dots$',''],['$\lim_{n \to \infty} \delta_n$',4.6692]])




var('x y z')
g, w0 = 0.5, 1
x0, y0, z0 = 0.1, 0.1, 0
Aval = [0.325,0.354,0.357,0.358,0.4]
kolor = ['blue','red','green','black','orange']
p = []
j = 0
for a in Aval:
    dx = y
    dy = x - x**3 - g*y + a*cos(z)
    dz = w0
    h = 0.1
    T = 1100
    skip = 100
    iskip = int(skip/h)
    listT = srange(0,T,h, include_endpoint=0)
    num = desolve_odeint(vector([dx, dy, dz]), [x0, y0, z0], listT, [x,y,z])        
    iks = num[:,0].tolist()[iskip:]
    freq = [i/(T-skip) for i in range(len(iks)/2)] +\
           [-len(iks)/(T-skip) + i/(T-skip) for i in range(len(iks)/2,len(iks))]
    freq = [f*2.*n(pi)/w0 for f in freq]
    vx = vector(iks)
    A = vx.fft().apply_map(lambda x:x.abs2())
    p.append(list_plot(zip(freq,A.apply_map(lambda x:x.log())),plotjoined=1, color=kolor[j], legend_label=r"$a = %.3f$"%a,figsize=[10,3]))
    j += 1
#
xx = 1.1
sum(p).show(figsize=[10,3],xmin=-xx,xmax=xx,axes_labels=[r'$k 2 \pi/\omega$',r'$A_k$'])
for _p in p:
    show(_p,xmin=0,xmax=xx,axes_labels=[r'$k 2 \pi/\omega$',r'$A_k$'])





# samodzielna definicja
def korelator(dane, tau=0):
    ret = None
    if tau == 0:
        return 1
    else:
        # funkcja autokorelacji jest symetryczna
        tau = abs(tau)
        # odjęcie średniej
        m = mean(dane)
        dane = [dane[i] - m for i in xrange(len(dane))]
        v = vector(dane)    
        sigma = v.dot_product(v)
        if tau < len(dane):
            ret = v[:-tau].dot_product(v[tau:])
        ret /= sigma
    return ret



var('x y z')
a, g, w0 = 0.3, 0.26, 1
x0, y0, z0 = 0.1, 0.1, 0
dx = y
dy = x - x**3 - g*y + a*cos(z)
dz = w0
h = 0.1
T = 1000
listT = srange(0,T,float(h), include_endpoint=True)
num = desolve_odeint(vector([dx, dy, dz]), [x0, y0, z0], listT, [x,y,z])
#x
dane = num[:,0].tolist()
# nasz korelator
my_acorr = [korelator(dane,i*10) for i in range(33)]
# funkcja SAGE
v = finance.TimeSeries(dane)
sage_acorr = [v.autocorrelation(i*10) for i in range(33)]
(list_plot(my_acorr, plotjoined=1) + list_plot(sage_acorr, plotjoined=0, size=30, color='red')).show(figsize=[8,3], axes_labels=[r"$\tau$",r"$C(\tau)$"])





var('x y z')
g, w0 = 0.5, 1
x0, y0, z0 = 0.1, 0.1, 0
Aval = [0.325,0.354,0.357,0.358,0.4]
p, ps = [], []
kolor = ['blue','red','green','black','orange']
j = 0
for a in Aval:
    dx = y
    dy = x - x**3 - g*y + a*cos(z)
    dz = w0
    h = 0.1
    T = 2000
    listT = srange(0,T,h, include_endpoint=True)
    num = desolve_odeint(vector([dx, dy, dz]), [x0, y0, z0], listT, [x,y,z])
    d = (num[:,0]-mean(num[:,0])).tolist()
    v = finance.TimeSeries(d)
    kor = [v.autocorrelation(i*5) for i in range(len(d)/5)]
    p.append(list_plot(kor, plotjoined=1, color=kolor[j], legend_label=r"$a = %.3f$"%a))
    ps.append(list_plot(kor[:len(kor)/20], plotjoined=1, color=kolor[j], legend_label=r"$a = %.3f$"%a))
    #list_plot(zip(d,num[:,1].tolist()),plotjoined=1,color='red').show()
    j += 1
#wykresy    
sum(p).show(axes_labels=[r'$\tau$',r'$C(\tau)$'], figsize=[8,3])
sum(ps).show(axes_labels=[r'$\tau$',r'$C(\tau)$'], figsize=[8,3])




reset()
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



