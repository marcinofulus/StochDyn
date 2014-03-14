Proces Ornsteina-Uhlenbecka
===========================

Rozważmy najprostsze liniowe równanie różniczkowe

.. MATH::
 :label: eqn1

 \dot x = - ax, \quad a>0, \qquad x(0) = x_0


Jego rozwiązaniem jest funkcja eksponencjalna:

.. MATH::
 :label: eqn2

 x(t) = x_0 \mbox{e}^{-at}


która zawsze dąży do zera gdy :math:`t \to \infty`.

Zaburzymy losowo to równanie: 

.. MATH::
 :label: eqn3

 \dot x = - ax + a \Gamma(t), \qquad \langle \Gamma(t)\rangle = 0, \qquad \langle \Gamma(t) \Gamma(s)\rangle = 2D \delta(t-s) \qquad 


Równanie to opisuje proces stochastyczny :math:`x=x(t)` który nazywa się procesem Ornsteina-Uhlenbecka. Proces ten jest procesem Markowa (tw. Dooba). Proces ten jest procesem Gaussa ponieważ jest to transformacja liniowa innego procesu Gaussa, a mianowicie procesu :math:`\Gamma(t)`. Dlatego też proces ten można analizować na wiele sposobów. Po pierwsze, jest to równanie różniczkowe liniowe niejednorodne. Dlatego jego rozwiązaniem jest funkcja

.. MATH::
 :label: eqn4

 x(t) = x_0 e^{-at} + a \int_0^{\; t} e^{-a(t-s)} \Gamma(s) ds


co można sprawdzić bezpośrednio, różniczkując powyższą funkcję.

Można teraz obliczyć wartość średnią tego procesu:

.. MATH::
 :label: eqn5

 \mu(t) = \langle x(t)\rangle = \langle x_0 \rangle e^{-at} + a \int_0^{\; t} e^{-a(t-s)} \langle \Gamma(s)\rangle ds = \langle x_0 \rangle e^{-at} 


gdzie wykorzystaliśmy własności uśredniania (średnia z sumy to suma średnich, średnia ze stałej wielkości to ta sama stała wielkość, całka to wartość graniczna sumy, itd.).

Obliczenie funkcji korelacyjnej jest bardziej pracochłonne. Trzeba z należytą ostrożnością wymnożyć :math:`x(t)` oraz :math:`x(\tau)`:

.. MATH::
 :label: eqn6

  \langle x(t) x(\tau) \rangle = \langle \left[ x_0 e^{-at} + a \int_0^{\; t} e^{-a(t-s)} \Gamma(s) ds\right] \left[ x_0 e^{-a\tau} + a \int_0^{\; \tau} e^{-a(\tau -u)} \Gamma(u) du\right] \rangle 


Pamiętając, że :math:`\langle \Gamma(t)\rangle = 0` dla dowolnego czasu :math:`t`, otrzymamy wyrażenie:

.. MATH::
 :label: eqn7

  \langle x(t) x(\tau) \rangle = \langle x_0^2 \rangle e^{-a(t+\tau)} + a^2 e^{-a(t+\tau)} \int_0^{\; t} e^{as} \int_0^{\; \tau} e^{au} \langle \Gamma(s) \Gamma(u) \rangle ds du 


W wyrażeniu podcałkowym występuje funkcja korelacyjna białego szumu gaussowskiego, więc

.. MATH::
 :label: eqn8

  \langle x(t) x(\tau) \rangle = \langle x_0^2 \rangle e^{-a(t+\tau)} + 2D a^2 e^{-a(t+\tau)} \int_0^{\; t} e^{as} \int_0^{\; \tau} e^{au} \delta(s-u) ds du 


Należy obliczyć całki z :math:`\delta` - Diraca. Trzeba rozważyć 2 przypadki: gdy :math:`t>\tau` oraz gdy :math:`\tau > t`. W końcu otrzymamy wynik w postaci:

.. MATH::
 :label: eqn9

  \langle x(t) x(\tau) \rangle = [\langle x_0^2 \rangle -aD] e^{-a(t+\tau)}+ aD e^{-a|t-\tau|}


Ponieważ :math:`x(t)` jest procesem gaussowskim, możemy podać gęstość prawdopodobieństwa tego procesu:

