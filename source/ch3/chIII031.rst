Modele szumów
=============

Biały szum Levy'ego
-------------------

W literaturze szumem nazywa się dowolny proces stacjonarny. Stacjonarny - oznacza to, że 
funkcja korelacyjna procesu :math:`\xi(t)` zależy tylko od różnicy czasów, tzn. 

.. MATH::
 :label: eqn1

 C(t, s) = \langle \xi(t) \xi(s) \rangle = C(t-s)


Innymi słowy funkcja

.. MATH::
 :label: eqn2

 C(t) = \langle \xi(s+t) \xi(s) \rangle


nie zależy od czasu :math:`s`, a zależy tylko od czasu :math:`t`.

Podaliśmy definicję procesu Levy'ego jako najbardziej ogólnego procesu stochastycznego o niezależnych przyrostach na nieprzekrywających się przedziałach. Proces ten w szczególnych przypadkach redukuje się do procesu Wienera i procesu Poissona. Pochodna tego procesu to biały szum Levy'ego :math:`\xi(t)`:

.. MATH::
 :label: eqn3

 \xi(t)=\frac{dL(t)}{dt} \qquad 


Z postaci funkcji korelacyjnej dla procesu Levy'ego wynika, że funkcja korelacyjna białego szumu Levy'ego :math:`\xi(t)` ma postać

.. MATH::
 :label: eqn4

 \langle \xi(t) \xi(s) \rangle = \frac{\partial^2}{\partial t \partial s} \langle L(t) L(s) \rangle= \frac{\partial^2}{\partial t \partial s} [2D \mbox{min} (t, s)] =
 
 =2D \frac{\partial^2}{\partial t \partial s} [ t \theta(s-t) + s \theta(t-s)] = 2D \delta (t-s), \qquad 


co uzasadnia nazwę "biały szum", ponieważ widmo mocy (transformata Fouriera funkcji korelacyjnej) jest niezależna od częstości, podobnie jak dla światła białego.

Przy obliczaniu pochodnych należy pamiętać, że :math:`\theta'(t) = \delta(t)` oraz 
:math:`t\delta(t-s) = s \delta(t-s)` i :math:`\delta(t-s) = \delta(s-t)`.

Szczególne przypadki tego szumu to:

a) biały szum gaussowski (pochodna procesu Wienera)

b) biały szum poissonowski, nazywany białym szumem śrutowym lub poissonowskim ciągiem :math:`\delta`-impulsów (pochodna procesu Poissona)


Szumy gaussowskie
-----------------

Szumem gaussowskim nazywamy dowolny stacjonarny proces stochastyczny o gaussowskim rozkładzie prawdopodobieństwa. Jest on najczęściej wykorzystywany w modelowaniu z powodu centralnego twierdzenia granicznego. Szum gaussowski pojawia się przy opisie układu oddziałującego z otoczeniem (termostatem) ponieważ termostat jest układem o wielkiej liczbie stopni swobody (większej od liczby Avogadra :math:`10^{23}`). Dlatego szum termiczny i równowagowe fluktuacje termiczne modelowane są szumem gaussowskim. Szum taki jest całkowicie określony przed dwie wielkości: wartość średnią oraz funkcję korelacyjną. Z matematycznego punktu widzenia, proces taki możemy opisać tzw. funkcjonałem rozkładu prawdopodobieństwa, który jest uogólnieniem gęstości rozkładu prawdopodobieństwa : 

.. MATH::
 :label: eqn5

 {\cal D}P[\xi] = {\cal D}z \; {\mbox{exp}}\left[-\frac{1}{2} \int dt\int ds\;\xi(t) K(t-s) \xi(s) \right], \qquad 


gdzie :math:`{\cal D} z` jest pewną miarą funkcjonalną (podobnie jak iloczyn różniczek i jakobianu transformacji w całkach wielokrotnych) oraz funkcja :math:`K(t)` jest odwrotnością funkcji korelacyjnej :math:`C(t)` w takim sensie, że zachodzi relacja

.. MATH::
 :label: eqn6

 \int ds K(t-s) C(s-u) = \delta (t-u) \qquad 


Biały szum gaussowski odpowiada przypadkowi, gdy funkcja korelacyjna ma postać:

