Rachunki w całkach Ito - Stratonowicza
======================================

Przedstawimy użyteczne formuły, które pojawiają się w teorii Ito i Stratonowicza. Ograniczymy się do przypadku 1-wymiarowego, tzn. jednego równania stochastycznego w interpretacji Ito: 

.. MATH::
 :label: eqn1

 dX = F(X) dt + G(X) dW(t) 


gdzie proces Wienera ma charakterystyki

.. MATH::
 :label: eqn2

 \langle dW(t) \rangle = 0, \qquad \langle[dW(t)]^2 \rangle = 2D dt

Stąd, w sensie średniokwadratowym 

.. MATH::
 :label: eqn3

 dW(t) = \sqrt{2D dt}

Powyższe relacje są bardzo ważne dla zrozumienia rachunku Ito, który różni się od znanego w klasycznej analizie matematycznej.


Rachunek różniczkowy Ito
------------------------
 
Rozpatrzmy teraz funkcję dwóch zmiennych :math:`g(x, t)`, która jest różniczkowalna dostateczną ilość razy. W szczególności zakładamy, że istnieją pochodne 

.. MATH::
 :label: eqn4

 g'(x, t)= g' =\frac{\partial g(x, t)}{\partial x}, \; \; \dot g(x, t) = \dot g = \frac{\partial g(x, t)}{\partial t}, \; \; g''(x, t) = g'' =\frac{\partial^2 g}{\partial x^2}.

Przyjmiemy taką konwencję, że różniczkowanie względem pierwszego argumentu (względem 'położenia' :math:`x`) oznaczymy apostrofem ' ; różniczkowanie względem drugiego argumentu (względem czasu :math:`t`) oznaczymy kropką :math:`\cdot`. 

Rozpatrzmy teraz funkcję :math:`g(X, t)`, gdzie teraz pierwszym argumentem jest 
proces stochastyczny :math:`X(t)` określony przez powyższe równanie stochastyczne 
Ito. Obliczmy przyrost funkcji :math:`g(X, t)` rozwijając funkcję w szereg Taylora: 

.. MATH::
 :label: eqn5

 \Delta g(X, t) = g(X+dX, t+dt)- g(x, t) =
 
 = \frac{\partial g}{\partial X} dX + \frac{\partial g}{\partial t} dt + \frac{1}{2} \frac{\partial^2 g}{\partial X^2} dX dX + \frac{\partial^2 g}{\partial X \partial dt} dX dt + \frac{1}{2} \frac{\partial^2 g}{\partial t^2} dt dt + \dots 

Wstawimy teraz wyrażenie na :math:`dX` z równania Ito 

.. MATH::
 :label: eqn6

 \Delta g(X, t) = g'(X, t)\left[F(X, t) dt + G(X, t) dW\right] + \dot g(X, t) dt +
 
 + \frac{1}{2} g''(X, t) \left[F(X, t) dt + G(X, t) dW\right] \left[F(X, t) dt + G(X, t) dW\right] +

 + \dot g \,'(X, t) dt \left[F(X, t) dt + G(X, t) dW\right] + \frac{1}{2} \ddot g(X, t) dt dt + \dots 

W wyrażeniu tym pozostawimy wyrazy rzędu co najwyżej :math:`dt` pamiętając że :math:`dW(t)` jest rzędu :math:`\sqrt{t}`: 

.. MATH::
 :label: eqn8

 dg(X, t) = g'(X, t)\left[F(X, t) dt + G(X, t) dW\right] + \dot g(X, t) dt + \frac{1}{2} g''(X, t) G^2(X, t) dW dW 

W wyrażeniu tym zamieniliśmy :math:`\Delta g(X, t) = dg(X, t)` ponieważ przyrost liniowy w :math:`dt` to różniczka. Pozostałe wyrazy dają przyczynki wyższego rzędu :math:`dt dt, dt dW` i pomijamy je. Zastąpimy teraz :math:`dW dW = dW^2(t)` przez :math:`2D dt` otrzymując słynną formułę Ito 