.. MATH::
 :label: eqn10

 p(x, t) = \frac{1}{\sqrt{2\pi \sigma^2(t)} }\; \exp\left\{ - \frac{[x-\mu(t)]^2}{2\sigma^2(t)}\right\} \qquad 


Wartość średnia jest dana powyżej. Musimy jeszcze obliczyć wariancję:

.. MATH::
 :label: eqn11

 \sigma^2(t) = \langle x^2(t) \rangle - \langle x(t)\rangle^2 = \sigma^2_0 e^{-2at} + aD [1 - e^{-2at}] \qquad 


Stacjonarny rozkład prawdopodobieństwa :math:`p_{st}(x)` to rozkład dla :math:`t\to\infty`. Granice taką łatwo wyznaczyć ponieważ 

.. MATH::
 :label: eqn12

 \mu(t) \to 0, \qquad \sigma^2(t) \to aD


Więc rozkład prawdopodobieństwa :math:`p_{st}(x)` ma postać gaussowską:

.. MATH::
 :label: eqn13

 p_{st}(x) = \frac{1}{\sqrt{2\pi aD} }\; \exp\left\{ - \frac{x^2}{2 aD}\right\}


W ogólności :math:`x(t)` nie jest procesem stacjonarnym. Jeżeli tak wybrać stan początkowy aby

.. MATH::
 :label: eqn14

 \langle x_0^2 \rangle = aD


to proces staje się stacjonarny i jest eksponencjalnie skorelowany: 

.. MATH::
 :label: eqn15

 C(t, \tau) = C(t-\tau) = \langle x(t) x(\tau) \rangle = aD e^{-a|t-\tau|} = \frac{D}{\tau_c} \exp\left[ -\frac{|t-\tau|}{\tau_c}\right]


gdzie :math:`\tau_c = 1/a` jest czasem korelacji procesu. Ale wybór :math:`\langle x_0^2 \rangle = aD` oznacza, że stan początkowy jest stanem stacjonarnym, czyli :math:`p(x, 0) = p_{st}(x)`. Innymi słowy, proces Ornsteina-Uhlenbecka zawsze staje się stacjonarny albo dla długich czasów albo dla początkowego stanu który jest stanem stacjonarnym. W tym przypadku proces ten służy jako standardowy przykład eksponencjalnie skorelowanego szumu gaussowskiego. Wyznaczymy teraz widmo mocy tego szumu: 

.. MATH::
 :label: eqn16

 S(\omega) = \int_{-\infty}^{\; \infty} e^{i\omega t} C(t) dt = aD \int_{-\infty}^{\; \infty} e^{i\omega t} e^{-a|t|} dt = \frac{2a^2 D}{a^2 + \omega^2} = \frac{2 D}{1 + (\tau_c \omega)^2} 


Poniżej przedstawiamy tę zależność dla kilku wartości czasu korelacji :math:`\tau_c = 1/a`. Widmo mocy ma maksimum, podobnie jak światło o danym kolorze ma maksimum przy częstości fali promieniowania elektromagnetycznego. Jeżeli czas korelacji :math:`\tau_c \to 0` to widmo mocy staje się coraz bardziej płaskie i dąży do stałej wartości :math:`2D`. Z kolei funkcja korelacyjna

.. MATH::
 :label: eqn17

  lim_{\tau_c \to 0} \; \; \frac{D}{\tau_c} \exp\left[ -\frac{|t-\tau|}{\tau_c}\right] = 2D \delta(t - \tau)


i szum staje się białym szumem gaussowskim.


.. only:: latex

  .. code-block:: python

    var('x, t, D')
    a = 1
    V = a*x^2

    #wartosci startowe
    N = 10
    x0 = [random()*4 - 2 for i in range(N)]
    meanx0 = mean(x0)
    sigmax0 = variance(x0)

    #p(x,t)
    mu = mean(x0) * exp(-a*t)
    sigma = (variance(x0) - a*D)*exp(-2*a*t)
    p = exp(-(x-mu)^2/(2*sigma^2))/sqrt(2*pi*sigma^2)
    show(p)

    P =[]
    lT = srange(0,1,0.2,include_endpoint=1)
    for t1 in lT:
        c = [random() for i in range(3)]
        P.append(plot(p(x=x,t=t1,D=1),(x,-1,1),
        fill=0,
        color=c,
        fillcolor=c,
        legend_label='t=%.2f'%t1))


  .. figure:: images/sage_chIII031_01.*
    :align: center
    :width: 80%
    :alt: figch

    Gęstość prawdopodobieństwa :math:`p(x,t)`.

