.. -*- coding: utf-8 -*-

Scenariusz przejścia do chaosu
==============================

.. highlight:: python
  :linenothreshold: 5

Zmieniając parametry układu oraz warunki początkowe, możemy sterować własnościami ewolucji czasowej. Widzieliśmy, że istnieją rozwiązania periodyczne. Może to być prosty ruch periodyczny charakteryzujący się jednym charakterystycznym okresem T (lub częstością).  Mogą to być ruchy periodyczne bardziej skomplikowane:  o okresie 2, 3, 4, itd. Zauważmy, że ruch periodyczny o okresie 3 powtarza się po czasie 3 razy dłuższym niż ruch o okresie 1. Dlatego też regularność ruchu można zaobserwować po czasie  3 razy dłuższym.   Ruch periodyczny o okresie 20 powtarza się po czasie 20 razy dłuższym niż ruch o okresie 1. Dlatego też regularność ruchu jest obserwowana po czasie 20 razy dłuższym.  Ruch periodyczny o okresie 2000 powtarza się po czasie 2000 razy dłuższym niż ruch o okresie 1. Dlatego też regularność ruchu może być rozpoznana po czasie  200 razy dłuższym.  Zwiększając periodyczność ruchu aż do nieskończoności, zauważamy że regularność ruchu powtarza się po nieskończonym czasie, czyli ruch staje się nieregularny dla obserwatora. Trajektoria wygląda tak, jakby to był ruch przypadkowy, losowy, chaotyczny. Ruch jest ciągle deterministyczny, ale skomplikowany,  niepowtarzalny, nieregularny. W niektórych przypadkach układ jest wyjątkowo wrażliwy na warunki początkowe: dla dwóch różnych, ale bardzo mało różniących się warunków początkowych, odpowiadające im trajektorie z czasem zaczynają się różnić i odbiegać od siebie. Jeżeli zmniejszymy odległość między warunkami początkowymi, to czas po jakim można rozróżnić  2 trajektorii wydłuża się, ale prędzej czy później, trajektorie zaczynają się rozbiegać. Z praktycznego punktu widzenia, warunki początkowe można zadawać ze skończoną dokładnością, ale nie z zerową dokładnością, tak jak to się zakłada w twierdzeniach matematycznych. Dlatego też w reżimie, w którym układ jest czuły na warunki początkowe, w praktyce niepewność warunków początkowych powoduje niepewność  ewolucji czasowej. Można to sprecyzować w matematycznym sensie w następujący sposób:

Niech :math:`x(t)`  będzie trajektorią z warunkiem początkowym :math:`x(0)`, a :math:`X(t)`  
będzie trajektorią z warunkiem początkowym :math:`X(0)`.   Niech dwa warunki początkowe różnią się o małą wielkość: 

.. MATH::
    :label: eqn1

    |X(0) - x(0)| = \epsilon_0


gdzie :math:`| ... |` oznacza odległość przy zadanej metryce.  Jeżeli różnią się o taką wielkość lub mniejszą, wówczas są one  dla nas nierozróżnialne. Traktujemy je jako takie same w ramach błędu pomiarowego. Pytamy, jaka jest różnica

.. MATH::
    :label: eqn2

    |X(t) - x(t)| = \epsilon(t)


po czasie :math:`t` spowodowana niepewnością warunków początkowych :math:`\epsilon_0`. Wrażliwość na warunki początkowe oznacza, że 2 trajektorie oddalają się od siebie w bardzo szybkim, eksponencjalnym tempie:

.. MATH::
    :label: eqn3

    \epsilon(t) = \epsilon_0  \mbox{e}^{\lambda t}


gdzie :math:`\lambda` nazywa się wykładnikiem Lapunowa. Jeżeli :math:`\lambda < 0` to dwie bliskie sobie trajektorie nie oddalają się od siebie. Z kolei jeżeli :math:`\lambda > 0` to trajektorie rozbiegają się.

Niech :math:`\delta` będzie dokładnością naszej aparatury do rozróżniania trajektorii.  Jeżeli :math:`\epsilon(t) > \delta`, czyli gdy dwie  trajektorie stają się dla nas rozróżnialne, to nie możemy przewidzieć dalszej ewolucji układu:  która trajektoria jest właściwa, :math:`x(t)` czy :math:`X(t)`? Po jakim czasie nasze przewidywania tracą sens?  Po takim czasie, że

.. MATH::
    :label: eqn4

    \epsilon(t) = \epsilon_0  \mbox{e}^{\lambda t} > \delta


czyli po czasie

.. MATH::
    :label: eqn5

     t > \frac{1}{\lambda}  \mbox{ln} \left[\frac{\delta}{\epsilon_0}\right]


Załóżmy, że stan początkowy możemy  zadać z dokładnością :math:`\epsilon_0 = 10^{-8}`, a tolerancja :math:`\delta = 10^{-5}` jest dla nas satysfakcjonująca (chociaż jest to 3 rzędy wielkości gorzej niż dla warunku początkowego).  Jak długo nasze przewidywania  są akceptowalne:

.. MATH::
    :label: eqn6

     t_1  \approx  \frac{1}{\lambda}  \mbox{ln} \left[\frac{\delta}{\epsilon_0}\right]  =  \frac{1}{\lambda}  \mbox{ln} \left[\frac{10^{-5}}{10^{-8}}\right]  = \frac{1}{\lambda}  \mbox{ln} \left[10^3\right] =  \frac{3}{\lambda}  \mbox{ln} 10 


Załóżmy,  że ktoś jest w stanie przygotować  stan początkowy  ze znacznie lepszą dokładnością, a mianowicie 1000 razy lepiej, tzn.  :math:`\epsilon_0 = 10^{-11}`.  O ile dłużej możemy przewidywać ewolucję układu:

