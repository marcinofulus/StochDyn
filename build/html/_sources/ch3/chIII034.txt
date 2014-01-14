Geometryczny ruch Browna
========================

Załóżmy, że posiadamy określoną kwotę pieniędzy i chcemy ją ulokować w banku, który w zamian oferuje odsetki w ramach proponowanych stóp procentowych. W chwili :math:`t` posiadamy :math:`X(t)` złotych. Ile dostaniemy pieniędzy z banku po czasie :math:`t+ \Delta t`. Oznaczmy kwotę po tym czasie jako :math:`X(t+\Delta t)`. Kwota po czasie :math:`t+\Delta t` to kwota jaka ulokowaliśmy plus kwota z oprocentowania: 

.. MATH::
 :label: eqn1

 X(t+\Delta t) = X(t) + \delta X(t)\,

Pierwszy składnik jest kwotą jaką lokujemy w chwili :math:`t`. Drugi składnik jest kwotą jaką otrzymamy z oprocentowania lokaty. Ile wynosi ten dodatek? Ta dodatkowa kwota to 

.. MATH::
 :label: eqn2

  \delta X(t) = c X(t) \Delta t\,

Wyrażenie to ma jasną interpretacje: Im więcej ulokujemy w chwili :math:`t` (tzn. większe :math:`X(t)` ) tym więcej otrzymamy; im dłużej będzie trwała lokata (tzn. większe :math:`\Delta t`) tym więcej otrzymamy. Współczynnik :math:`c` zależy od stopy procentowej lokaty: im większe oprocentowanie tym większa wartość :math:`c` i tym więcej otrzymamy z lokaty. Uwzględniając te dwa składniki otrzymamy równanie na przyrost naszych pieniędzy 

.. MATH::
 :label: eqn3

 X(t+\Delta t) - X(t) = c X(t) \Delta t\,

Załóżmy teraz, że oprocentowanie scharakteryzowane przez wielkość :math:`c` nie jest ustalone, ale w każdej chwili waha się losowo, to znaczy 

.. MATH::
 :label: eqn4

 c \to c + \xi(t)\,

gdzie :math:`\xi(t)` opisuje losowe wahania oprocentowania. Innymi słowy jest to jakiś proces stochastyczny. Wówczas nasze równanie będzie miało postać 

.. MATH::
 :label: eqn5

 X(t+\Delta t) - X(t) = [c + \xi(t)]\, X(t) \Delta t

Z lewej strony mamy przyrost naszych pieniędzy 

.. MATH::
 :label: eqn6

 \Delta X(t) = X(t+\Delta t) - X(t) \,

Jeżeli teraz :math:`\Delta t` jest nieskończenie małe, to nasze równanie ma postać równania stochastycznego

.. MATH::
 :label: eqn7

 dX(t) = c X(t) dt + \xi(t)\, X(t) dt

Banki nie stosują losowych wahań oprocentowania, ale powyższy model można zastosować do cen akcji na giełdzie. Tam ceny zmieniają się w każdej chwili i w tych zmianach można odnaleźć część przewidywalnych (deterministycznych) zmian opisywanych parametrem :math:`c` i część zmian losowych opisywanych funkcją losową :math:`\xi(t)`. Jeżeli te zmiany podobne są do losowych zmian położenia cząstki Browna, to :math:`\xi(t)` jest białym szumem Gaussowskim

.. MATH::
 :label: eqn8

 \xi(t) = \Gamma(t)\,

Jak wiemy biały szum Gaussowski jest pochodną procesu Wienera :math:`W(t)`, to znaczy 

.. MATH::
 :label: eqn9

 \Gamma(t) = \frac{dW(t)}{dt}\,

lub równoważnie 

.. MATH::
 :label: eqn10

 \Gamma(t) dt = dW(t)\, \qquad \langle dW(t) \rangle = 0, \qquad \langle[dW(t)]^2 \rangle = 2D dt

Stąd wynika, że równanie przyjmuje postać

.. MATH::
 :label: eqn11

 dX(t) = c X(t) dt + X(t) d W(t)\,