.. only:: html

  .. sagecellserver::
    :is_verbatim: True

    var('x, t, D')
    a = 1
    V = a*x^2
    #wartosci startowe
    N = 10
    x0 = [random()*4 - 2 for i in range(N)]
    meanx0 = mean(x0)
    sigmax0 = variance(x0)
    #p(x,t)
    mu = mean(x0) * exp(-a*t)
    sigma = (variance(x0) - a*D)*exp(-2*a*t)
    p = exp(-(x-mu)^2/(2*sigma^2)) / sqrt(2*pi*sigma^2)
    show(p)
    P =[]
    lT = srange(0,1,0.2,include_endpoint=1)
    for t1 in lT:
        c = [random() for i in range(3)]
        P.append(plot(p(x=x,t=t1,D=1),(x,-1,1),fill=0,color=c,fillcolor=c,legend_label='t=%.2f'%t1))
    sum(P).show(figsize=[8,3],axes_labels=[r'$x$',r'$p(x, t)$'])

  .. end of input



Równanie Fokkera-Plancka dla procesu Ornsteina-Uhlenbecka
---------------------------------------------------------

Zgodnie z regułami podanymi w poprzednim rozdziale, równanie :eq:`eqn3` to równanie Langevina, dla którego dryf i funkcja dyfuzji maja postać

.. MATH::
 :label: eqn18

 F(x, t) = -ax, \quad G(x, t) = a


Odpowiednie równanie Fokkera-Plancka dla warunkowej gęstości prawdopodobieństwa :math:`p(x, t|y, s)` ma postać:

.. MATH::
 :label: eqn19

 \frac{\partial p(x, t|x_0, s)}{\partial t} = a \frac{\partial}{\partial x} [x p(x, t|x_0, s)] + D a^2 \frac{\partial^2}{\partial x^2} p(x,t|x_0,s),
 
 p(x, s|x_0, s) =\delta(x-x_0) 


Z kolei dla 1-wymiarowej gęstości prawdopodobieństwa :math:`p(x, t)` należy rozwiązać zagadnienie:

.. MATH::
 :label: eqn20

 \frac{\partial p(x, t)}{\partial t} = a \frac{\partial}{\partial x} [x p(x, t)] + D a^2 \frac{\partial^2}{\partial x^2} p(x, t), \qquad p(x, 0) =p(x)


gdzie :math:`p(x)` jest początkowym rozkładem prawdopodobieństwa. Warto przypomnieć, że zachodzi następująca relacja:

.. MATH::
 :label: eqn21

 p(x, t) = \int_{-\infty}^{\; \infty} p(x, t|, y, s) \; p(y, s) dy


czyli :math:`p(x, t|y, s)` jest propagatorem: propaguje rozkład w chwili wcześniejszej :math:`s` do chwili późniejszej :math:`t`. W szczególności

.. MATH::
 :label: eqn22

 p(x, t) = \int_{-\infty}^{\; \infty} p(x, t|, y, 0) \; p(y, 0) dy \qquad 


propaguje rozkład początkowy do chwili :math:`t`.

Oba równania Fokkera-Plancka można rozwiązać metodą funkcji charakterystycznej czyli metodą transformaty Fouriera wybierając odpowiednie warunki początkowe. Wynikiem zastosowania tej metody jest równanie różniczkowe cząstkowe pierwszego rzędu dla funkcji charakterystycznej. Takie równanie zawsze można rozwiązać tzw. metodą charakterystyk. Ponieważ typowy student nie zna tej metody, nie będziemy jej tu przedstawiać. Postąpimy inaczej. W zasadzie już rozwiązaliśmy podobny problem. Załóżmy, że dana jest wartość początkowa procesu: :math:`x(s) = x_0`. Wybieramy jako chwilę początkową czas :math:`s`. Ponieważ w równaniu Fokkera-Plancka nie występuje czas w sposób jawny, rozwiązanie :math:`p(x, t|x_0, s)` zależy tylko od różnicy czasów, tzn. :math:`p(x, t|x_0, s) = p(x, t-s; x_0)`. Dlatego też w rozwiązaniu :eq:`eqn11` oraz w :eq:`eqn22` należy dokonać podmiany: :math:`\langle x_0^k\rangle \to x_0^k` oraz :math:`t \to t-s`. W ten sposób otrzymamy warunkową gęstość rozkładu:

.. MATH::
 :label: eqn23

 p(x, t|x_0, s) = \frac{1}{\sqrt{2\pi \sigma^2(t, s)} }\; \exp\left\{ - \frac{[x- x_0 e^{-a(t-s)})]^2}{2\sigma^2(t, s)}\right\}


gdzie teraz

.. MATH::
 :label: eqn24

  \sigma^2(t, s) = aD [1 - e^{-2a(t-s)}]


Można sprawdzić, korzystając z twierdzenia o ciągach :math:`\delta`-podobnych, że w
granicy :math:`t\to s` gęstość :math:`p(x, t|x_0, s) \to \delta(x-x_0)`. Dla dowolnego
warunku początkowego, korzystamy z rów. :eq:`eqn22` i otrzymujemy rozkład w dowolnej chwili z dowolnym warunkiem początkowym.


.. only:: latex

  .. code-block:: python

    var('x, t, s, x0, a, D')

    sigma(t,s,a,D) = a*D*(1 - exp(-2*a*(t-s)))
    pc(x,t,s,x0,a,D) = exp(-(x-x0*exp(-a*(t-s)))^2/(2*sigma(t,s,a,D)^2))
    pc \= sqrt(2*pi*sigma(t,s,a,D)^2)

    p =[]
    lT = srange(0,1,0.2) + srange(0.9,1,0.02)
    for t1 in lT:
      c = [random() for i in range(3)]
      p.append(plot(pc(x=x,t=t1,s=1,x0=0,a=1,D=1),(x,-0.5,0.5),fill=0))
    p.append(arrow((0,0),(0,29),color='black'))    


  .. figure:: images/sage_chIII031_02.*
    :align: center
    :width: 80%
    :alt: figch

    Ciąg :math:`\delta`-podobny.


.. only:: html

  .. sagecellserver::
    :is_verbatim: True

    var('x, t, s, x0, a, D')
    sigma(t,s,a,D) = a*D*(1 - exp(-2*a*(t-s)))
    pc(x,t,s,x0,a,D) = exp(-(x-x0*exp(-a*(t-s)))^2/(2*sigma(t,s,a,D)^2)) / sqrt(2*pi*sigma(t,s,a,D)^2)
    show(pc)
    p =[]
    lT = srange(0,1,0.2) + srange(0.9,1,0.02) +[0.99,0.992]#[0.1,0.5,0.9]
    for t1 in lT:
        c = [random() for i in range(3)]
        p.append(plot(pc(x=x,t=t1,s=1,x0=0,a=1,D=1),(x,-0.5,0.5),fill=0))
    p.append(arrow((0,0),(0,29),color='black'))    
    sum(p).show(figsize=[8,3],axes_labels=[r'$x$',r'$p(x, t|x_0, s)$'])

  .. end of input



Zastosowanie: cząstka Browna
----------------------------

Niech cząstka Browna o masie :math:`m` porusza się w płynie. Można zbudować równanie Newtona dla takiej cząstki :

.. MATH::
 :label: eqn25

 m\ddot x + \gamma \dot x = \Gamma(t) \quad \mbox{czyli} \quad m \dot v + \gamma v = \Gamma(t) \quad \mbox{gdzie } \quad v=\dot x 


Jest to równanie Langevina, gdzie szum :math:`\Gamma(t)` to losowa siła działająca na cząstkę i mająca swe źródło w zderzeniach cząstek płynu z cząstką Browna. Równanie Langevina dla prędkości cząstki Browna ma taką samą postać jak równanie generujące proces Ornsteina-Uhlenbecka: 

.. MATH::
 :label: eqn26

 \dot v = -(\gamma/m) v + \Gamma(t)/m = - \gamma_0 v + \gamma_0 \Gamma_0(t)


gdzie przeskalowane wielkości mają postać

.. MATH::
 :label: eqn27

 \gamma_0 = \frac{\gamma}{m}, \qquad \Gamma_0(t) = \frac{\Gamma(t)}{\gamma}