.. MATH::
    :label: eqn7

     t_2  \approx    \frac{1}{\lambda}  \mbox{ln} \left[\frac{10^{-5}}{10^{-11}}\right]  = \frac{1}{\lambda}  \mbox{ln} \left[10^6\right] =  \frac{6}{\lambda}  \mbox{ln} 10  = 2 t_1


To jest zaledwie 2 razy dłuższy czas!! Widać, że gdy układ jest w reżimie chaotycznym, przewidywalność czasowa jest bardzo ograniczona. Zwiększanie dokładności wyznaczania warunków początkowych  1000-krotnie powoduje wydłużenie  czasu przewidywalności  zaledwie 2 razy. To jest właśnie problem  z prognozą pogody. Możemy zwiększać sieć punktów pomiarowych, a i tak przewidywania pogody są  rozsądne  zaledwie  na kilka dni do przodu.

Problem, czy układ wykazuje własności chaotyczne czy nie, nie jest łatwy do stwierdzenia. Ponieważ układ równań różniczkowych zwykle nie można analitycznie rozwiązać, trzeba bazować na metodach komputerowych. Z jednej strony układ jest czuły na warunki początkowe, z drugiej strony sama metoda numeryczna i obliczenia komputerowe obarczone są błędami, których nie można wyeliminować. Może zdarzyć się, że to nie własność  układu a artefakty komputerowe wytwarzają złudzenie  chaosu. Trzeba na to być czułym. Obecnie istnieją dobre programy komputerowe uwzględniające niedoskonałości o których mowa. Ponadto istnieje kilka charakterystyk,  które mają specyficzne własności  dla układów chaotycznych.  Oto te charakterystyki: 

1. Wykładniki Lapunowa :math:`\lambda_i`

2. Widmo (spektrum) mocy :math:`P(\omega)` 

3. Funkcja korelacyjna  :math:`C(\tau)`

4. Cięcie Poincarego 

5. Entropia Kołmogorowa :math:`K`


Badanie wszystkich  charakterystyk jest uciążliwe i czasochłonne, ale eliminuje możliwość pomyłki w stwierdzeniu  chaotyczności. Przedstawimy główne cechy  tych wielkości jakie występują w reżimie chaotycznym i niechaotycznym. 

Scenariusz podwojenia okresu
----------------------------

Przedstawimy teraz standardowy scenariusz przejścia do chaosu, który nazywa się przejściem do chaosu poprzez podwojenie okresu. Jest uniwersalny scenariusz, występujący zarówno w układach z ciągłym czasem jaki i w układach dyskretnych. Został potwierdzony w wielu eksperymentach na różnorodnych układach fizycznych.


.. only:: latex

  .. code-block:: python

    var('x y z')
    x0, y0, z0 = -0.5, -0.1, 0
    kolor = ['blue','red','green','black']

    #model
    F = x-x^3
    g, w = 0.5, 1

    #miejsca podwajania okresu
    Akeys = ['$a_1$','$a_2$','$a_3$','$a_4$']
    Aval  = [0.325,0.354,0.357,0.358]
    A = dict(zip(Akeys,Aval))

    p = A
    j=0
    for a in A.keys():
        dx, dy, dz = y, F - g*y + A[a]*cos(z), w
        T = srange(0,100*pi,0.01)
        num = desolve_odeint(vector([dx,dy,dz]), [x0,y0,z0], T, [x,y,z])
        start, stop = int(len(num[:,0])*0.8), len(num[:,0])
        p[a] = list_plot(zip(num[:,0][start:stop],num[:,1][start:stop]))
        j+=1
        
  Wystarczy teraz tylko narysować wykresy zmagazynowane w liście ``p``.

  .. figure:: images/sage_chII012_01.*
    :align: center
    :alt: chII01201

    Podwojenie okresu.


  .. code-block:: python

    bif_p = [0.34357,0.35506,0.35785,0.35846]
    i = 2
    delta_2 = (bif_p[i-1] - bif_p[i-2])/(bif_p[i] - bif_p[i-1])
    i = 3
    delta_3 = (bif_p[i-1] - bif_p[i-2])/(bif_p[i] - bif_p[i-1])


.. only:: html

  .. sagecellserver::
      :is_verbatim: True

    sage: # wykresy dla przypadku z tłumieniem
    sage: var('x y z')
    sage: x0, y0, z0 = -0.5,-0.1,0
    sage: kolor = ['blue','red','green','black','orange']
    sage: # siła
    sage: F = x-x^3
    sage: V = -integrate(F,x)
    sage: # tarcie: parametr gamma
    sage: g = 0.5
    sage: w = 1
    sage: #punkty bifurkacji: 0.34357;  0.35506; 0.35785; 0.35846;  ostatni 0.3586
    sage: Akeys = ['$a_1$','$a_2$','$a_3$','$a_4$']
    sage: Aval  = [0.325,0.354,0.357,0.358]
    sage: A = dict(zip(Akeys,Aval))
    sage: p = A
    sage: j=0
    sage: for a in A.keys():
    ...    # układ różniczkowych równań ruchu
    ...    dx = y
    ...    dy = F - g*y + A[a]*cos(z)
    ...    dz = w
    ...    # numeryczne rozwiazanie równań ruchu
    ...    T = srange(0,100*pi,0.01)
    ...    num = desolve_odeint(vector([dx,dy,dz]), [x0,y0,z0], T, [x,y,z])
    ...    figsize = [12,3] if a == '$a_4$' else 3.5
    ...    start, stop = int(len(num[:,0])*0.8), len(num[:,0])
    ...    p[a] = list_plot(zip(num[:,0][start:stop],num[:,1][start:stop]), plotjoined=1, color=kolor[j], axes_labels=['$x(t)$','$v(t)$'], legend_label='%s=%.5f'%(a,A[a]), figsize=figsize)
    ...    j+=1
    sage: html("""Układ równań różniczkowych
    sage: $\dot{x} = %s$
    sage: $\dot{y} = %s$
    sage: $\dot{z} = %s$
    sage: z warunkami początkowymi
    sage: $(x_0,y_0,z_0) = (%.2f,%.2f,%.2f)$
    sage: """%(dx,dy,dz,x0,y0,z0))
    sage: html.table([[p['$a_1$'],p['$a_2$'],p['$a_3$']]])
    sage: p['$a_4$'].show()
    sage: #
    sage: bif_p = [0.34357,0.35506,0.35785,0.35846]
    sage: i = 2
    sage: delta_2 = (bif_p[i-1] - bif_p[i-2])/(bif_p[i] - bif_p[i-1])
    sage: i = 3
    sage: delta_3 = (bif_p[i-1] - bif_p[i-2])/(bif_p[i] - bif_p[i-1])
    sage: html.table([['$\delta_2$',delta_2],['$\delta_3$',delta_3],['$\dots$',''],['$\lim_{n \to \infty} \delta_n$',4.6692]])

  .. end of input