gdzie :math:`c` nazywa się średnią stopą zwrotu, a parametr :math:`D` nazywa się zmiennością (chwiejnością) cen akcji. Równanie to ma postać równania Ito i dlatego wnioskujemy, że proces stochastyczny :math:`X(t)` jest procesem Markowa. Ponadto jest to proces dyfuzji opisywany równaniem Fokkera-Plancka. Równanie to zostało zaproponowane do opisu zjawisk ekonomicznych na przełomie lat pięćdziesiątych i sześćdziesiątych XX w. niezależnie przez Osborne’a (1959) i Samuelsona (1965). Równanie to opisuje proces stochastyczny, który nazywa się w literaturze *geometrycznym procesem Wienera*. Równanie to jest jednym z podstawowych elementów modelu wyceny opcji Blacka-Scholesa. Teoria ta została nagrodzona Nagrodą Nobla z ekonomii w roku 1997, a opracowana przez absolwenta fizyki i doktora matematyki Fischera Blacka oraz ekonomistę Myrona Scholesa. Teoria Blacka-Scholesa pozwala na wycenę wartości tzw. finansowych instrumentów pochodnych, czyli opcji, oraz służy do optymalizacji "bezpiecznego" portfela inwestycyjnego.

Równanie powyższe jest jedną z możliwych propozycji. Po pierwsze, należy rozstrzygnąć problem interpretacji tego równania: czy jest to wersja Ito czy wersja Stratonowicza, a może jeszcze inna. Po drugie, proces Wienera można zastąpić innymi procesami. Mogą to być różne odmiany procesu Poissona czy ogólniej Levy'ego. Wszystkie te procesy to procesy o przyrostach niezależnych. Można modelować fluktuacje cen akcji przez procesy skorelowane, procesy o zależnych przyrostach. Widać, że ten problem cen akcji na giełdzie daje niesłychanie szerokie pole do modelowania. To z kolei pozwala na daleko idące modyfikacje innych modeli, jak na przykład modelu Blacka-Scholesa.



.. only:: latex

  .. code-block:: python
     
     h = 0.01
     x0 = 1
     c = 0.1
     D = 0.01

     x = [x0]
     N = 100
     for i in xrange(N):
       x.append((1 + c*h + sqrt(2*h*D)*normalvariate(0,1))*x[i])
     list_plot(zip(srange(0,N*h,h),x))
     

  .. figure:: images/sage_chIII033_01.*
    :align: center
    :width: 80%
    :alt: figchIII03201

    Relizacja geometrycznego ruchu Browna.


.. only:: html

  .. sagecellserver::
     :is_verbatim: True

     h = 0.01
     x0 = 1
     c = 0.1
     D = 0.01

     x = [x0]
     N = 100
     for i in xrange(N):
       x.append((1 + c*h + sqrt(2*h*D)*normalvariate(0,1))*x[i])
     p = list_plot(zip(srange(0,N*h,h),x))
     p.axes_labels([r'$t$',r'$x(t)$'])
     p.show(figsize=[8,3])

  .. end of input




Analiza geometrycznego ruchu Browna
-----------------------------------

Założymy (wzorem większości autorów), że równanie

.. MATH::
 :label: eqn12

 dX(t) = \mu X(t) dt + X(t) d W(t)\, 
 
 X(t) \ge 0, \qquad \langle dW(t) \rangle = 0, \qquad \langle[dW(t)]^2 \rangle = 2D dt


jest równaniem w interpretacji Ito. Później zbadamy to równanie gdy założymy interpretację Stratonowicza. Równanie Fokkera-Plancka dla dla 1-wymiarowej gęstości prawdopodobieństwa :math:`p(x, t)` ma postać

.. MATH::
 :label: eqn13

 \frac{\partial p(x, t)}{\partial t} = - c \frac{\partial}{\partial x} [x p(x, t)] + D \frac{\partial^2}{\partial x^2} x^2 p(x, t),
 
 p(x, 0) =p(x), \qquad x \ge 0


gdzie :math:`p(x)` jest początkowym rozkładem prawdopodobieństwa. Rozwiążemy to równanie metodą zamiany zmiennych. Zdefiniujemy nową zmienną :math:`y` jako

.. MATH::
 :label: eqn14

 y=\ln x, \qquad x = e^y


Jeżeli dokonujemy zamiany zmiennych to musimy pamiętać, że gęstość prawdopodobieństwa także ulega transformacji wg zależności

.. MATH::
 :label: eqn15

 p(x, t) dx = f(y, t) dy,
 