Dla przeskalowanej siły losowej mamy związki: 

.. MATH::
 :label: eqn28

 \langle \Gamma_0(t)\rangle = 0, \qquad \langle \Gamma_0(t) \Gamma_0(s)\rangle = \frac{2D}{\gamma^2} \delta(t-s) = 2D_0 \delta(t-s) \qquad 


Porównując to z równaniem dla procesu Ornsteina-Uhlenbecka otrzymujemy korespondencję:

.. MATH::
 :label: eqn29

 a \to \gamma_0 = \frac{\gamma}{m}, \qquad D \to D_0 = \frac{D}{\gamma^2}


Posiłkując się wynikami dla procesu Ornsteina-Uhlenbecka, otrzymamy dla prędkości cząstki Browna następujące wyniki:

.. MATH::
 :label: eqn30

 \langle v(t) \rangle = \langle v_0\rangle e^{-\gamma t/m}, \qquad \langle v(t) v(s) \rangle = \frac{D}{\gamma m} e^{-\gamma |t-s|/m} 


przy założeniu, że jest to proces stacjonarny, czyli że w chwili początkowej

.. MATH::
 :label: eqn31

 \langle v_0^2 \rangle = \frac{D}{\gamma m}


Zauważmy, że w dowolnej chwili czasu zachodzi relacja

.. MATH::
 :label: eqn32

 \langle v^2(t) \rangle = \frac{D}{\gamma m}


Z twierdzenia o ekwipartycji energii (fizyka statystyczna) wynika, że 

.. MATH::
 :label: eqn33

 \langle E_k \rangle = \frac{1}{2} m \langle v^2(t) \rangle = \frac{1}{2} kT \qquad \mbox{czyli} \qquad \langle v^2(t) \rangle = \frac{kT}{m} = \frac{D}{\gamma m}


gdzie :math:`k` jest stałą Boltzmanna i :math:`T` jest temperaturą otoczenia (termostatu, płynu). Stąd otrzymujemy ważny wynik, że natężenie szumu termicznego (fluktuacji termicznych) wynosi

.. MATH::
 :label: eqn34

 D= \gamma kT


Kolejny ważny wynik to czas korelacji prędkości cząstki Browna. Z relacji dla funkcji korelacyjnej wnioskujemy, że czas korelacji

.. MATH::
 :label: eqn35

 \tau_c = \frac{m}{\gamma}


Prędkość cząstki Browna to losowy proces gaussowski, eksponencjalnie skorelowany. Stacjonarny rozkład prawdopodobieństwa :math:`p_{st}(v)` ma postać (patrz pierwsza część tego rozdziału)

.. MATH::
 :label: eqn36

 p_{st}(v) = \frac{1}{\sqrt{2\pi aD} }\; \exp\left\{ - \frac{v^2}{2 aD}\right\} = \sqrt{\frac{m}{2\pi kT} }\; \exp\left\{ - \frac{mv^2}{kT}\right\}


Jest to dobrze znany rozkład Maxwella. 


.. only:: latex

  .. code-block:: python

    var('v, T, m')
    k = 1
    pst(v,T,m) = exp(-m*v^2/k/T)*sqrt(m/2/pi/k/T)

    p =[]
    kolor = ['blue','green','red']
    lT = [0.01,0.1,1]
    for t in lT:
        color = kolor[lT.index(t)]
        p.append(plot(pst(v=x,T=t,m=1),(x,-2,2),
         color=color,
         legend_label='T=%.2f'%t,
         fill=0,fillcolor=color))


  .. figure:: images/sage_chIII031_03.*
    :align: center
    :width: 80%
    :alt: figch

    Rozkład Maxwella


.. only:: html

  .. sagecellserver::
    :is_verbatim: True

    var('v, T, m')
    k = 1
    pst(v,T,m) = exp(-m*v^2/k/T) * sqrt(m/2/pi/k/T)

    p =[]
    kolor = ['blue','green','red']
    lT = [0.01,0.1,1]
    for t in lT:
        color = kolor[lT.index(t)]
        p.append(plot(pst(v=x,T=t,m=1),(x,-2,2),color=color,legend_label='T=%.2f'%t,fill=0,fillcolor=color))
    sum(p).show(figsize=[8,3],axes_labels=[r'$v$',r'$P_{st}(v)$'])

  .. end of input