Wykładniki Lapunowa
-------------------

Dla rozpatrywanego układu oscylatora Duffinga przestrzeń fazowa jest 3-wymiarowa. Dlatego też w rzeczywistości są 3 wykładniki Lapunowa, a nie 1 jak powiedzieliśmy powyżej.  Aby wyjaśnić ten problem, musimy rozważyć  zbiór warunków początkowych, które tworzą  kulę  :math:`K` w  badanej przestrzeni fazowej.  Jeżeli będziemy iterować równania dla :math:`x(t), y(t), z(t)` startując z wszystkich warunków początkowych w kuli :math:`K`,  to zbiór punktów zawartych początkowo w kuli zmieni swój kształt. Kula już nie będzie kulą. Prędkość z jaką  kula ulega deformacji we wszystkich 3 kierunkach :math:`(x, y, z)` w przestrzeni fazowej  jest określona przez 3 wykładniki Lapunowa :math:`\lambda_1, \lambda_2, \lambda_3`. Jeżeli badany układ jest chaotyczny, to zazwyczaj kula powiększa się w jednym kierunku, a maleje w dwóch pozostałych przyjmując kształt elipsoidy. W takim wypadku możemy zdefiniować trzy wykładniki Lapunowa mierzące deformacje elipsoidy w trzech wzajemnie prostopadłych kierunkach. Ilość wykładników Lapunowa jest więc zależna od wymiaru układu. Są one jednym z kryteriów chaotyczności ruchu.Jeżeli elipsoida w jednym kierunku rozciąga się, wielkość jej osi w tym kierunku rośnie i wykładnik Lapunowa jest dodatnie. W kierunkach, w których osie elipsoidy maleją, wykładniki Lapunowa są ujemne.

.. figure:: images/phspace.png
   :align: center
   :alt: Przestrzeń fazowa
   :width: 50%

   Schematyczna reprezentacja przestrzeni fazowej.


Dwie trajektorię leżące początkowo blisko siebie propagują w czasie w odległości   :math:`l(t)   \propto e^{\lambda_1 t}`, powierzchnia  :math:`S` zmienia się w tempie :math:`S(t)  \propto e^{(\lambda_1 + \lambda_2) t}`, a objętość  :math:`M` zmienia się w tempie :math:`M(t)  \propto e^{(\lambda_1 + \lambda_2 + \lambda_3) t}`. W reżimie chaotycznym co najmniej jeden z wykładników Lapunowa jest dodatni. Oznacza to, że w przestrzeni fazowej trajektorie rozbiegają się w jednym kierunku. Jeżeli wszystkie 3 wykładniki są ujemne, układ jest w reżimie regularnym (periodycznym, quasi-periodycznym). Nie ma metod analitycznych pozwalających obliczyć wykładniki Lapunowa. Metody numeryczne też nie są proste. W literaturze można znaleźć algorytmy służące do wyznaczania :math:`\lambda_1, \lambda_2, \lambda_3`.

W przypadku oscylatora Duffinga można otrzymać cząstkowe  informacje o wykładnikach Lapunowa.  

1. Trzecie równanie dla pomocniczej zmiennej :math:`z` można rozwiązać otrzymując funkcję

  .. MATH::
      :label: eqn8

      z(t) = \omega t + c 


  Z pewnością dwie bliskie sobie trajektorie :math:`z_1(t) = \omega t+c_1` oraz :math:`z_2(t) = \omega t + c_2` dla chwili   :math:`t=0` nie rozbiegają się eksponencjalnie ponieważ

  .. MATH::
      :label: eqn9

      |z_1(t) - z_2(t)| = |c_1 -c_2| 


  Dlatego też jeden z wykładników wynosi zero, np.

  .. MATH::
      :label: eqn10

      \lambda_2 = 0


2. Przypomnijmy w tym miejscu, że oscylator Duffinga jest opisany przez układ równań

  .. MATH::
      :label: eqn11

      \dot x = F_1 = y , \qquad x(0) = x_0,
      
      \dot y = F_2 = x - x^3 -\gamma y + A \cos z , \qquad y(0) = y_0,
      
      z = F_3 = \omega, \qquad z(0) = 0.


  Zbadajmy, jak zmienia się w czasie objętość fazowa układu.  W tym celu musimy obliczyć dywergencję pola wektorowego

  .. MATH::
      :label: eqn12

       div  \vec F = \frac{\partial F_1}{\partial x} + \frac{\partial F_2}{\partial y} + \frac{\partial F_3}{\partial z}  = -\gamma < 0


  Oznacza to, że objętość fazowa w przestrzeni 3-wymiarowej maleje w tempie (zobacz paragraf o układach dyssypatywnych)

  .. MATH::
      :label: eqn13

      M(t) \propto e^{-\gamma t}