.. MATH::
 :label: eqn7

 C(t)= 2D_0 \delta (t), \qquad 


gdzie :math:`D_0` jest intensywnością szumu. Dla białego szumu gaussowskiego :math:`\xi(t)` funkcjonał rozkładu prawdopodobieństwa ma postać:

.. MATH::
 :label: eqn8

 {\cal D}P[\xi] = {\cal D}z \; {\mbox{exp}}\left[-D_0 \int dt\;\xi^2(t) \right], \qquad 


Dlaczego wprowadza się taki dziwny obiekt matematyczny jak funkcjonał :math:`{\cal D}P[\xi]`. Przypomnijmy sobie, że zmienna losowa o rozkładzie Gaussa jest określona przez wartość średnią zmiennej losowej i jej wariancję

.. MATH::
 :label: eqn9

 \sigma^2 = \langle\xi^2\rangle-\langle\xi\rangle^{2}


Dla białego szumu :math:`\langle \xi^2(t)\rangle = \infty` i dlatego nie istnieje 1-wymiarowy rozkład prawdopodobieństwa :math:`f(x, t)` ponieważ :math:`\sigma^2 = \infty`. Dlatego należy uogólnić teorię tak, aby opisywała także biały szum gaussowski. To umożliwia funkcjonał :math:`{\cal D}P[\xi]`.

Istnieją także innego typu szumu gaussowskie. Są to szumy skorelowane (kolorowe). Ważnym przykładem jest eksponencjalnie skorelowany szum:

.. MATH::
 :label: eqn10

 C(t)= \frac{D_0}{\tau_c} \mbox{exp}\left( -\frac{|t|}{\tau_c}\right), \qquad 


gdzie :math:`D_0` jest intensywnością (natężeniem) szumu oraz :math:`\tau_c` nazywa się czasem korelacji szumu. Ten szum jest generowany przez proces Ornsteina-Uhlenbecka, który opiszemy w następnym rozdziale. Kolejnym przykładem szumu skorelowanego jest tzw. szum harmoniczny o funkcji korelacyjnej typu: 

.. MATH::
 :label: eqn11

 C(t)= a_1 \mbox{e}^{-a|t|} \left(\cos \omega t + a_2 \sin \omega t\right) \qquad 


gdzie :math:`a_1, a_2` oraz :math:`a>0` są stałymi. Ten szum jest opisany równaniem podobnym do równania Newtona dla oscylatora harmonicznego tłumionego. Ostatnim przykładem jest szum skorelowany algebraicznie, tzn. jego funkcja korelacyjna jest postaci: 

.. MATH::
 :label: eqn12

 C(t)= C_0 \left(1+ \frac{|t|}{\tau_c}\right)^{-\kappa} \qquad 


gdzie liczba :math:`\kappa >0`.

Wszystkie trzy przykłady szumu skorelowanego dążą do białego szumu gaussowskiego w pewnych granicznych przypadkach. Aby to pokazać trzeba skorzystać z twierdzenia o ciągach delta-podobnych.




Szumy poissonowskie
-------------------


Poissonowski biały szum to pochodna procesu Poissona. Uogólniony proces Poissona można zapisać przy pomocy funkcji theta Heaviside'a w postaci

.. MATH::
 :label: eqn13

 N(t) = \sum\limits_i z_i \theta (t-t_i), \qquad 


gdzie :math:`\theta (x)` jest funkcją schodkową Heaviside'a oraz :math:`\{t_i\}` jest zbiorem losowych chwil skoków o średniej gęstości :math:`\mu`. Amplitudy skoków :math:`\{z_i\}` są niezależnymi zmiennymi losowymi o tym samym rozkładzie prawdopodobieństwa :math:`\rho(z)` i są niezależne od :math:`t_i`. Realizacjami takiego procesu są funkcje schodkowe o skokach w losowych chwilach czasu :math:`t_i` i o losowych wielkościach skoku :math:`z_i`. Pochodna tego procesu 

.. MATH::
 :label: eqn14

 \xi(t) = \frac{dN(t)}{dt}= \sum\limits_i z_i \delta (t-t_i) \qquad 