czyli

.. MATH::
   :label: eqn15a
  
   f(y, t) = p(x, t) \frac{dx}{dy} = e^y p(x, t) = x p(x, t)

oraz

.. MATH::
   :label: eqn15b
  
   p(x, t) = f(y, t) \frac{dy}{dx} = \frac{1}{x} f(y=\ln x, t).


Następnie musimy zamienić różniczkowanie względem :math:`x` na różniczkowanie względem :math:`y`: 

.. MATH::
 :label: eqn16

 \frac{\partial}{\partial x} [x p(x, t)] = \frac{\partial y}{\partial x} \frac{\partial}{\partial y} f(y, t) = \frac{1}{x} \frac{\partial}{\partial y} f(y, t)


oraz

.. MATH::
 :label: eqn17

 \frac{\partial^2}{\partial x^2} [x^2 p(x, t)] = \frac{\partial }{\partial x} \frac{\partial}{\partial x} [x f(y, t)] =
 
 = \frac{\partial}{\partial x} \left\{ \frac{\partial y}{\partial x} \frac{\partial}{\partial y} [ x f(y, t)] \right\} = \frac{\partial}{\partial x} \left\{ \frac{1}{x} \frac{\partial}{\partial y} [e^y f(y, t)] \right\} =
 
 = \frac{1}{x} \frac{\partial}{\partial y} \left\{ \frac{1}{x} \left(e^y f(y, t) + e^y \frac{\partial}{\partial y} f(y, t)\right) \right\} = \frac{1}{x} \frac{\partial}{\partial y} \left\{ f(y, t) + \frac{\partial}{\partial y} f(y, t)\right\} 


W obu wyrażeniach występuje wyraz :math:`1/x`, który przeniesiemy na lewą stronę równania Fokkera-Plancka: :math:`x p(x, t) = f(y, t)`. Ostatecznie otrzymamy przetransformowane równanie Fokkera Plancka w postaci

.. MATH::
 :label: eqn18

 \frac{\partial f(y, t)}{\partial t} = - [c -D] \frac{\partial}{\partial y} f(y, t) + D \frac{\partial^2}{\partial y^2} f(y, t)


Takie równanie spełnia proces, którego równanie Ito ma postać:

.. MATH::
 :label: eqn19

 dY = (c - D) dt + dW(t)


Równanie to łatwo scałkować:

.. MATH::
 :label: eqn20

 Y(t) = Y(0) + (c - D) t + W(t)


Ponieważ jest to liniowa transformacja procesu Gaussa :math:`W(t)` to proces :math:`Y(t)` jest także procesem Gaussa. Więc nie musimy rozwiązywać równani Fokkera-Plancka, aby podać jawną postać gęstości rozkładu :math:`f(y, t)`. Wystarczy obliczyć wartość średnią oraz wariancję procesu :math:`Y(t)`:

.. MATH::
 :label: eqn21

 \mu_y(t)=\langle Y(t)\rangle=\langle Y(0) + (c - D) t + W(t)\rangle=\langle Y(0)\rangle + (c-D) t, 
 
 \langle Y^2(t)\rangle=\langle [Y(0) + (c - D) t + W(t)\rangle]^2 \rangle =\langle Y^2(0)\rangle + 2 (c-D) t \langle Y(0)\rangle + (c-D)^2 t^2 + 2Dt


.. MATH::
 :label: eqn22

 \sigma_y^2(t) = \langle Y^2(t)\rangle - \langle Y(t)\rangle^2 = \sigma_y^2(0) + 2Dt,
 
 \sigma_y^2(0) = \langle Y^2(0)\rangle - \langle Y(0)\rangle^2 .


Gęstość prawdopodobieństwa :math:`f(y, t)` ma postać funkcji Gaussa:

.. MATH::
 :label: eqn23

 f(y, t) = \frac{1}{\sqrt{2\pi \sigma_y^2(t)} }\; \exp\left\{ - \frac{[y-\mu_y(t)]^2}{2\sigma_y^2(t)}\right\} 


Wyjściowa gęstość prawdopodobieństwa :math:`p(x, t)` wyraża się wzorem: 