Z drugiej strony, jak powiedzieliśmy powyżej, 

.. MATH::
    :label: eqn14

    M(t)  \propto e^{(\lambda_1 + \lambda_2 + \lambda_3) t}


Wynika stąd, że suma wszystkich wykładników jest stała i wynosi

.. MATH::
    :label: eqn15

    \lambda_1 + \lambda_2 + \lambda_3 = -\gamma  <  0


czyli tylko stała tłumienia :math:`\gamma` określa tempo malenia objętości fazowej.  Ponieważ :math:`\lambda_2 =0`, otrzymujemy interesujący związek pomiędzy dwoma pozostałymi wykładnikami: 

.. MATH::
    :label: eqn16

    \lambda_1 + \lambda_3 = -\gamma


W reżimie chaotycznym jeden z wykładników jest dodatni, np. :math:`\lambda_1 >0` oraz drugi wykładnik musi być ujemny, np. :math:`\lambda_3 < 0`.  Mamy obecnie następujące informacje o wykładnikach Lapunowa dla oscylatora  Duffinga: 

.. MATH::
    :label: eqn17

    \lambda_1  >  \lambda_2  >  \lambda_3, \qquad   \lambda_1 > 0, \qquad \lambda_2  = 0, \qquad   \lambda_3 < 0,  \qquad M(t) =  M(0)  e^{(\lambda_1 + \lambda_2 + \lambda_3) t} = M(0) e^{-\gamma t}


Zwracamy uwagę na to, że elipsoida  w 3-wymiarowej przestrzeni fazowej rozciąga się w jednym kierunku, kurczy się w drugim kierunku i nie zmienia się w trzecim kierunku  oraz objętość elipsoidy cały czas maleje.Tak to wygląda w reżimie chaotycznym. W reżimie nie-chaotycznym: elipsoida kurczy się  w jednym kierunku, kurczy się w drugim kierunku i nie zmienia się w trzecim kierunku  oraz objętość elipsoidy cały czas maleje. Atraktory, które pokazywaliśmy poprzednio, istnieją w 3-wymiarowej przestrzeni fazowej, ale ponieważ objętość fazowa cały czas maleje, wymiar atraktorów musi być mniejszy od 3. W reżimie nie-chaotycznym, n-okresowe atraktory  (krzywe) mają wymiar 1. Atraktory w reżimie chaotycznym mają wymiar większy niż 1, ale mniejszy niż 3. Kaplana i  Yorke (1979) postawili  hipotezę, że  istnieje związek pomiędzy wymiarem fraktalnym atraktora :math:`D_A`  a wykładnikami Lapunowa. Relacja ta ma postać:

.. MATH::
    :label: eqn18

     D_A = 2 +  \frac{\lambda_1}{|\lambda_3|}  >  2


Jeżeli analizujemy wymiar atraktora w odwzorowaniu Poincarego (na płaszczyźnie), to wymiar ten jest o 1 mniejszy: 

.. MATH::
    :label: eqn19

    d_A = D_A -1
    
Do dzisiaj jest to tylko hipoteza, choć w wielu przypadkach potwierdzona przez eksperymenty numeryczne.



Widmo mocy
----------

Jest to kolejna wielkość, która może być indykatorem chaotycznego zachowania się układu deterministycznego. Pojęcie widma mocy jest dobrze ugruntowane w teorii sygnałów, traktowanych jako nośnik informacji. W ogólności sygnały mogą być deterministyczne (jak w naszym przypadku) i losowe (stochastyczne). W sensie inżynierskim, sygnał to dowolna funkcja czasu.  Jako modele sygnałów wprowadza się również wielkości nazywane dystrybucjami (funkcjami uogólnionymi). Tylko  nieliczne proste sygnały można opisać formułami matematycznymi.  Większość sygnałów, z jakimi spotykamy się w praktyce, ma przebieg na tyle złożony i nieregularny, że ich bezpośredni opis  jako funkcji czasu jest kłopotliwy.  Dlatego też należy posługiwać się  ich różnego rodzaju reprezentacjami. Reprezentacja sygnału stanowi pewien rodzaj jego symbolicznego opisu, niekiedy o znacznym stopniu abstrakcji. Jej istotą jest to, że zawiera ona pełną informację o sygnale, choć zwykle wyrażoną w innym języku, niż bezpośredni język  w terminach funkcji czasu.  Oznacza to, że znając sygnał, możemy jednoznacznie wyznaczyć jego reprezentację, znając zaś tę reprezentację – odtworzyć jednoznacznie sygnał. Istnieje wiele sposobów reprezentacji sygnałów. Jednym z nich jest analiza furierowska za pomocą transformat Fouriera lub szeregów Fouriera.

Przypomnijmy pojęcie transformacji Fouriera funkcji lub dystrybucji. W najprostszym ujęciu transformatą  Fouriera :math:`{\hat f}(\omega)`  funkcji :math:`f(t)` nazywamy całkę 

.. MATH::
    :label: eqn20

    {\hat f}(\omega) = \int_{-\infty}^{\; \infty}  \mbox{e}^{i \omega t} f(t)  dt


gdzie :math:`\omega` jest dowolną liczbą rzeczywistą. 

Ponieważ nas interesuje ewolucja sygnału czasowego :math:`f(t) = (x(t),  y(t),  z(t), ...)` dla czasów :math:`t>0`, zdefiniujemy nieco inaczej transformatę  Fouriera  jako graniczną wartość całki:

.. MATH::
    :label: eqn21

    {\hat f}(\omega) = \lim_{T\to\infty}  \; \int_{0}^{\; T}  \mbox{e}^{i \omega t} f(t)  dt