to biały szum poissonowski. Faktycznie jest to losowy ciąg impulsów typu :math:`\delta`-Diraca.

Pamiętajmy, że parametr :math:`\mu` określa średnią liczbę delta-impulsów na jednostkę czasu. Ponieważ średnia wartość procesu Poissona wynosi :math:`\langle N(t)\rangle = \mu\langle z_i\rangle t` więc średnia wartość białego szumu wynosi

.. MATH::
 :label: eqn15

 \langle \xi(t) \rangle = \frac{d\langle N(t)\rangle }{dt} = \mu \langle z_i\rangle 


gdzie

.. MATH::
 :label: eqn16

 \langle z_i \rangle = \int_{-\infty}^{\infty} z \rho(z) dz 


Możemy przedefiniować tak szum, aby jego wartość wynosiła 0. Zdefiniujmy nowy szumy jako

.. MATH::
 :label: eqn17

 Y_0(t) = \sum\limits_{i} z_i \delta (t-t_i) -\mu \langle z_i \rangle


Wartość średnia oraz funkcja korelacyjne tego szumu to:

.. MATH::
 :label: eqn18

 \langle Y_0(t) \rangle = 0, \quad \langle Y_0(t) Y_0(u) \rangle = 2D_S \delta (t-u), \qquad 


gdzie :math:`D_S=(1/2)\mu \langle z_i^2 \rangle` nazywa się intensywnością szumu. 

Symetryczny biały szum Poissona to taki ciąg impulsów, że gęstość prawdopodobieństwa :math:`\rho(z)` dla rozkładu amplitud jest parzystą (symetryczną) funkcją. Na przykład rozkład prawdopodobieństwa wielkości skoków

.. MATH::
 :label: eqn19

 \rho(z) = \mbox{e}^{- \vert z \vert /A}, \quad A > 0


jest funkcją symetryczną :math:`z \to -z`. Dlatego też skoki w górę (:math:`z>0`) oraz w dół (:math:`z<0`) są równo prawdopodobne i to odpowiada procesowi urodzin i śmierci.

Jeżeli szum jest asymetryczny, to :math:`\rho(z)\ne \rho(-z)`. Np.

.. MATH::
 :label: eqn20

 \rho(z) = (1/ A^2) z \mbox{e}^{(- z /A)} \theta(z), \quad A > 0 


opisuje niesymetryczny biały szum Poissona. Przykładem też jest rozkład

.. MATH::
 :label: eqn21

 \rho(z) = (1/A) e^{-z/A} \theta (z), \quad A>0


W tym przypadku możliwe są tylko skoki w górę (:math:`z>0`) i ich średnia wartość wynosi:

.. MATH::
 :label: eqn22

 \langle z_i \rangle = A


Stąd otrzymujemy interpretację parametru :math:`A` w powyższym rozkładzie prawdopodobieństwa.


.. only:: latex

  .. code-block:: python

    #realizacja białego szumu Poissona
    reset()
    from scipy import stats
    from numpy import cumsum

    T = 15
    mu = 1.3
    N = stats.poisson.rvs(T*mu)

    steps = range(N+1)
    pts = sorted([random()*T for i in steps])
    z = stats.expon.rvs(size=N).tolist()
    steps2 = cumsum(z)

    plot_step_function(zip(pts,steps2))
    sum([line(((pts[i],0),(pts[i],z[i]))) for i in steps[:-1]])


  .. image:: images/sage_chIII03_01a.*
     :align: center
     :width: 80%

  .. figure:: images/sage_chIII03_01b.*
     :align: center
     :alt: figchIII0201b
     :width: 80%

     Reliazcja procesu i odpowiadającego mu szumu Poissona.


.. only:: html

  .. sagecellserver::
    :is_verbatim: True

    #realizacja białego szumu Poissona
    reset()
    from scipy import stats
    import numpy as np

    T = 15
    mu = 1.3
    N = stats.poisson.rvs(T*mu)

    steps = range(N+1)
    pts = sorted([random()*T for i in steps])
    z = stats.expon.rvs(size=N).tolist()
    steps2 = np.cumsum(z)

    p1 = plot_step_function(zip(pts,steps2),figsize=[8,3])
    p1.axes_labels([r'$t$',r'$N(t)$'])

    p = sum([line(((pts[i],0),(pts[i],z[i]))) for i in steps[:-1]])
    p.axes_labels([r'$t$',r'$\xi(t)$'])

    print "fig1: uogólniony proces Poissona"
    p1.show(figsize=[8,3],frame=1,axes=0)
    print "fig2: szum Poissona"
    p.show(figsize=[8,3],frame=1,axes=0)

  .. end of input



