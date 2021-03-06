Dyskretne układy dynamiczne
===========================

We Wprowadzeniu pokazaliśmy w jaki sposób mogą pojawiać się zagadnienia modelowane równaniami rekurencyjnymi

.. MATH::
    :label: eqn1

    x_{n+1} = f(x_n), \quad \quad x_0 = c\qquad 


Z jednej strony mogą to być przybliżenia  równań różniczkowych, gdy pochodną aproksymujemy  skończonym ilorazem różniczkowym. Z drugiej strony, mogą to być układy dynamiczne w których czas jest  dyskretny i jest mierzony co pewien ustalony interwał czasowy ( co sekundę, co godzinę, co dzień, co miesiąc, itd.). Tego typu modele spotykamy w biologii. Kolejnym przykladem jest algorytm Newtona pozwalający znajdować rekurencyjnie  pierwiastki równania

.. MATH::
    :label: eqn2

    F(x) = 0


W metodzie  Newtona  kolejne przybliżenie pierwiastka dane jest przez równanie 

\begin{equation} x_{n+1} = x_n + \frac{F(x_n)}{F'(x_n)}\equiv f(x_n)\qquad (2) \end{equation}
gdzie zakładamy, że pochodna :math:`F'(x)` istnieje (w przeciwnym przypadku metoda ta nie może być stosowana). Oznacza to, że nie możemy wpaść w ekstremum funkcji :math:`F(x)`.  W szczególności dla :math:`F(x)=x^2-2` ciąg (2) w zależności od warunku początkowego zmierza do liczby :math:`x_{+}=\sqrt{2}` lub :math:`x_{-}=\sqrt{2}`  (co jest oczywiste skądinąd).



*Wizualizacja iteracji*
  Używając komputera, kolejne wyrazy :math:`x_n` jest łatwo uzyskać. Dla przykładu, niech

  .. MATH::
      :label: eqn3

      x_{n+1} = x_n - 0.5  x_{n}^2 +1.7, \qquad x_0 = 1


  Poniżej prezentujemy program w SAGE:

.. sagecellserver::
    :is_verbatim: True

    sage: # warunek początkowy 
    sage: x0 = 1
    sage: # tu można wstawić dowolną funkcję f(x)
    sage: f(x) = x - 0.5*x*x+1.7
    sage: for i in range(20):
    ...    print x0
    ...    x0 = f(x0)

.. end of input

Poniżej jest prezentacja graficzna dla ogólniejszego przypadku

.. MATH::
    :label: eqn4

    x_{n+1} = x_n - b  x_{n}^2 +1.7, \qquad x_0 = 1


z dowolnym parametrem :math:`b`. Zachęcamy do zabawy: zmieniajcie wartość parametru :math:`b` oraz warunek początkowy. Czytelnik łatwo może podać swoje własne równanie, zmieniając odpowiednie wyrażenia w programie.

.. sagecellserver::
    :is_verbatim: True

    sage: def ne(b,X):
    ...    return X - b*X*X +1.7
    sage: #
    sage: def pophis(startp,b,length):
    ...    his = [startp]
    ...    for i in range(length):
    ...        his.append( ne(b,his[i]) )
    ...    return his
    sage: #
    sage: #warunek pocz. przed b, 
    sage: #po b ilość iteracji, 
    sage: #skala wykresu podana w ymin, ymax
    sage: @interact
    sage: def _(b=slider(0.05,3,0.05,default=0.5,label='Factor b')):
    ...    show(list_plot(pophis(1,b,35),plotjoined=True,marker='o',ymin=0.5,ymax=3))

.. end of input

Metoda pajęczyny
----------------

Metoda pajęczyny pozwala na wykresie śledzić własności równań rekurencyjnych.   Za pomocą tego wykresu  można oberwować kolejne kroki iteracji. 

Sposób rysowania:

# Dla danego równania  :math:`x_{n+1} = f(x_n)`, rysujemy wykres funkcji 
  :math:`y = f (x)` oraz  linię prostą :math:`y  = x`. Prosta ta pozwala 
  przenosić wartość :math:`x_{n+1}`  z osi OY na oś OX. 

# Na osi OX zaznaczamy warunek początkowy :math:`x_0`. Znajdujemy 
  graficznie punkt :math:`x_1 = f(x_0)`, który jest na osi OY.

# Przy pomocy prostej :math:`y=x` przenosimy teraz  punkt :math:`x_1` na oś OX.

# Mając na osi OX punkt :math:`x_1`, traktujemy go jako następny warunek 
  początkowy i znajdujemy graficznie na osi OY punkt :math:`x_2=f(x_1)`.
  
# Powtarzamy kroki od 2,3,4 z ostatnim otrzymanym punktem jako początkowym :math:`x_0`.



.. sagecellserver::
    :is_verbatim: True

    sage: var('r,x0,n')
    sage: @interact
    sage: def cobweb(a=slider(0.4,1.4,0.1,default=1),x0=slider(0,1,0.1,default=1)): ## zmiana parametru a (am, aM, krok) w funkcji f(x)
    ...    f(x)=x - a*x*x+1.7    ## postać funkcji f(x), która mozna zmieniać
    ...    p = plot(f(x)==0,(x,-1,3),ymin=-2,ymax=3,xmin=-1,xmax=3,color='black')+plot(x,(x,-1,4),color='green',figsize=5)
    ...    for n in range(20):
    ...        th = 1
    ...        if n>45:
    ...            th = 1.5
    ...            color='red'
    ...        elif n < 5:
    ...            color='blue'
    ...            th=1.5    
    ...        else:
    ...            color='grey'
    ...            th =0.5        
    ...        l1 = line([(x0,x0),(x0,f(x0))],color=color,thickness=th)
    ...        l2 = line([(x0,f(x0)),(f(x0),f(x0))],color=color,thickness=th)
    ...        p = p+l1+l2
    ...        x0 = f(x0)
    ...    p.axes_labels(["$x_n$","$x_{n+1}$"])     
    ...    p.show()

.. end of input


Stany stacjonarne (punkty stałe) o okresie 1
--------------------------------------------

Układ dynamiczny z czasem dyskretnym ma postać równania rekurencyjnego 

.. MATH::
    :label: eqn5

    x_{n+1} = f(x_n), \quad \quad x_0  \quad \mbox{znamy} 


Wartość funkcji w następnym kroku  :math:`x_{n+1}`  jest obliczana z wartości  funkcji   :math:`x_n`  w kroku poprzednim. 

Z punktu widzenia modelowania,  chcielibyśmy wiedzieć, czy układ w trakcie ewolucji dąży do jakiegoś stanu stacjonarnego i czy ten stan stacjonarny jest stabilny. Pojawia się też pytanie, jakiego typu stany stacjonarne mogą pojawiać się dla układów modelowanych równaniami rekurencyjnymi.  



A. Stany stacjonarne (punkty stałe o okresie 1)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Przypomnijmy sobie, co oznacza istnienie stanu stacjonarnego dla układów modelowanych równaniem różniczkowym: 

.. MATH::
    :label: eqn6

     \frac{dx(t)}{dt} = F(x(t))


Stan stacjonarny to taki stan, który nie zmienia się w trancie ewolucji, nie zmienia się wraz ze zmianą czasu, czyli :math:`x(t) = x_s` jest wielkością stałą, niezmienną. Skoro tak, to 

.. MATH::
    :label: eqn7

     \frac{dx(t)}{dt}  = \frac{dx_s}{dt}  = 0


Aby lewa strona równania różniczkowego była równa prawej stronie, musi zachodzić równość: 

.. MATH::
    :label: eqn8

    F(x_s) = 0


To jest równanie (warunek), z którego wyznaczamy stan stacjonarny. 

Podobnie rozumujemy w przypadku równań rekurencyjnych:  Stan stacjonarny to taki stan, który nie zmienia się w trakcie ewolucjii (dyskretnej), czyli z punktu :math:`x_s` otrzymujemy znowu :math:`x_s`. Dla równania dyskretnego ta niezmienność oznacza, że 

.. MATH::
    :label: eqn9

    \quad \mbox{jeżeli} \quad x_n = x_s \quad \mbox{to} \quad x_{n+1} = x_s


i równanie rekurencyjne 

.. MATH::
    :label: eqn10

    x_{n+1} = f(x_n) \quad \mbox{ma postać} \quad x_s = f(x_s)


Stąd otrzymujemy równanie dla stanu stacjonarnego 

.. MATH::
    :label: eqn11

    x_s = f(x_s) \quad \mbox{lub w uproszczonym zapisie} \quad x=f(x) 


*Zapamiętajmy to równanie!* Matematycy zamiast nazwy "stan stacjonarny" stosują nazwę "punkt stały odwzorowania" lub "punkt stały o okresie 1" . 

Poniżej przedstawiamy to graficznie. Po wielu krokach iteracji obserwujemy powtarzanie się tej samej wartości: kolejna iteracji już nic nie zmienia, jest ta sama, stała. 

.. sagecellserver::
    :is_verbatim: True

    sage: def newpop(a,prevpop):
    ...    return a*prevpop
    sage: #
    sage: def populationhistory(startpop,a,length):
    ...    history = [startpop]
    ...    for i in range(length):
    ...        history.append( newpop(a,history[i]) )
    ...    return history
    sage: #
    sage: @interact
    sage: def _( a=slider(0.5,1.1,0.05,default=0.5,label='Malthus Factor a') ):
    ...    myplot=list_plot( populationhistory(1,a,30) ,plotjoined=True,marker='o',ymin=0,ymax=2)##warunek pocz. przed m, skala
    ...    myplot.show()

.. end of input



Zobaczmy jak to "działa" w przypadku tzw. równania logistycznego gdy :math:`f(x) = ax (1-x)`: 

.. MATH::
    :label: eqn12

    x = f(x) \quad \mbox{oznacza} \quad x=ax  = ax - ax^2


Jest to równanie kwadratowe: 

.. MATH::
    :label: eqn13

    ax^2 -ax +x = 0 \quad \mbox{czyli} \quad  ax^2 + x  =  x [ax + ] = 0 


Otrzymujemy dwa rozwiązania 

.. MATH::
    :label: eqn14

    x_1 = 0 \quad \mbox{orax} \quad x_2 = \frac{a-1}{a} = 1 - \frac{1}{a}


Są to dwa stany stacjonarne układu. Występuje tu podobieństwo do ciągłego modelu Verhulsta, które też posiada dwa stany stacjonarne :math:`N_1 = 0` (niestabilne)  oraz :math:`N_2 = K` (stabilne).

Który ze stanów stacjonarnych  :math:`x_1`   i   :math:`x_2`  jest stabilny, a który niestabilny.  Zbadamy teraz ten problem.   


B. Stabilność stanów stacjonarnych
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Stabilność stanu stacjonarnego :math:`x_s`  jest podobnie definiowana jak w przypadku równań różniczkowych zwyczajnych: dowolnie małe odchylenie od stanu stacjonarnego   jest w trakcie ewolucji redukowane i odchylenie dąży do zera. Innymi słowy: jeżeli stan początkowy :math:`x_0` mało różni się od stany stacjonarnego :math:`x_s`, to ciąg liczb: 

.. MATH::
    :label: eqn15

    x_0, \quad x_1=f(x_0), \quad x_2 = f(x_1), \quad x_3 = f(x_2), \quad x_4 = f(x_3), .......  \quad \mbox{dąży do stanu stacjonarnego } \quad x_s


Innymi słowy, jeżeli :math:`|x_0 - x_s| < \delta`  dla odpowiednio małej liczby :math:`\delta`   to   :math:`|x_n - x_s| \to 0`  gdy :math:`n \to \infty`. Wyprowadzimy kryterium które pozwala badać stabilność :math:`x_s`. 

Wprowadzamy oznaczenie dla małego odchylenia od stanu stacjonarnego: 

.. MATH::
    :label: eqn16

    y_n = x_n - x_s << 1 \quad \mbox{stąd} \quad  x_n = x_s + y_n


Wówczas

.. MATH::
    :label: eqn17

    y_{n+1} = x_{n+1} - x_s = f(x_n) - x_s  = f( x_s + y_n) - x_s$$


Ponieważ :math:`y_n` jest małą wielkością, to funkcję :math:`f(x_s + y_n)` rozwijamy w szereg Taylora: 

.. MATH::
    :label: eqn18

    y_{n+1} =  f( x_s + y_n) - x_s \approx [f(x_s) + f'(x_s) y_n + ...] - x_s  = f(x_s) - x_s  + f'(x_s) y_n+ ...  = \lambda y_n + ...  \quad \quad \mbox{gdzie} \quad  \lambda = f'(x_s) \quad \mbox{jest liczbą}


Wykorzystaliśmy tu równość dla stanu stacjonarnego: :math:`x_s = f(x_s)`.  W ten sposób otrzymaliśmy równanie rekurencyjne dla odchylenia od stanu stacjonarnego: 

.. MATH::
    :label: eqn19

    y_{n+1} = \lambda y_n


Jeżeli :math:`y_{n} \to 0`  to stan stacjonarny :math:`x_s` jest stabilny. Musimy teraz zbadać,  dla jakich wartości liczby :math:`\lambda = f'(x_s)` równanie dla :math:`y_n`  ma rozwiązania dążące do zera dla warunku początkowego :math:`|y_0| << 1` .  

Rozpatrzymy 4 przypadki: 

1 Przypadek :math:`\lambda  > 1`
""""""""""""""""""""""""""""""""

Aby łatwiej zrozumieć, przyjmiemy  :math:`\lambda =  2`. Wówczas równanie na odchylenie od stanu stacjonarnego ma postać 

.. MATH::
    :label: eqn20

    y_{n+1} = 2 y_n


Otrzymamy ciąg liczbowy 

.. MATH::
    :label: eqn21

     y_0, \quad y_1 =   2 y_0, \quad y_2 =  2 y_1 =  2 \times 2 y_0 = 2^2 y_0, \quad y_3 =  2 y_2 = 2^3 y_0, \quad y_4 =  2 y_3 = 2^4 y_0, ....


Widzimy, że  kolejne  liczby rosną, ponieważ są mnożone przez czynnik 2 i ciąg liczbowy jest rozbieżny. Otrzymujemy stąd wniosek, że dla :math:`\lambda > 1`, stan stacjonarny nie jest stabilny: nieskończenie małe odchylenie od wartości stacjonarnej rośnie wraz z kolejnym krokiem iteracji.

2. Przypadek :math:`\lambda < -1`
"""""""""""""""""""""""""""""""""

Aby łatwiej zrozumieć, przyjmiemy  :math:`\lambda = - 2`. Wówczas równanie na odchylenie od stanu stacjonarnego ma postać 

.. MATH::
    :label: eqn22

    y_{n+1} = - 2 y_n


Otrzymamy ciąg liczbowy 

.. MATH::
    :label: eqn23

     y_0, \quad y_1 = - 2 y_0, \quad y_2 = - 2 y_1 = (- 2)  \times (- 2) y_0 = 2^2 y_0, \quad y_3 = (- 2) y_2 =  - 2^3 y_0, \quad y_4 = (- 2) y_3 = 2^4 y_0, ....


Widzimy, że  wartości bezwzględne kolejnych liczby rosną, ponieważ są mnożone przez czynnik - 2 i ciąg liczbowy jest rozbieżny. Otrzymujemy stąd wniosek, że dla :math:`\lambda < - 1`, stan stacjonarny nie jest stabilny: nieskończenie małe odchylenie od wartości stacjonarnej rośnie wraz z kolejnym krokiem iteracji.

3. Przypadek :math:`\lambda  \in (-1, 1) `
""""""""""""""""""""""""""""""""""""""""""

Aby łatwiej zrozumieć, przyjmiemy  :math:`\lambda =  (1/2) `. Wówczas równanie na odchylenie od stanu stacjonarnego ma postać 

.. MATH::
    :label: eqn24

    y_{n+1} = \frac{1}{2}  y_n


Otrzymamy ciąg liczbowy 

.. MATH::
    :label: eqn25

     y_0, \quad y_1 =   \frac{1}{2} y_0, \quad y_2 =  \frac{1}{2}  y_1 =  \frac{1}{2} \times \frac{1}{2}  y_0 =\frac{1}{2^2}  y_0, \quad y_3 =  \frac{1}{2}  y_2 = \frac{1}{2^3}  y_0, \quad y_4 =  \frac{1}{2}  y_3 = \frac{1}{2^4}  y_0, ....


Widzimy, że  kolejne  liczby maleją, ponieważ są mnożone przez czynnik (1/2)  i ciąg liczbowy dąży do zera. Otrzymujemy stąd wniosek, że dla :math:`\lambda  \in (-1, 1) `, stan stacjonarny  jest stabilny: nieskończenie małe odchylenie od wartości stacjonarnej maleje do zera  wraz z kolejnym krokiem iteracji.

Wniosek z tego jest następujący: 

.. note::                                                                                              

  Stan stacjonarny :math:`x_s` jest stabilny jeżeli :math:`\lambda = f'(x_s) \in (-1, 1)`. 

Stany stacjonarne o okresie 2
-----------------------------

Jeżeli dla długich iteracji (formalnie dla :math:`n\to\infty`)  otrzymujemy ciągle tą samą wartość, to mówimy o stanie  stacjonarnym o okresie 1. Pokazano to na powyższym rysunku. Jednakże mogą pojawić się inne stany stacjonarne. Dla przykładu, zobaczmy jak zachowuje się układ dla :math:`n\to\infty`, który jest pokazany poniżej.


.. sagecellserver::
    :is_verbatim: True

    sage: def ne(b,pre):
    ...    return 1+b*pre*(1-(1/16)*pre)
    sage: #
    sage: def pophis(startp,b,length):
    ...    his = [startp]
    ...    for i in range(length):
    ...        his.append( ne(b,his[i]) )
    ...    return his
    sage: #
    sage: @interact
    sage: def _( b=slider(0.05,3.8,0.05,default=3.05,label='Factor b') ):
    ...    aplot=list_plot( pophis(4,b,35) ,plotjoined=True,marker='o',ymin=0,ymax=18)##warunek pocz. przed b, skala
    ...    aplot.show()

.. end of input


Obserwujemy, że dla dużych wartości iteracji :math:`n>>1`, dwie wartości iteracji powtarzają się i układ "skacze" pomiędzy dwoma stanami. Mówimy wówczas o stanie stacjonarnym o okresie 2. Możemy także powiedzieć, że jest to stan periodyczny. Jak wyznaczyć takie stany?  Skorzystamy ze wzoru na kolejne iteracje: 

.. MATH::
    :label: eqn26

    x_{n+2} = f(x_{n+1}), \qquad x_{n+1} = f(x_{n})


Należy zauważyć, że wartość :math:`x_{n+2} = x_n` ponieważ co drugi krok jest ten sam stan. Dlatego też

.. MATH::
    :label: eqn27

    x_{n+2} = f(x_{n+1}) = f[f(x_{n})] = x_n


Jeżeli oznaczymy stan stacjonarny :math:`x_s` o okresie 2 jako :math:`x^*` to powyższe równanie przepiszemy jako

.. MATH::
    :label: eqn28

    f[f(x^*)] = x^*


Ale to samo zachodzi dla stanu :math:`x_{n+3} = x_{n+1}`. Dlatego równanie powyższe ma 2 rozwiązania :math:`x^* = x^*_1`  oraz  :math:`x^* = x^*_2`. 

W praktyce rozwiązujemy równanie w postaci bardziej przyjaznej:

.. MATH::
    :label: eqn29

    x = f[f(x)] \equiv g(x) 


Pamiętajmy, że jest to złożenie 2 funkcji (co prawda takich samych funkcji, ale to jest drugorzędne).

**To jest bardzo ważne równanie!**

Napisanie tego równania w jawnej postaci nastręcza duże kłopoty przeciętnemu studentowi. Dlatego podamy 1 przykład. Niech układ dynamiczny bedzie opisany równaniem 

.. MATH::
    :label: eqn30

    x_{n+1} = 1- 2 x_n^2, \qquad f(x_n) = 1 - 2 x_n^2 \qquad \mbox{czyli} \qquad f(x) = 1 - 2 x^2


Ile wynosi :math:`f[f(x)]`? Obliczamy

.. MATH::
    :label: eqn31

    f[f(x)] = 1 - 2 [f(x)]^2  =  1 - 2 [1 - 2 x^2]^2 = 1 - 2[1 - 4 x^2 + 4 x^4] = -8 x^4 + 8 x^2 -1


Dlatego równanie które określa stan stacjonarny o okresie 2 ma postać

.. MATH::
    :label: eqn32

    x = -8 x^4 + 8 x^2 -1 = g(x)


Jest to wielomian 4-go stopnia.

Stabilność stanów stacjonarnych o okresie 2
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Badanie stabilności stanów o okresie 2 jest analogiczne do badania stabilności stanów stacjonarnych o okresie 1. Jeżeli stan stacjonarny jest określony przez równanie

.. MATH::
    :label: eqn33

    x^*=g(x^*)


to  stan ten jest  stabilny gdy

.. MATH::
    :label: eqn34

    \lambda_2 = g'(x^*) \in (-1, 1)


Ponieważ funkcja :math:`g(x)` jest funkcją złożoną, więc  należy stosować reguły różniczkowania  funkcji złożonej:

.. MATH::
    :label: eqn35

      \lambda_2 = g'(x^*)  =  \bigl[\{f[f(x)]\}' \bigr]_{x=x^*} =\biggl[ \frac{df(u)}{du}\biggr]_{u=f(x^*)} \biggl(\frac{df(x)}{dx}\biggr)_{x=x^*}  \in (-1, 1)


Powyższy związek można przepisać  w postaci:

.. MATH::
    :label: eqn36

      \lambda_2 = f'(u^*) f'(x^*) \in (-1, 1)


gdzie :math:``u^*=f(x^*):math:``

Warto coś tu zauważyć  i uprościć. Ponieważ stan :math:`x^*` jest o okresie 2 to jak nadmieniliśmy powyżej, faktycznie są 2 stany: :math:`x^* = x^*_1` (np. górny)  oraz :math:`x^* = x^*_2` (np. doly), co widać doskonale z powyższego rysunku. Dlatego też dolny stan przechodzi w górny i następnie górny stan przechodzi w dolny. Można to zapisać jako:

.. MATH::
    :label: eqn37

    x_2^* = f(x_1^*), \qquad x_1^* = f(x_2^*)


Stąd otrzymujemy relację:

.. MATH::
    :label: eqn38

      \lambda_2(x_1^*)  = f'(x^*_2) f'(x^*_1) \in (-1, 1)


Podobna relacja zachodzi dla drugiego stanu

.. MATH::
    :label: eqn39

      \lambda_2(x_2^*)  = f'(x^*_1) f'(x^*_1) \in (-1, 1)


Jest to ta sama relacja co dla :math:`x^*_1`. Więc oznacza to, że wystarczy zbadać wielkość :math:`f'(x_1)f'(x_2)`, gdzie :math:`x_1`  oraz  :math:`x_2` to dwa  rozwiązania równania :math:`x=f(f(x))`.

Podobnie można badać  punkty stałe o dowolnym okresie :math:`n`:

.. MATH::
    :label: eqn40

    x^*= f\{f[ .....f(x^*) .....]\}  = G(x^*)


gdzie mamy n-krotne złożenie odwzorowania :math:`f`.

Stan  :math:`x^*`  jest  stabilny gdy

.. MATH::
    :label: eqn41

    \lambda_n = G'(x^*) \in (-1, 1)


Ponieważ funkcja :math:`G(x)` jest funkcją złożoną, więc  należy stosować reguły różniczkowania  funkcji złożonej, podobnie jak to jest pokazane powyżej w przypadku :math:`n=2`.