W praktyce obliczeń komputerowych nigdy nie wykonujemy dokładnej granicy :math:`T\to \infty`, ale rozpatrujemy dostatecznie długi czas, gdy pojawia się stan ustalony i efekty przejściowe w ewolucji zanikają.  Ze względu na występowanie funkcji  podcałkowej  :math:`\mbox{e}^{i \omega t}`, transformata Fouriera jest  funkcją  zespoloną. Dlatego też bada się funkcję rzeczywistą w postaci

.. MATH::
    :label: eqn22

    P(\omega) = \lvert {\hat f}(\omega) \rvert^2


Nazywa się ona widmem mocy sygnału czasowego :math:`f(t)`. W pewnych przypadkach, faktycznie jest to wielkość fizyczna mająca interpretację mocy, a liczba  :math:`\omega` jest częstością, która jest wielkością dodatnią, :math:`\omega > 0`.  W dalszym ciągu przyjmiemy to założenie o dodatniości "częstości". W ogólności, jej związek z mocą ( w sensie fizycznym) jest luźny. To widmo mocy jest zdefiniowane inaczej niż w teorii stacjonarnych procesów stochastycznych: tam jest to transformacja Fouriera funkcji korelacyjnej :math:`C(t)`  procesu stochastycznego.

Aby wyrobić sobie intuicję o własnościach transformaty Fouriera i widma mocy, wystarczy rozpatrzeć kilka  przypadków funkcji :math:`f(t)`.

Przypadek 1
  Jedna harmonika  (fala monochromatyczna)

  .. MATH::
      :label: eqn23

      f_1(t) = A \cos (\Omega t), \qquad {\hat f}_1(\omega) = A  \int_{0}^{\; \infty}  \mbox{e}^{i \omega t} \cos(\Omega t)  dt =\frac{\pi }{2}  A  \delta(\omega - \Omega)


  Transformatą Fouriera jest delta Diraca :math:`\delta`, czyli w widmie mocy pojawia się jeden pik (który w praktyce jest zawsze skończony).

Przypadek 2
  Kilka harmonik

  .. MATH::
      :label: eqn24

      f_2(t) = \sum_{k=1}^{n} A_k \cos (\Omega_k  t), \qquad {\hat f}_2(\omega) = \sum_{k=1}^{n} A_k  \int_{0}^{\; \infty}  \mbox{e}^{i \omega t} \cos(\Omega_k t)  dt = \frac{\pi}{2}  \sum_{k=1}^{n} A_k   \delta(\omega - \Omega_k)


  Transformatą Fouriera jest suma przesuniętych delt Diraca :math:`\delta`, czyli w widmie mocy pojawia się szereg  pików (które w praktyce są  zawsze skończone).

Zauważmy, że dla tak zdefiniowanych  transformacji Fouriera nie istnieje widmo mocy, ponieważ w ścisłym sensie matematycznym nie istnieje :math:`\delta^2(\omega -\Omega)` dla delty Diraca. Jednak nie chodzi o precyzję matematyczną, ale o to że pojawia się pik, który nigdy nie jest nieskończony jak w delcie Diraca. My jednak potrzebujemy praktycznej metody sprawdzania chaotyczności procesu i zwykle sygnał próbujemy dla dyskretnych wartości czasu :math:`t`. Dlatego też należy wykorzystać aparat Dyskretnej Transformacji Fouriera, która  skończony ciągu sygnału

.. MATH::
    :label: eqn25

    \{x_0, x_1, x_2, ..., x_{N-1}\}


przekształca w skończony ciąg amplitud 

.. MATH::
    :label: eqn26

    \{A_0, A_1, A_2, ..., A_{N-1}\}


odpowiednich harmonik poprzez relacje: 

.. MATH::
    :label: eqn27

    A_k = \sum_{n=0}^{N-1}  x_n  \mbox{e}^{- 2\pi i k n/N}, \qquad x_n = \frac{1}{N}  \sum_{k=0}^{N-1}  A_k  \mbox{e}^{2\pi i k n/N}


Dla odpowiednio dużej liczby :math:`N` (w praktyce rzędu 100), zgodność pomiędzy transformatą Fouriera a Dyskretną Transformatą Fouriera jest zadziwiająco dobra. 

.. only:: html 

  .. sagecellserver::
      :is_verbatim: True

      sage: var('x y z')
      sage: g, w0 = 0.5, 1
      sage: x0, y0, z0 = 0.1, 0.1, 0
      sage: Aval = [0.325,0.354,0.357,0.358,0.4]
      sage: kolor = ['blue','red','green','black','orange']
      sage: p = []
      sage: j = 0
      sage: for a in Aval:
      ...    dx = y
      ...    dy = x - x**3 - g*y + a*cos(z)
      ...    dz = w0
      ...    h = 0.1
      ...    T = 1100
      ...    skip = 100
      ...    iskip = int(skip/h)
      ...    listT = srange(0,T,h, include_endpoint=0)
      ...    num = desolve_odeint(vector([dx, dy, dz]), [x0, y0, z0], listT, [x,y,z])        
      ...    iks = num[:,0].tolist()[iskip:]
      ...    freq = [i/(T-skip) for i in range(len(iks)/2)] +\
      ...           [-len(iks)/(T-skip) + i/(T-skip) for i in range(len(iks)/2,len(iks))]
      ...    freq = [f*2.*n(pi)/w0 for f in freq]
      ...    vx = vector(iks)
      ...    A = vx.fft().apply_map(lambda x:x.abs2())
      ...    p.append(list_plot(zip(freq,A.apply_map(lambda x:x.log())),plotjoined=1, color=kolor[j], legend_label=r"$a = %.3f$"%a,figsize=[10,3]))
      ...    j += 1
      sage: #
      sage: xx = 1.1
      sage: sum(p).show(figsize=[10,3],xmin=-xx,xmax=xx,axes_labels=[r'$k 2 \pi/\omega$',r'$A_k$'])
      sage: for _p in p:
      ...    show(_p,xmin=0,xmax=xx,axes_labels=[r'$k 2 \pi/\omega$',r'$A_k$'])


  .. end of input