Szum dychotomiczny (telegraficzny) 
----------------------------------


Podamy teraz przykład niegaussowskiego szumu. Jest to 2-stanowy proces stochastyczny

.. MATH::
 :label: eqn23

 \xi(t) = \{-a, b\}, \quad a, b > 0. \qquad 


Szum może przyjmować dwie wartości :math:`-a` lub :math:`b`. Przeskoki pomiędzy tymi dwoma stanami są dane przez prawdopodobieństwa przejścia w jednostce czasu

.. MATH::
 :label: eqn24

 Pr(-a\rightarrow b)=\mu_a = 1/\tau_a, \qquad Pr(b\rightarrow -a)=\mu_b = 1/\tau_b, \qquad 


gdzie :math:`\tau _a` and :math:`\tau _b` są średnimi czasami przebywania w stanach :math:`-a` oraz :math:`b`. Jeżeli założymy że

.. MATH::
 :label: eqn25

 b \mu_a= a \mu_b \qquad 


to proces jest stacjonarny o zerowej wartości średniej. Funkcja korelacyjna ma postać funkcji eksponencjalnej (podobnie jak dla szumu Ornsteina-Uhlenbecka) 

.. MATH::
 :label: eqn26

 C(t) = a b \:\mbox{exp}\left(-\frac{|t|}{\tau_c} \right), \qquad 


gdzie czas korelacji szumu :math:`\tau_c` dany jest przez formułę 

.. MATH::
 :label: eqn27

 1/\tau_c = \mu_a + \mu_b


Szum jest symetryczny gdy :math:`a=b` i to implikuje że :math:`\mu_a=\mu_b` gdy :math:`\langle \xi(t) \rangle = 0`. W pewnych przypadkach szum ten może opisywać losowe przejścia pomiędzy dwoma metastabilnymi stanami w układach bistabilnych.

.. only:: latex

  .. code-block:: python

    # definicja symetrycznego
    # szumu dychotomicznego
    from numpy import cumsum 
    a = -1
    b = 3
    stan = [a,b]
    mu_a = 1
    mu_b = mu_a * abs(b) / abs(a)
    mu = [mu_a,mu_b]

    # realizacja
    N = 20
    czasy = [-log(random()/mu[i%2]) for i in range(N)]
    punkty = cumsum(czasy)
    stany = [stan[i%2] for i in range(N)]

    # wizualizacja
    plot_step_function(zip(punkty,stany))


  .. figure:: images/sage_chIII03_02.*
     :align: center
     :alt: figchIII0202
     :width: 80%

     Reliazcja szumu dychotomicznego.


.. only:: html

  .. sagecellserver::
    :is_verbatim: True

    # definicja symetrycznego
    # szumu dychotomicznego
    from numpy import cumsum
    a = -1
    b = 3
    stan = [a,b]
    mu_a = 1
    mu_b = mu_a * abs(b) / abs(a)
    mu = [mu_a,mu_b]

    # realizacja
    N = 20
    czasy = [-log(random()/mu[i%2]) for i in range(N)]
    punkty = cumsum(czasy)
    stany = [stan[i%2] for i in range(N)]

    # wizualizacja
    p = plot_step_function(zip(punkty,stany))
    p.axes_labels([r'$t$',r'$\xi(t)$'])
    p.show(figsize=[8,3],frame=1,axes=1)

  .. end of input



Szum kangura
------------


Obserwacje kangurów prowadzą do ciekawych uogólnień w teorii procesów stochastycznych. Kangur od czasu do czasu skacze. Skoki kangura są o różnej długości. Pomiędzy skokami kangur spoczywa przez jakiś czas. To zachowanie kangura prowadzi do następującego opisu procesu losowego kangura :math:`\xi(t)`: Jest to proces nieciągły i stacjonarny w którym prawdopodobieństwo przejścia :math:`{\cal W}(z \vert z_0)` ze stanu :math:`z_0` do stanu :math:`z` faktoryzuje się, tzn. 