.. MATH::
 :label: eqn9

 dg(X, t) = [\dot g(X, t) + g'(X, t) F(X, t) + D g''(X, t) G^2(X, t)] dt + g'(X, t) G(X, t) dW 

Przykład 1
++++++++++

Zobaczmy, jakie nietypowe wnioski można wyciągnąć z tej formuły. W tym celu rozważmy szczególny przypadek i przyjmijmy następujące wyrażenia: 

.. MATH::
 :label: eqn10

 dX = dW, \; \; \;\mbox{tzn.}\; \; \; F(X, t)=0, \; \; \; \; G(X, t) =1, \; \; \; D=\frac{1}{2} 


Niech 

.. MATH::
 :label: eqn11

 g(X, t) = X^2, \; \; \; X(0)=0, \; \; \; D=\frac{1}{2} 


Wówczas z formuły Ito otrzymamy: 

.. MATH::
 :label: eqn12

 d(X^2) = 2X dX + dt\, 


Stąd wynika, że 

.. MATH::
 :label: eqn13

 X dX = \frac{1}{2} d(X^2) + \frac{1}{2} dt\, 


Ponieważ w tym przykładzie :math:`dX=dW`, czyli :math:`X=W`, to możemy równie dobrze napisać 

.. MATH::
 :label: eqn14

 W dW = \frac{1}{2} d(W^2) + \frac{1}{2} dt\, 


Obustronnie całkowanie daje taki oto wynik 

.. MATH::
 :label: eqn15

 \int_0^{\; t} W dW = \frac{1}{2} \int_0^{\; t} d(W^2) + \frac{1}{2} \int_0^{\; t} dt = \frac{1}{2} W^2 + \frac{1}{2} t 


Widać, że w porównaniu z tradycyjnym rachunkiem różniczkowym i całkowym, tutaj pojawia się dodatkowy składnik :math:`(1/2) t`. Przykład ten pokazuje, że metody rachunkowe, których nauczyliśmy się na kursie analizy matematycznej, w teorii procesów stochastycznych nie muszą obowiązywać. Różniczkowanie i całkowanie wielkości, w których bezpośrednio lub pośrednio pojawiają się procesy Wienera, Poissona, czy ogólniej Levy'ego należy wykonywać biorąc pod uwagę równania stochastyczne typu Ito. Tutaj reguły są nierozerwalnie związane z równaniami stochastycznymi definiującymi proces stochastyczny. Czytelnik powinien zauważyć, że wszelkie odstępstwa od tradycyjnego rachunku różniczkowego i całkowego pojawiają się dlatego, że podstawowe procesy takie jak procesy Wienera, Poissona, czy ogólniej Levy'ego są to procesy o przyrostach niezależnych. To z kolei pociąga za sobą własność narastania w czasie fluktuacji tych procesów. Fluktuacje te rosną jak :math:`\sqrt t`. Oto przyczyna wszelkich odstępstw. A pomyśleć, że wszystko to wzięło swój początek z rzucania monetą i rozmów telefonicznych.

Przykład 2
++++++++++

Rozpatrzmy równanie Ito dla geometrycznego ruch Browna, rozważanego w jednym z poprzednich rozdziałów: 

.. MATH::
 :label: eqn16

 dX = cX dt + X dW(t), \quad F(X, t) = cX, \quad G(X, t) =X 


Niech 

.. MATH::
 :label: eqn17

 g(X, t) = \ln X(t) = Y(t)


Teraz :math:`Y(t)` to nowy proces stochastyczny będący transformacją procesu :math:`X(t)`. Jakie równanie spełnia proces :math:`Y(t)`? Obliczmy różniczkę procesu :math:`Y(t)` korzystając z formuły Ito. Obliczamy:

.. MATH::
 :label: eqn18

 \dot g(x, t) = 0, \qquad g'(x, t) = \frac{1}{x},\qquad g''(x, t) = -\frac{1}{x2},\qquad

i wstawiamy do formuły Ito pamiętając że :math:`dg(X, t) = dY(t)`. Otrzymamy końcowy wynik w postaci

.. MATH::
 :label: eqn19

 dY(t) = (c-D) dt + dW(t)


Równanie to jest proste i można je scałkować:

.. MATH::
 :label: eqn20

 Y(t) = Y(0) + (c-D) t + W(t)


Od razy widać, że jest to proces gaussowski i łatwo wyznaczyć jego rozkład prawdopodobieństwa obliczając jego wartość średnią i wariancję. 


Równanie Stratonowicza a równanie Ito
-------------------------------------

Rozważmy równanie stochastyczne w sensie Ito: 

.. MATH::
 :label: eqn21

 dX(t)= F(X(t), t)dt + G(X(t), t) dW(t)\;


oraz równanie stochastyczne w sensie Stratonowicza

.. MATH::
 :label: eqn22

 dX(t)= F(X(t), t)dt + G(X(t), t)\circ dW(t)\;


Pytamy, jaki jest związek między tymi równaniami. Rozpatrzmy ostatni wyraz w równaniu Stratonowicza

.. MATH::
 :label: eqn23

 G(X(t), t)\circ dW(t) = G\left(\frac{[X(t+dt)+X(t)]}{2}, t \right)\,dW(t) =
 
 = G\left( X(t) + \frac{1}{2}[X(t+dt)- X(t)], t\right) dW(t) =
 
 = G\left(X(t) + \frac{1}{2} dX(t), t\right) dW(t) =
 
 =\left[G( X(t), t) + \frac{1}{2} G'(X(t), t) dX(t) + \dots\right] dW(t) =
 
 = G(X(t), t) dW(t) + \frac{1}{2} G'(X(t), t) dX(t)) dW(t) + \dots =
 
 = G(X(t), t) dW(t) + \frac{1}{2} G'(X(t), t)\left[F(X(t), t)dt + G(X(t), t) dW(t)\right] dW(t) +\dots =

 = G(X(t), t) dW(t) + \frac{1}{2} G'(X(t), t) G(X(t), t) dW(t) dW(t) +\dots =
 
 = G(X(t), t) dW(t) + \frac{1}{2} G'(X(t), t) G(X(t), t) 2D dt +\dots,

gdzie rozwijaliśmy w szereg Taylora funkcję :math:`G(X+h, t)` dla :math:`h=dX(t)/2` oraz zatrzymaliśmy wyrazy co najwyżej rzędu :math:`dt`, Skorzystaliśmy z tego, że w sensie średniokwadratowym :math:`dW(t) dW(t) = 2D dt`. Jeżeli teraz wstawimy to wyrażenie do równania to otrzymamy równanie w sensie Ito w postaci 

.. MATH::
 :label: eqn25

 \mbox{Stratonowicz --> } \quad dX(t)= F(X(t), t)dt + G(X(t), t)\circ dW(t) =
 
 = \left[F(X(t), t) + D G'(X(t), t) G(X(t), t)\right]dt + G(X(t), t) dW(t) \quad \mbox{<-- Ito}


Równanie to ustala związek między równaniem Stratonowicza a równaniem w sensie Ito. Przy transformacji równania Stratonowicza do równania Ito pojawia się wyraz

.. MATH::
 :label: eqn26

 \frac{1}{2} G'(X(t), t) G(X(t), t) \langle [dW(t)]^2\rangle = D G'(X(t), t) G(X(t), t) dt


nazywany dryfem indukowanym przez szum, ponieważ jest to dodatkowy wyraz przy różniczce :math:`dt`.

Z powyższej formuły wynika także odwrotny związek:

.. MATH::
 :label: eqn27

 \mbox{Ito --> } \quad dX(t)= F(X(t), t)dt + G(X(t), t) dW(t) =
 
 = \left[F(X(t), t) - D G'(X(t), t) G(X(t), t)\right]dt + G(X(t), t)\circ dW(t) \quad \mbox{<-- Stratonowicz}


W wielu przypadkach warto "pracować" z równaniami w sensie Stratonowicza, ponieważ operacje na tych równaniach są takie same jak w standardowej (klasycznej) analizie matematycznej. Zademonstrujemy to przykładzie równania opisującego geometryczny ruch Browna:

.. MATH::
 :label: eqn28

 dX = cX dt + X dW(t), \quad F(X, t) = cX, \quad G(X, t) =X 


Jest to równanie w interpretacji Ito. W interpretacji Stratonowicza ma ono postać:

.. MATH::
 :label: eqn29

  dX = (c - D) X dt + X\circ dW(t) 


Równanie to można traktować w tradycyjny sposób, Np. podzielę obustronnie równanie przez :math:`X` (czego nie wolno robić w równaniu Ito):

.. MATH::
 :label: eqn30

  \frac{dX}{X} = (c - D) dt + dW(t) 


W tradycyjnym rachunku

.. MATH::
 :label: eqn31

 \frac{dX}{X} = \ln X \equiv Y


Więc proces :math:`Y = Y(t)` spełnia równanie

.. MATH::
 :label: eqn32

 dY = (c - D) dt + dW(t) 


Jest to równanie jakie otrzymaliśmy powyżej z równania Ito przy stosowaniu rachunków Ito. 