.. only:: latex

  .. code-block:: python

    var('x y z')
    g, w0 = 0.5, 1
    x0, y0, z0 = 0.1, 0.1, 0
    Aval = [0.325,0.354,0.357,0.358,0.4]
    kolor = ['blue','red','green','black','orange']
    p = []
    j = 0
    for a in Aval:
      dx, dy, dz = y, x - x**3 - g*y + a*cos(z), w0
      h, T = 0.1, 1100
      skip = 100
      iskip = int(skip/h)

      listT = srange(0,T,h)
      num = desolve_odeint(vector([dx, dy, dz]), 
                           [x0, y0, z0], listT, [x,y,z])        

      iks = num[:,0].tolist()[iskip:]  
      li = len(iks)
      freq = [i/(T-skip) for i in range(li/2)] +\
             [-li/(T-skip) + i/(T-skip) for i in range(li/2,li)]
      freq = [f*2.*n(pi)/w0 for f in freq]

      vx = vector(iks)
      A = vx.fft().apply_map(lambda x:x.abs2())
      p.append(list_plot(zip(freq,A.apply_map(lambda x:x.log()))))

      j += 1

  .. image:: images/sage_chII012_02a.*
    :align: center
    :width: 60%

  .. image:: images/sage_chII012_02b.*
    :align: center
    :width: 60%

  .. image:: images/sage_chII012_02c.*
    :align: center
    :width: 60%

  .. image:: images/sage_chII012_02d.*
    :align: center
    :width: 60%

  .. image:: images/sage_chII012_02e.*
    :align: center
    :width: 60%

  .. figure:: images/sage_chII012_02.*
    :align: center
    :width: 60%
    :alt: chII01202

    Podwojenie okresu - widmo mocy.

Funkcja korelacyjna
-------------------

Jeżeli badamy deterministyczny proces, nie zawsze jest sens mówić o wartości średniej,  w takim sensie jak w teorii procesów stochastycznych lub na wykładach z fizyki statystycznej: uśrednianie po realizacjach lub po zespole statystycznym . Ale jeżeli proces deterministyczny jest ergodyczny (trudne pojęcie!), to średnia wartość jest dobrze określona i średnia po zespole  jest równoważna średniej po czasie.  Jeżeli dodatkowo  proces jest stacjonarny, to można zdefiniować funkcję korelacyjną :math:`C(\tau)`  dla procesu deterministycznego. W naszym przypadku: dla położenia lub prędkości, jest ona zdefiniowana przez relacje:

.. MATH::
    :label: eqn28

    C(\tau) = \lim_{T\to \infty}   \frac{1}{T}   \int_0^{\; T}  [x(t+\tau) - \langle x(t+\tau)\rangle]  [ x(t) - \langle x(t)\rangle]  dt, 
    
    \langle x(t)\rangle = \lim_{T\to \infty}   \frac{1}{T}   \int_0^{\; T}   x(t)  dt.

Jeżeli mamy rozwiązanie równania ruchu :math:`x(t)`, to w zależności od postaci tego rozwiązania również SAGE poradzi sobie z rozwiązaniem całki. Jeżeli analityczny wzór będzie poza możliwościami obliczeń symbolicznych, zawsze możemy wygenerować sobie szereg czasowy :math:`x = \{x_1, x_2, \dots \}`. Realizacja funkcji korelacyjnej w SAGE nie będzie stanowić problemu numerycznego. Możemy pokusić się o samodzielne sformułowanie problemu, lub skorzystać z metod pakietu ``finance``.

.. code-block:: python

    def korelator(dane, tau=0):
        ret = None
        if tau == 0:
            return 1
        else:
            tau = abs(tau)
            m = mean(dane)
            dane = [dane[i] - m for i in xrange(len(dane))]
            v = vector(dane)    
            sigma = v.dot_product(v)
            if tau < len(dane):
                ret = v[:-tau].dot_product(v[tau:])
            ret /= sigma
        return ret


Teraz obliczymy sobie ową funkcję korelacji dla oscylatora Duffinga.

.. only:: latex

  .. code-block:: python

    var('x y z')
    a, g, w0 = 0.3, 0.26, 1
    x0, y0, z0 = 0.1, 0.1, 0

    dx = y
    dy = x - x**3 - g*y + a*cos(z)
    dz = w0

    h = 0.1
    T = 1000
    lT = srange(0,T,float(h), include_endpoint=True)
    num = desolve_odeint(vector([dx,dy,dz]),[x0,y0,z0],lT,[x,y,z])


Skorzystamy zarówno z naszej funkcji jak i z wbudowanego w SAGE pakietu ``finance``, 
obliczając funkcję (auto)korelacji dla położenia i dla prędkości.


.. only:: latex

  .. code-block:: python

    #x
    dane = num[:,0].tolist()

    # nasz korelator
    my_acorr = [korelator(dane,i*10) for i in range(33)]

    # funkcja SAGE
    v = finance.TimeSeries(dane)
    sage_acorr = [v.autocorrelation(i*10) for i in range(33)]

  .. figure:: images/sage_chII012_03.*
    :align: center
    :width: 60%
    :alt: chII01202

    Funkcja korelacyjna.