.. MATH::
 :label: eqn28

 {\cal W}(z \vert z_0) = Q(z) \nu (z_0) 


To oznacza, że kangur skacze ze stanu :math:`z_0` ze średnią częstością :math:`\nu(z_0)`. Wielkość :math:`\tau(z_0) = 1/\nu(z_0)` to średni czas przebywania w stanie :math:`z_0`. Prawdopodobieństwo, że kangur skoczy do stanu :math:`z` wynosi :math:`Q(z)` i jest unormowane do 1 w przestrzeni stanów kangura. Odpowiednie równanie ewolucji dla gęstości prawdopodobieństwa :math:`p(z, t)` dla procesu kangura ma postać:

.. MATH::
 :label: eqn29

 {\frac{\partial p(z, t)}{\partial t}} = - \nu (z) p(z, t) + Q(z) \int_{-\infty}^{\infty} \nu (\eta) p(\eta, t) d\eta 


W przypadku stanów stacjonarnych, gdy :math:`p(z, t) = p(z)`, otrzymujemy z powyższego równania związek pomiędzy rozkładem stacjonarnym :math:`p(z)` oraz gęstością prawdopodobieństwa :math:`Q(z)`:

.. MATH::
 :label: eqn30

 Q(z) = \frac{\nu (z) p(z)}{ \int_{-\infty}^{\infty} \nu (\eta) p(\eta, t) d\eta } = \frac{\nu (z) p(z)}{\langle \nu \rangle} \qquad 


Dla symetrycznego procesu kangura funkcja korelacyjna jest dana przez relację (nie jest łatwym zadaniem to pokazać)

.. MATH::
 :label: eqn31

 C(t) = 2 \int_{0}^{\infty} z^2 p(z) \mbox{exp}(-\nu(z)\vert t\vert) \;dz, 


gdzie :math:`p(z) = p(-z)` jest rozkładem stacjonarnym procesu :math:`\xi(t)` oraz :math:`\nu(z) = \nu(-z)`. W tym przypadku wartość średnia procesu jest zero, :math:`\langle \xi(t) \rangle = 0`.

Specjalnym przypadkiem tego procesu jest tzw. szum Kubo-Andersona gdy :math:`\nu(z) = \nu_0`. Z rów. :eq:`eqn30` wynika, że dla stałej częstości przeskoków stacjonarna gęstość :math:`p(z) = Q(z)`. Wówczas z powyższej relacji otrzymujemy jawną postać funkcji korelacyjnej:

.. MATH::
 :label: eqn32

 C(t) = \langle z^2 \rangle \mbox{exp}\left(-\frac{\vert t\vert}{\tau_c}\right) 


gdzie czas korelacji szumu wynosi :math:`\tau_c = 1/\nu_0` oraz :math:`\langle z^2 \rangle` jest wartością średnią obliczoną z rozkładem stacjonarnym :math:`p(z) = Q(z)`. 

Oto dwa przykłady szumów kangura:

(i) proces :math:`\xi(t)` jest nieograniczony, określony na przedziale :math:`(-\infty, \infty)` i stacjonarna gęstość prawdopodobieństwa jest gaussowska:

.. MATH::
 :label: eqn33

 p(z) = Q(z) = \frac{1}{\sqrt{2\pi} \sigma} \mbox{exp}(-z^2/2\sigma^2), \quad \xi(t) \in (-\infty, \infty)


(ii) proces :math:`\xi(t)` jest ograniczony na przedziale :math:`[-l, l]` i ma jednostajną gęstość prawdopodobieństwa

.. MATH::
 :label: eqn34

 p(z) = Q(z) = \frac{1}{2l}\theta(z+l)\theta(l-z),\quad \xi(t) \in [-l, l], \qquad 


gdzie :math:`\theta(x)` jest funkcją schodkową Heaviside'a. 

Na początek realizacja procesu ograniczonego.