.. MATH::
 :label: eqn24

 p(x, t) = f(y, t) \frac{dy}{dx} = \frac{1}{x} f(y=\ln x, t) = \frac{1}{x \sqrt{2\pi \sigma_y^2(t)} }\; \exp\left\{ - \frac{[\ln x - \mu_y(t)]^2}{2\sigma_y^2(t)}\right\} 


i nazywa się rozkładem log-normalnym. Poniżej znadziecie jego wykres.

.. only:: latex

  .. code-block:: python

    var('x,d,c,t')
    fl(x,c,d,t) = exp(-(ln(x)-(c-d)*t)^2/(4*pi*t)) / (x*sqrt(4*pi*t))
    p=plot(fl(x,2,1,2),(x,0,4),color="red",legend_label="c=2,D=1,t=2")
    p+=plot(fl(x,2,2,2),(x,0,4),legend_label="c=2,D=2,t=2")

  .. figure:: images/sage_chIII033_02.*
     :alt: figIII03302
     :width: 60%
     :align: center

     Rozkład log-normalny.


.. only:: html

  .. sagecellserver::
    :is_verbatim: True

    var('x,D,c,t')
    fl(x,c,D,t) = exp(-(ln(x)-(c-D)*t)^2/(4*pi*t)) / (x*sqrt(4*pi*t))
    p1=plot(fl(x,2,1,2), (x,0,4),color="red",figsize=(6,3), legend_label="c=2, D=1,t=2")
    p2=plot(fl(x,2,2,2), (x,0,4),color="blue",figsize=(6,3), axes_labels=[r'$x$',r'$p(x,t)$'],legend_label="c=2, D=2,t=2")
    show(p1+p2)
     
  .. end of input


Jeżeli początkowa wartość procesu :math:`X(0) = X_0` jest dana (wiemy, ile na początku mamy pieniędzy ulokowanych w akcjach) to

.. MATH::
 :label: eqn25

 \sigma_y^2(0) = \langle Y^2(0)\rangle - \langle Y(0)\rangle^2 = \langle [\ln X_0]^2\rangle - \langle \ln X_0\rangle^2 =[ \ln X_0]^2 - [\ln X_0]^2 = 0


W tym przypadku 

.. MATH::
 :label: eqn26

 \mu_y(t) = \ln X_0 + (c-D)t, \qquad \sigma_y^2(t) = 2Dt


Momenty statystyczne wyjściowego procesu :math:`X(t)` dane są formułą

.. MATH::
 :label: eqn27

 \langle X^n(t)\rangle = \int_{0}^{\; \infty} x^n p(x, t) dx = e^{\mu(t) n + Dt n^2 } 


i można je łatwo wyliczyć korzystając z Sage


.. only:: latex

  .. code-block:: python

     var('x,m,D,n,t')
     assume(t>0)
     assume(D>0)
     assume(n>0)
     g = ((e^(n*x))/sqrt(4*pi*D*t))*exp(-(x-m)^2/(4*D*t))
     integrate(g,x,-oo,oo)
     

  Co powinno obliczyć daną całkę

  .. MATH::
     :label: eqnplus

     e^{Dn^t + mn}


.. only:: html

  .. sagecellserver::
     :is_verbatim: True

     var('x,m,D,n,t')
     assume(t>0)
     assume(D>0)
     assume(n>0)
     g = ((e^(n*x))/sqrt(4*pi*D*t))*exp(-(x-m)^2/(4*D*t))
     i = integrate(g,x,-oo,oo)
     show(i)

  .. end of input



W szczególności wartość średnia i wariancja (fluktuacje) procesu wynoszą

.. MATH::
 :label: eqn28

 \mu_x(t)=\langle X(t)\rangle=X_0 e^{ct},
 
 \sigma_x^2(t) =\langle X^2(t)\rangle- \langle X(t)\rangle^2=X^2_0 e^{2ct} [e^{2Dt} - 1].

Zauważmy, że zarówno wartość średnia jak i fluktuacje narastają eksponencjalnie w czasie. Warto też obliczyć kurtozę i skośność dla tego modelu.

Model ten w zastosowaniu do rynków finansowych posiada zarówno pozytywne elementy jak i negatywne elementy. Niewątpliwie pozytywnym elementem jest to że :math:`X(t)` przyjmuje tylko dodatnie wartości (nie ma ujemnych pieniędzy). Z drugiej strony, parametr :math:`D` często zmienia się, tu założono jego stałość.