.. only:: html

  .. sagecellserver::
      :is_verbatim: True

      sage: def korelator(dane, tau=0):
      sage:   ret = None
      sage:   if tau == 0:
      sage:       ret = 1
      sage:   else:
      sage:       tau = abs(tau)
      sage:       m = mean(dane)
      sage:       dane = [dane[i] - m for i in xrange(len(dane))]
      sage:       v = vector(dane)    
      sage:       sigma = v.dot_product(v)
      sage:       if tau < len(dane):
      sage:           ret = v[:-tau].dot_product(v[tau:])
      sage:       ret /= sigma
      sage:   return ret
      sage: #
      sage: var('x y z')
      sage: a, g, w0 = 0.3, 0.26, 1
      sage: x0, y0, z0 = 0.1, 0.1, 0
      sage: dx = y
      sage: dy = x - x**3 - g*y + a*cos(z)
      sage: dz = w0
      sage: h = 0.1
      sage: T = 1000
      sage: listT = srange(0,T,float(h), include_endpoint=True)
      sage: num = desolve_odeint(vector([dx, dy, dz]), [x0, y0, z0], listT, [x,y,z])
      sage: #x
      sage: dane = num[:,0].tolist()
      sage: # nasz korelator
      sage: my_acorr = [korelator(dane,i*10) for i in range(33)]
      sage: # funkcja SAGE
      sage: v = finance.TimeSeries(dane)
      sage: sage_acorr = [v.autocorrelation(i*10) for i in range(33)]
      sage: (list_plot(my_acorr, plotjoined=1) + list_plot(sage_acorr, plotjoined=0, size=30, color='red')).show(figsize=[8,3], axes_labels=[r"$\tau$",r"$C(\tau)$"])

  .. end of input

Powyższe rachunki możemy powtórzyć dla wszystkich punktów o których była mowa przy omawianiu bifurkacji.

.. only:: html

  .. sagecellserver::
      :is_verbatim: True

      sage: var('x y z')
      sage: g, w0 = 0.5, 1
      sage: x0, y0, z0 = 0.1, 0.1, 0
      sage: Aval = [0.325,0.354,0.357,0.358,0.4]
      sage: p, ps = [], []
      sage: kolor = ['blue','red','green','black','orange']
      sage: j = 0
      sage: for a in Aval:
      ...    dx = y
      ...    dy = x - x**3 - g*y + a*cos(z)
      ...    dz = w0
      ...    h = 0.1
      ...    T = 2000
      ...    listT = srange(0,T,h, include_endpoint=True)
      ...    num = desolve_odeint(vector([dx, dy, dz]), [x0, y0, z0], listT, [x,y,z])
      ...    d = (num[:,0]-mean(num[:,0])).tolist()
      ...    v = finance.TimeSeries(d)
      ...    kor = [v.autocorrelation(i*5) for i in range(len(d)/5)]
      ...    p.append(list_plot(kor, plotjoined=1, color=kolor[j], legend_label=r"$a = %.3f$"%a))
      ...    ps.append(list_plot(kor[:len(kor)/20], plotjoined=1, color=kolor[j], legend_label=r"$a = %.3f$"%a))
      ...    #list_plot(zip(d,num[:,1].tolist()),plotjoined=1,color='red').show()
      ...    j += 1
      sage: #wykresy    
      sage: sum(p).show(axes_labels=[r'$\tau$',r'$C(\tau)$'], figsize=[8,3])
      sage: sum(ps).show(axes_labels=[r'$\tau$',r'$C(\tau)$'], figsize=[8,3])

  .. end of input

.. only:: latex

  .. image:: images/sage_chII012_04.*
    :align: center
    :width: 60%

  .. figure:: images/sage_chII012_04a.*
    :align: center
    :width: 60%
    :alt: chII01202

    Funkcja autokorelacyjna.



Odwzorowanie (cięcie) Poincarego
--------------------------------

Odwzorowanie Poincarego jest innym przedstawieniem dynamiki układu.  Najprościej jest to wytłumaczyć na przykładzie oscylatora Duffinga. Jego przestrzeń fazowa jest 3-wymiarowa. Ruch w trzecim wymiarze jest jednostajny, :math:`z(t) = \omega_0 t`. Rzut orbity na płaszczyznę  :math:`(x, y)` jest przedstawiony w postaci krzywych fazowych w poprzednich częściach książki. 

.. figure:: images/poincare_section.png
   :align: center
   :alt: 

   Konstrukcja cięcia Poincarego.


Jak widać, we wszystkich przykładach krzywe fazowe na płaszczyźnie są ograniczone na pewnym obszarze :math:`(x, y)`. We wszystkich rozpatrywanych przypadkach ruch wydaje się być prawie-periodyczny: układ ciągle  powraca w te same obszary. Można zbudować następujące przedstawienie tego ruchu. 

Okres siły periodycznej wynosi

.. MATH::
    :label: eqn29

    T = \frac{2\pi}{\omega_0}


Wprowadzamy dyskretny czas

.. MATH::
    :label: eqn30

    t_n = n T, \qquad n=1,  2,  3,  ...


Zapisujemy położenie i prędkość cząstki w dyskretnych chwilach czasu:

.. MATH::
    :label: eqn31

     x_n = x(t_n), \qquad y_n = y(t_n), \qquad x(0) = x_0, \qquad y(0) = y_0


Współrzędne tych punktów nanosimy na płaszczyznę. Otrzymujemy odwzorowanie które nazywamy odwzorowaniem Poincarego. Obrazowo mówiąc można w 3-wymiarowej przestrzeni fazowej wprowadzić płaszczyznę, tak aby nigdzie nie była styczna do trajektorii i była transwersalna do trajektorii (ściślej mówiąc do potoku fazowego), czyli aby trajektoria przecinała płaszczyznę, a nie była równoległa do niej (nie omijała jej).

.. only:: html

  .. figure:: images/poincare_animate.gif
     :align: center
     :alt: 

     Konstrukcja cięcia Poincarego.




Odwzorowanie Poincarego to przyporządkowanie:

.. MATH::
    :label: eqn32

    x_{n+1} = \mathcal{G}(x_n)


Jawna konstrukcja tego odwzorowania z wyjściowego układu równań  różniczkowych jest możliwa tylko w bardzo specjalnych przypadkach. W przypadku oscylatora Duffinga, nie można otrzymać jawnej postaci tego odwzorowania. Jedynie użycie komputera pozwala na graficzne przedstawienie funkcji :math:`\mathcal{G}`.