.. only:: latex

  .. code-block:: python

    #szum kangura
    #szum Kubo - Andersona
    #stała częstość \nu_0
    #proces ograniczony

    l = 2
    N = 20
    ksi = [2*l*random() - l for i in range(N)]

    nu_0 = 2.2
    czasy = stats.expon.rvs(scale=1/nu_0,size=N)

    plot_step_function(zip(czasy,ksi))


  .. figure:: images/sage_chIII03_03a.*
     :align: center
     :alt: figchIII0201b
     :width: 80%

     Reliazcja ograniczonego szumu kangura ze stałą częstością :math:`\nu_0`
     (szum Kubo - Andersona).



.. only:: html

  .. sagecellserver::
    :is_verbatim: True

    #szum kangura
    #szum Kubo - Andersona
    #stała częstość \nu_0
    #proces ograniczony

    reset()
    from scipy import stats

    l = 2
    N = 20
    ksi = [2*l*random() - l for i in range(N)]
    #list_plot(ksi)

    nu_0 = 2.2
    czasy = stats.expon.rvs(scale=1/nu_0,size=N)

    p = plot_step_function(zip(czasy,ksi))
    p.axes_labels([r'$t$',r'$\xi$'])
    p.show(figsize=[8,3], frame=1, axes=1)

  .. end of input

A teraz wykreślimy sobie realizację procesu kangura dla sytuacji gdy proces :math:`\xi(t)` jest nieograniczony. Jedyne
co trzeba zmienić w powyższym kodzie to linijki definiujące ów proces jako nieograniczony.

.. only:: latex

  .. code-block:: python

    sigma = 0.3
    ksi = [normalvariate(0,sigma) for i in range(N)]

  .. figure:: images/sage_chIII03_03b.*
     :align: center
     :alt: figchIII0201b
     :width: 80%

     Reliazcja nieograniczonego szumu kangura ze stałą częstością :math:`\nu_0`
     (szum Kubo - Andersona).

.. only:: html

  .. sagecellserver::
    :is_verbatim: True

    #szum kangura
    #szum Kubo - Andersona
    #stała częstość \vu
    #proces nieograniczony

    reset()
    from scipy import stats

    N = 20
    sigma = 0.3
    ksi = [normalvariate(0,sigma) for i in range(N)]
    #list_plot(ksi)

    nu_0 = 2.2
    czasy = stats.expon.rvs(scale=1/nu_0,size=N)

    p = plot_step_function(zip(czasy,ksi))
    p.axes_labels([r'$t$',r'$\xi$'])
    p.save('sage_chIII03_03b.png',figsize=[8,3])
    p.save('sage_chIII03_03b.pdf',figsize=[8,3])

  .. end of input



Uwagi ogólne: proces Markowa i proces niemarkowowski
----------------------------------------------------

Rozważmy dla prostoty równanie stochastyczne w postaci:

.. MATH::
 :label: eqn35

 \dot x = F(x) + G(x) \xi(t)


gdzie :math:`\xi(t)` jest dowolnym opisanym powyżej szumem. Co możemy powiedzieć o procesie stochastycznym :math:`x=x(t)` generowanym przez powyższe równanie. Jeżeli szum :math:`\xi(t)` is białym szumem wówczas proces :math:`x(t)` jest procesem Markowa. To jest ogromna zaleta ponieważ proces Markowa jest całkowicie opisany gdy znamy 

(i) warunkową gęstość prawdopodobieństwa :math:`p(x_2, t_2|x_1, t_1)`

(ii) stan początkowy procesu :math:`x(t)` dany przez rozkład 1-wymiarowy :math:`p(x, 0)`. Wówczas spełnione jest równanie Chapmana-Kołmogorowa z którego można wyprowadzić równanie Fokkera-Plancka lub Kołmogorowa-Fellera. Rozkłady wielowymiarowe wyrażają się przez powyższe 2 funkcje. 


Jeżeli szum nie jest szumem białym (jest np. eksponencjalnie skorelowanym) to proces :math:`x(t)` jest procesem niemarkowowskim. Rozkłady wielowymiarowe nie można otrzymać z powyższych 2 funkcji. Wówczas wiemy niewiele o takim procesie i jego analiza bywa bardzo złożona.