Jakie wnioski płyną z takiego przedstawienia.

1. Gdyby trajektoria była krzywą zamkniętą w kształcie elipsy (atraktor o okresie 1) to na cięciu Poincarego otrzymalibyśmy 1 punkt:


.. figure:: images/poincare_period1.png
   :align: center
   :alt: 

   Atraktor o okresie 1.



2. Gdyby trajektoria była atraktorem  o okresie 2  to na cięciu Poincarego otrzymalibyśmy 2 punkty:


.. figure:: images/poincare_period2.png
   :align: center
   :alt: 

   Atraktor o okresie 2.




3. Gdyby trajektoria była chaotyczna, to za każdym razem przebiega przez inne punkty płaszczyzny i tworzy zbiór składający się z nieskończenie wielu punktów. Poniżej pokazano takie odwzorowanie dla oscylatora Duffinga.


.. figure:: images/chaotic_duffing.png
   :align: center
   :alt: 

   Dziwny atraktor.



Jeżeli jesteśmy w stanie zbudować graficznie przedstawienie Poincarego danego układu dynamicznego z ciągłym czasem, wówczas możemy rozpoznać takie reżimy które są "podejrzane" o własności chaotyczne.  Numerycznie nie powinno nastręczać to większych problemów. Jeżeli znamy :math:`\omega_0` bądź okres powrotu do obliczenia cięcia to wystarczy wykorzystać poniższy kod Sage. Zwracamy jedynie uwagę na to, że odpowiednio "gęsty" obraz uzyskamy dla bardzo długich przebiegów (dużych T).

.. only:: latex

  .. code-block:: python

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
    lT = srange(0,T,float(h), include_endpoint=True)
    sol = desolve_odeint(vector([dx,dy,dz]),[x0,y0,z0],lT,[x,y,z])


.. only:: html

  .. sagecellserver::
      :is_verbatim: True

      sage: var('x y z')
      sage: # parametry układu równań różniczkowych
      sage: a, g = 0.3, 0.26
      sage: # częstotliwość (do obliczania cięcia Poincarego)
      sage: w0 = 1
      sage: # wartości początkowe
      sage: x0, y0, z0 = 0.1, 0.1, 0
      sage: #układ równań różniczkowych
      sage: dx = y
      sage: dy = x - x**3 - g*y + a*cos(z)
      sage: dz = w0
      sage: #krok co jaki wypełniać się ma nasza lista 
      sage: #rozwiązań ustawiamy równy okresowi
      sage: h = 2.0*pi/w0
      sage: ###
      sage: #symulacje
      sage: ###
      sage: T = 10000
      sage: listT = srange(0,T,float(h), include_endpoint=True)
      sage: sol = desolve_odeint(vector([dx, dy, dz]), [x0, y0, z0], listT, [x,y,z])
      sage: #i sam rysunek cięcia
      sage: points(zip(sol[:,0],sol[:,1]), figsize=(8,4), axes_labels=["$x(n\cdot2 \pi/\omega)$","$v(n\cdot2 \pi/\omega)$"], frame=1, axes=0, size=1)

  .. end of input


Przykłady chaosu w Naturze
--------------------------

Należy odróżnić procesy  chaotyczne  od procesów losowych. Procesy chaotyczne są deterministyczne, a procesy stochastyczne są procesami losowymi.  Procesy chaotyczne są badane przez matematyków, fizyków, chemików, biologów, socjologów, meteorologów, astrofizyków, w teorii informacji i neurobiologii. We wszystkich tych gałęziach nauki, występują  deterministyczne modele wykazujące własności chaotyczne. Od lat 60-tych XX wieku opublikowano tysiące prac na temat układów chaotycznych.  Matematycy mówią, że prawie wszystkie układy dynamiczne są chaotyczne, a tylko nieliczne układy nie wykazują tej własności. Matematycy dowodzą, że przestrzeń fazowa układu modelowanego przez autonomiczny układ równań różniczkowych musi być co najmniej 3-wymiarowa, aby istniał chaos. Dla układów dyskretnych nie ma takich ograniczeń: jedno równanie  rekurencyjne :math:`x_{n+1} = f(x_n)`  także wykazuje własności chaotyczne. 

Poniżej podajemy kilka przykładów rzeczywistych zjawisk wykazujących własności chaotyczne. 

1. Dynamika cieczy i turbulencja

2. Lasery

3. Układy elektroniczne

4. Plazma

5. Reakcje chemiczne


Na stronie internetowej Wikipedii  z hasłem *Chaos Theory*  można znaleźć dalsze przykłady oraz podstawowe prace na ten temat. Na zakończenie tej części książki musimy wspomnieć o człowieku, który to wszystko zapoczątkował w 1961 roku. Był to Edward Lorenz, matematyk i meteorolog amerykański,  który analizował jeden z najprostszych modeli pozwalających przewidywać pogodę. To z jego nazwiskiem związany jest  "efekt motyla" obrazujący niezwykłą czułość dynamiki na zaburzenia warunków  początkowych: czy ruch motyla w Brazylii może spowodować tornado w Teksasie (ściśle rzecz ujmując to Philip Merilees zasugerował  Lorenzowi taki tytuł wykładu podczas posiedzenia American Association for the Advancement of Science w 1972 roku). W tym obrazowym powiedzeniu zawarta jest istota chaosu: Motyl poprzez swój lot zaburza lokalnie ruch powietrza. Ten zaburzony ruch powietrza narasta i powoduje coraz to większe zmiany pogodowe, zmienia radykalnie "trajektorię"  doprowadzając do tornada, które pojawi się nad Teksasem. Czy faktycznie motyl może być  taki groźny?







