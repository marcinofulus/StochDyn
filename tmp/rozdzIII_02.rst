Podstawowe procesy stochastyczne
================================

W wielkim skrócie przedstawimy 3 podstawowe rodzaje procesów stochastycznych. Ich transformacje służą do definicji szumów, fluktuacji i zaburzeń losowych. Czytelnik znajdzie szczegóły i więcej informacji w podręczniku "Procesy i zjawiska losowe".  W sensie matematycznym, większość podstawowych procesów losowych wywodzi się z prób Bernoulliego i uogólnionych prób Bernoulliego. Można by powiedzieć, że dwie próby Bernoulliego odgrywają kluczową role:

1. wielokrotny rzut monetą

2. losowe wybieranie punktów z pewnego przedziału liczbowego

Pierwszy rodzaj prób Bernoulliego w granicy prowadzi do procesu Wienera, drugi - w granicy prowadzi do procesu Poissona. Obie te granice są różne i odpowiadają dwóm klasom procesów stochastycznych. Oba te procesy są szczególnym przypadkiem procesu, który nazywa się procesem Levy'ego. Byłoby trudno wyprowadzić ogólny proces Levy'ego z prób Bernoulliego.

Jako model zaburzeń losowych, w ogólności możemy wybierać dowolny proces stochastyczny. Czasami nakładane są różne ograniczenia jak np. aby był to proces stacjonarny, albo proces o skończonej wartości średniej, albo proces o zerowej wartości średniej, albo proces Markowa, albo proces nieskorelowany, itd. Często zakłada się, że zaburzenie losowe jest o zerowej wartości średniej: 

.. MATH::
 :label: eqn1

 \langle \eta(t)\rangle = 0


Jeżeli jest to proces stacjonarny to jego funkcja korelacyjna

.. MATH::
 :label: eqn2

 \langle \eta(t) \eta(s)\rangle = C(t-s)


zależy tylko od różnicy czasów :math:`t` oraz :math:`s`. Jeżeli jest to proces nieskorelowany to jego funkcja korelacyjna

.. MATH::
 :label: eqn3

 C(t-s) = 2D_0 \delta(t-s) 


modelowana jest przez deltę Diraca :math:`\delta(t)`, gdzie wielkość :math:`D_0` nazywa się natężeniem lub intensywnością procesy stochastycznego. Dlaczego jest to proces nieskorelowany? Ponieważ dla dwóch różnych chwil czasu :math:`t \ne s` delta Diraca :math:`\delta(t-s) = 0`. Oczywiście są inne, bardziej ogólne definicje procesu nieskorelowanego, ale dla naszych potrzeb powyższa definicja wykorzystująca deltę Diraca jest wystarczająca.

Z kolei przez szum rozumiemy zwykle stacjonarny proces stochastyczny. Dla procesu stacjonarnego możemy wprowadzić pojęcie widma mocy szumu (gęstość spektralna szumu) :math:`S(\omega)` jako transformata Fouriera jego funkcji korelacyjnej, tzn.

.. MATH::
 :label: eqn4

 S(\omega) = \int_{-\infty}^{ \; \infty} \mbox{e}^{i\omega \tau} C(\tau) d\tau


gdzie wprowadziliśmy oznaczenie :math:`\tau = t- s`.

Gdy funkcja korelacyjna jest deltą Diraca to widmo mocy

.. MATH::
 :label: eqn5

 S(\omega) = \int_{-\infty}^{ \; \infty} \mbox{e}^{i\omega \tau} 2D_0 \delta(\tau) d\tau = 2 D_0


nie zależy od częstości :math:`\omega`.W optyce widmo mocy niezależne od częstości jest charakterystyczne dla światła białego (jest to mieszanka wszystkich barw, czyli wszystkich częstości). Dlatego taki szum nazywa się białym szumem. Jeżeli szum jest skorelowany, to niektórzy autorzy nazywają taki szum szumem kolorowym, aby go odróżnić od szumu białego. Często taki kolorowy szum jest scharakteryzowany przez czas korelacji i jego widmo mocy zależy od częstości :math:`\omega`. Należy jednak powiedzieć, że szum skorelowany i szum kolorowy są synonimami tego samego pojęcia.

W Naturze biały szum nie występuje. Jest on kolejną idealizacją opisu rzeczywistych procesów. Jest to dobra idealizacja gdy czas korelacji szumu jest najmniejszym charakterystycznym czasem w badanym układzie. Poniżej prezentujemy kilka najbardziej popularnych modeli procesów stochastycznych oraz białego i kolorowego szumu losowego.





Proces Wienera
--------------

Dyskretne błądzenie przypadkowe jest jedną z realizacji wielokrotnego rzutu monetą: w losowy sposób cząstka błądząca wykonuje krok o długości :math:`L` w prawo z prawdopodobieństwem :math:`p` lub krok o długości :math:`L` w lewo z prawdopodobieństwem :math:`q`. przy czym :math:`p+q=1`. Cząstka wykonuje kroki w odstępach czasu :math:`T`. 

.. figure:: images/randomwalk.*
      :align: center
      :width: 80%
      :alt: figchIII0200

      Błądzenie przypadkowe.

Pytamy, jakie jest prawdopodobieństwo tego, że po wykonaniu :math:`n` kroków, cząstka będzie w położeniu :math:`r = \{-n, -n+1, -n+2,..., 0, 1, 2,..., n-1, n\}`; dokładniej mówiąc, po czasie :math:`t=nT` będzie w położeniu :math:`x=rL`. W granicy

.. MATH::
 :label: eqn6

 L\to 0, \quad, T\to 0, \quad \mbox{w taki sposób, aby} \quad \frac{L^2}{T} = const. = 2D


gdzie stałą :math:`D` nazywa się współczynnikiem dyfuzji lub natężeniem (intensywnością) procesu stochastycznego.

.. figure:: images/brownian_walk.*
      :align: center
      :width: 80%
      :alt: figchIII0200a

      Dwie realizacje błądzenia przypadkowego.

Innymi słowy, cząstka wykonuje coraz to mniejsze kroki z coraz to większą częstotliwością. W granicy otrzymujemy ciągły proces błądzenia przypadkowego. Jeżeli prawdopodobieństwa :math:`p=q=1/2`, błądzenie jest symetryczne i nazywa się procesem Wienera. Ma on następujące własności: 


1. Proces stochastyczny Wienera :math:`W(t)` jest procesem rzeczywistym.

2. :math:`W(0)=0` (proces startuje z zera, ale to nie jest istotne; jest to wygodne). 

3. Proces :math:`W(t)` ma stacjonarne i niezależne przyrosty na nieprzekrywających się przedziałach.

  Oznacza to, że 2 przyrosty procesu Wienera :math:`W(t_4) - W(t_3)` oraz :math:`W(t_2) - W(t_1)` są niezależne dla dowolnych chwil czasu takich że :math:`t_1 \le t_2 \le t_3 \le t_4`. Innymi słowy wartość średnia

  .. MATH::
   :label: eqn7

   \langle [W(t_4) - W(t_3)] [W(t_2) - W(t_1)] \rangle = \langle W(t_4) - W(t_3)\rangle\langle W(t_2) - W(t_1)\rangle


4. :math:`W(t)` jest procesem Gaussa o zerowej wartości średniej

  .. MATH::
   :label: eqn8

   \langle W(t_2) - W(t_1) \rangle = 0 


  i wariancji przyrostów

  .. MATH::
   :label: eqn9

   \langle [W(t_2) - W(t_1)]^2 \rangle = 2D(t_2 - t_1), \; \; \; \; t_2 > t_1 


Korzystając z własności 3 można obliczyć funkcję korelacyjną procesy Wienera: 

.. MATH::
 :label: eqn10

 \langle W(t_2) W(t_1) \rangle = 2D \mbox{min} (t_2, t_1) = 2D [ t_1 \theta(t_2 - t_1) + t_2 \theta(t_1 -t_2)]


gdzie funkcja :math:`\mbox{min}(t,s)` oznacza mniejszą z 2 wartości :math:`t` i :math:`s`. Funkcję te można wyrazić w matematycznym zapisie korzystając z funkcji skokowej Heaviside'a :math:`\theta(x)`. Przyrost :math:`W(t_2) - W(t_1)` jest zmienna losową gaussowską o zerowej wartości średniej i wariancji :math:`\sigma^2 = 2D(t_2 - t_1)`. Więc jego rozkład prawdopodobieństwa ma postać 
 
.. MATH::
 :label: eqn11

 f_{W(t_2) - W(t_1)}(x) = \frac{1}{\sqrt{4\pi D (t_2 - t_1)} }\; \exp \left[ - \frac{x^2}{4D(t_2 - t_1)}\right]


Przyjmując :math:`t_1=0` oraz :math:`t_2=t` otrzymamy gęstość prawdopodobieństwa w postaci 

.. MATH::
 :label: eqn12

 f_{W(t)}(x) = f(x, t) = \frac{1}{\sqrt{4\pi D t} }\; \exp \left[ - \frac{x^2}{4Dt}\right]\;



Funkcja charakterystyczna :math:`C(\omega, t)` procesu Wienera ma postać:

.. MATH::
 :label: eqn13

 C(\omega, t) = \langle \mbox{e}^{i\omega W(t)} \rangle = \int_{-\infty}^{\; \infty} \mbox{e}^{i\omega x} f(x, t)\; dx  = \mbox{e}^{-Dt \omega^2} 


Prawdopodobieństwo tego, że w chwili :math:`t` cząstka jest w przedziale :math:`[a, b]` dane jest przez wzór 

.. MATH::
 :label: eqn14

 Pr\{W(t) \in (a, b)\} = \int_a^{\; b} f(x, t) \; dx = \frac{1}{\sqrt{4\pi D t} }\; \int_a^{\; b} \exp \left[ - \frac{x^2}{4Dt}\right] \; dx$$


Czytelnik zauważy, że niekonsekwentnie piszemy czasami przedział domknięty :math:`[a, b]`, a czasami przedział otwarty :math:`(a, b)`. W tym przypadku jest to bez różnicy ponieważ 

.. MATH::
 :label: eqn15

 Pr\{W(t) \in (a, b)\} = Pr\{W(t) \in [a, b]\} = Pr\{W(t) \in [a, b)\} = Pr\{W(t) \in (a, b])\} 


Proszę zwrócić uwagę na 4 możliwe przedziały w tych wyrażeniach. 
Proces Wienera jest granicznym przypadkiem błądzenia losowego : kroki są coraz mniejsze i coraz częstsze. Rozpatrzmy realizacje błądzenia przypadkowego w określonym przedziale czasu :math:`[0, t]`. W przedziale tym wybrana realizacja posiada określoną ilość skoków w których funkcja ta jest nieróżniczkowalna. Przy skalowaniu skoki są coraz mniejsze, ale jest ich znacznie więcej. Więc w przedziale czasu :math:`[0, t]` realizacja posiada znaczniej więcej punktów, w których jest nieróżniczkowalna. W granicy, wielkość skoków dąży do zera, ale ich ilość dąży do nieskończoności. Oznacza to, że realizacja staje się funkcją ciągłą (wysokość skoków dąży do zera), ale jednocześnie nigdzie nie jest różniczkowalna (liczba skoków dąży do nieskończoności). Jest to przykład wyjątkowo dziwnej funkcji. Takiej funkcji nie możemy narysować, ale to co opisano powyżej powinno wyrobić w nas intuicję o własnościach realizacji procesu Wienera. Matematycy (jak zwykle) dowodzą to ściśle, a fizycy to czują i wiedzą dlaczego tak jest. Należy także pamiętać, że taki graniczny proces nie istnieje w rzeczywistości. Rzeczywiste procesy błądzenia przypadkowego mają różne długości (ale nie nieskończenie małe) oraz odbywają się z niezerową częstotliwością (:math:`T` nie jest nieskończenie małe). Jednak gdy :math:`T` jest najmniejszą skalą czasową w badanym układzie, a każde inne czasy charakterystyczne są znacznie większe, to przybliżenie otrzymane po operacji dokonania granic jest rozsądne. To jest przykład kolejnej idealizacji, jaką stosują fizycy do opisu rzeczywistości. 

Proces Wienera jest procesem gaussowskim (normalnym), co jest konsekwencją centralnego twierdzenia granicznego: proces jest wynikiem bardzo wielu niezależnych losowych zdarzeń, dlatego niezależnie od rozkładu prawdopodobieństwa każdego z tych zdarzeń, jego rozkład będzie zbliżony do normalnego.

Poniżej pokazujemy jedną z możliwych  realizacji (trajektorii) procesu Wienera. Czytelnik może sam wygenerować inne realizacje, zmieniając parametry pojawiające się w programie.

.. only:: latex

  .. code-block:: python

    reset()
    # parametry symulacji
    h = 0.01 #krok
    N = 5000 #ilosc krokow

    # parametry SDE
    x0 = 0 #wartosc poczatkowa
    D = 0.01 #wspolczynnik dyfuzji

    x = [x0]
    for i in xrange(1,N):
      n01 = normalvariate(0,1)
      x.append(x[i-1] + sqrt(2*h*D) * n01)

  .. figure:: images/sage_chIII02_01.*
      :align: center
      :width: 80%
      :alt: figchIII0201

      Relizacja procesu Wienera.



.. only:: html

  .. sagecellserver::
   :is_verbatim: True

    reset()
    # parametry symulacji
    h = 0.01 #krok
    N = 5000 #ilosc krokow
    # parametry SDE
    x0 = 0 #wartosc poczatkowa
    D = 0.01 #wspolczynnik dyfuzji
    x = [x0]
    for i in xrange(1,N):
      n01 = normalvariate(0,1)
      x.append(x[i-1] + sqrt(2*h*D) * n01)
    list_plot(x, plotjoined=True, axes_labels=[r'$t$',r'$x(t)$'], figsize=[8,3], frame=1, axes=0)

  .. end of input




Proces Poissona
---------------

Rozważamy przedział liczbowy :math:`[0, T]`. Z przedziału tego wybieramy losowo jeden punkt, jedną liczbę. Ponieważ wszystkie liczby są "równo rozłożone", więc prawdopodobieństwo tego, że punkt ten jest w przedziale :math:`(t_1, t_2)\subset [0, T]` wynosi 
 
.. MATH::
 :label: eqn16

 P(A)= p = \frac{t_2 -t_1}{T}$


Jeżeli wylosowany punkt jest w tym przedziale, uważam to za sukces. Wybieramy teraz losowo n punktów z przedziału :math:`[0, T]`. Prawdopodobieństwo tego, że k z tych wszystkich n-punktów będzie w przedziale :math:`(t_1, t_2)\subset [0, T]` jest określone przez rozkład dwumianowy :math:`p_n(k)`. Jeżeli przedział :math:`[0, T]` będzie przedziałem czasowym, to w przedziale tym mamy :math:`n` losowych chwil czasu oraz :math:`k \le n` losowych chwil czasu w przedziale :math:`(t_1, t_2)\subset [0, T]`. Teraz wykonujemy przejście graniczne: 

.. MATH::
 :label: eqn17

 n \to \infty, \;\;\; p \to 0 \;\;\;\; \mbox{ale} \;\;n\cdot p = \frac{n(t_2 - t_1)}{T} = \lambda $


co da się osiągnąć gdy założymy że :math:`T \to \infty` przy czym 

.. MATH::
 :label: eqn18

 \mu = \frac{n}{T}$


jest stałą wielkością i oznacza ilość losowych punktów w jednostkowym przedziale, czyli gęstość losowo wybranych punktów na osi czasu. 
Przy takim skalowaniu otrzymamy wyrażenie na parametr 

.. MATH::
 :label: eqn19

 \lambda = \mu (t_2 -t_1) \;$


Przypiszmy teraz każdej losowej chwili czasu akt narodzin dziecka. Prawdopodobieństwo tego że 
w przedziale :math:`(t_1, t_2)` jest k-punktów odpowiada prawdopodobieństwu tego że w przedziale 
czasu :math:`(t_1, t_2)` urodziło się k dzieci. W ten sposób otrzymujemy losowy proces urodzin. 
Elementem losowym jest czas narodzin. Wynikiem jest liczba dzieci :math:`N(t)` w pewnej chwili 
czasu :math:`t`. Rozkład prawdopodobieństwa jest dany przez rozkład Poissona: 
   
.. MATH::
 :label: eqn20

  Pr\{k \; \mbox{dzieci urodzonych w przedziale} \; (t_1, t_2)\} = Pr\{N(t_2) - N(t_1) =k\} = e^{-\mu (t_2 - t_1)} \; \frac{[\mu (t_2 - t_1)]^k}{k!}


Przyjmijmy teraz, że :math:`t_1 = 0` i :math:`t_2 =t`. Wówczas :math:`t_2 - t_1 =t-0=t` oraz 
   
.. MATH::
 :label: eqn21

  p_k(t) = Pr\{N(t) = k\} = Pr\{k \; \mbox{dzieci urodzonych w przedziale} \; (0, t)\} = \mbox{e}^{-\mu t} \; \frac{(\mu t)^k}{k!}$

 
jest prawdopodobieństwem tego, że w przedziale czasu :math:`(0, t)` urodziło się k dzieci. Jeżeli liczbę urodzonych dzieci oznaczymy przez :math:`N(t)` to otrzymamy proces stochastyczny nazywany procesem urodzin. Założymy, że :math:`N(0) = 0`. Oczywiście nie jest to bezwzględny wymóg, ale konwencja. Równie dobrze mógłbym badać dowolny inny stan początkowy :math:`N(0)`. Proces urodzin tak jak każda zmienna losowa o rozkładzie Poissona przyjmuje wartości całkowite nieujemne: 

.. MATH::
 :label: eqn22

 N(t) = \{0, 1, 2, \dots\} $



 Jeżeli :math:`N(t) = k` to mówimy, że układ jest w stanie :math:`k`. 

Takie sformułowanie jest często stosowane przez fizyków, zwłaszcza w kontekście fizyki kwantowej, gdzie stanami mogą być poziomy energetyczne układów kwantowych. Proces urodzin odpowiadałby przejściu z jednego poziomu energetycznego do najbliższego wyższego poziomu energetycznego.Przejście do stanu o niższej energii nie jest opisane procesem urodzin, ale procesem urodzin i śmierci. 

Można udowodnić, że przyrosty procesu urodzin :math:`N(t_2) - N(t_1)` oraz :math:`N(t_4) - N(t_3)` na *nieprzekrywających się przedziałach* :math:`(t_1, t_2)` oraz :math:`(t_3, t_4)` są zmiennymi losowymi niezależnymi. Jest to bardzo ważna własność procesu urodzin o poissonowskiej statystyce losowych chwil urodzin :math:`t_i`. Przyrost procesu urodzin :math:`N(t_2) - N(t_1)` jest stacjonarny, to znaczy, że prawdopodobieństwu tego że w przedziale czasu :math:`(t_1, t_2)` urodziło się k dzieci zależy od różnicy 
czasów :math:`t_2-t_1`, a nie zależy od tego gdzie te chwile czasu :math:`t_1` i :math:`t_2` są na osi czasu. Jeżeli tak jest, to w ogólnym przypadku mówimy, że *proces stochastyczny ma przyrosty stacjonarne*. Uwaga: sam proces nie jest stacjonarny ponieważ rozkład prawdopodobieństwa zależy od czasu ale proces ma stacjonarne przyrosty! 
Realizacje procesu są *nieciągłymi* i niemalejącymi funkcjami czasu i są to funkcje schodkowe o skoku 1, przy czym skok następuje w losowych chwilach czasu :math:`t_i` (zakładamy, że tylko jeden osobnik rodzi się w danym momencie czasu :math:`t_i` i w rzeczywistości jest to prawda abstrahując od kwestii spornych przy cesarskim cięciu w przypadku wielodzietnych ciąży). Funkcje schodkowe można zapisać przy pomocy funkcji theta Heaviside'a, więc proces urodzin :math:`N(t)` można przedstawić w eleganckiej matematycznej postaci: 

.. MATH::
 :label: eqn23

 N(t) = \sum_{i=1}^{\infty} \theta(t-t_i)


Aby otrzymać jedną realizację procesu urodzin w przedziale czasu :math:`[0, T]`, należy losowo wybrać w tym przedziale punkty :math:`t_i` które są momentami urodzenia. Mówimy, że punkty te mają statystykę Poissona, mając na myśli ich jednorodne (ale losowe) rozłożenie na osi czasu. Mimo że realizacje są funkcjami nieciągłymi (punktami nieciągłości są skoki), proces ten *jest procesem ciągłym* w sensie średnio-kwadratowym! Co to oznacza? Poglądowo oznacza to tyle, że jeżeli wybiorę jakiś punkt :math:`t` na osi czasu, to realizacje będą ciągłe w tym punkcie. Inaczej mówiąc, prawdopodobieństwo tego, że punkt :math:`t` "trafi" w nieciągłość (w skok schodka) jest zerowe! Podsumowując, możemy to wszystko zebrać w matematyczną definicję procesu stochastycznego Poissona (lub poissonowskiego procesu urodzin). 

**Definicja**
 Procesem Poissona :math:`N(t)` nazywamy proces stochastyczny o następujących własnościach: 

 1. Przestrzenią stanów jest zbiór liczb całkowitych nieujemnych, :math:`X=\{k\}_0^{\infty}\; = \{0, 1, 2, \dots \}`

 2. :math:`N(0) = 0` (proces startujący z zera)

 3. :math:`N(t_2) - N(t_1)` jest liczbą punktów w przedziale :math:`(t_1, t_2)`

 4. :math:`N(t)` ma stacjonarne i niezależne przyrosty na nieprzekrywających się przedziałach o rozkładzie prawdopodobieństwa 
.. MATH::
 :label: eqn24

   $$ Pr\{N(t_2) - N(t_1) =k\} = e^{-\mu (t_2 - t_1)} \; \frac{[\mu (t_2 - t_1)]^k}{k!}




Własności procesu Poissona
++++++++++++++++++++++++++

1. Wartość średnia 

  .. MATH::
   :label: eqn25

   m(t) = \langle N(t) \rangle = \mu t


  Z tej relacji mamy interpretację parametru 

  .. MATH::
   :label: eqn26

   \mu = \frac{\langle N(t) \rangle}{t} 


  Parametr :math:`\mu` to średnia liczba punktów w jednostce czasu lub średnia liczba urodzeń w jednostce czasu. Ten parametr może być 
  oszacowany z danych statystycznych czy też z danych doświadczalnych. 

2. Moment statystyczny drugiego rzędu 

  .. MATH::
   :label: eqn27

   \langle N^2(t) \rangle = \mu^2 t^2 + \mu t\; 


3. Stąd mamy relację dla fluktuacji procesu 

  .. MATH::
   :label: eqn28

   \sigma^2(t) = \langle N^2(t) \rangle - \langle N(t) \rangle^2 = \mu t \; 


4. Funkcja charakterystyczna :math:`C(\omega, t)` procesu Poissona ma postać:

  .. MATH::
   :label: eqn29

   C(\omega, t) = \langle \mbox{e}^{i\omega N(t)} \rangle = \sum_{k=0}^{\infty} \mbox{e}^{i\omega k} p_k(t) = \sum_{k=0}^{\infty} \mbox{e}^{i\omega k} \mbox{e}^{-\mu t} \; \frac{(\mu t)^k}{k!} = \mbox{e}^{-\mu t} \; \sum_{k=0}^{\infty} \mbox{e}^{i\omega k} \; \frac{(\mu t)^k}{k!} = \mbox{exp}\left[\mu t \left(\mbox{e}^{i\omega} -1\right)\right] 


5. Z p. 3 wynika, że średnio-kwadratowe odchylenie 

  .. MATH::
   :label: eqn30

   \sigma(t) = \sqrt{\mu t} \; 


Ważna jest interpretacja tego wyniku: Fluktuacje procesu narastają liniowo w czasie. To oznacza, że im dłuższy jest czas tym odchylenia od wartości średniej mogą być coraz większe. Można przeprowadzić następujące dywagacje: 

Badamy proces urodzin i przeprowadzamy szereg symulacji komputerowych tego procesu. Otrzymujemy wiele realizacji procesu urodzin. Z analizy tych realizacji możemy metodami statystyki otrzymać wartość średnią procesu. Oczekujmy (coś to ma wspólnego z wartością oczekiwaną czyli wartością średnią), że wiele realizacji będzie przebiegać w pobliżu wartości średniej. Owszem to prawda, ale jednocześnie pojawiają się realizacje które daleko odbiegają od wartości średniej. Im dłuższy jest ten czas, tym większe odchylenia od wartości średniej mogę zaobserwować. Jest to własność, która w deterministycznym świecie nie występuje (deterministyczny świat nie jest światem rzeczywistym, jest jego idealizacją, bardziej lub mniej adekwatną). 

Oczywiście powyższe relacje można podać dla przyrostów procesu Poissona: 

1. Wartość średnia przyrostów procesu Poissona 

  .. MATH::
   :label: eqn31

   \langle N(t_2) - N(t_1)\rangle = \mu (t_2-t_1)


2. Moment statystyczny drugiego rzędu dla przyrostów procesu Poissona 

  .. MATH::
   :label: eqn32

   \langle [N(t_2) - N(t_1)]^2 \rangle = \mu^2 (t_2-t_1)^2 + \mu (t_2-t_1) \; $


3. Funkcja korelacyjna procesu Poissona 

  .. MATH::
   :label: eqn33

   R(t_2, t_1) = \langle N(t_2) N(t_1)\rangle = \mu^2 \;t_2 \;t_1 + \mu \; \mbox{min}(t_2, t_1) = \langle N(t_2)\rangle\langle N(t_1)\rangle+ \mu \; \mbox{min}(t_2, t_1)


  gdzie funkcja dwóch zmiennych :math:`\mbox{min}(x, y)` oznacza wartość mniejszej liczby z dwóch liczb :math:`x` i :math:`y`: 

  .. MATH::
   :label: eqn34

   \mbox{min} (x, y) = \left\{ {{x \; \; \mbox{if}\; \; x < y} \atop {y \; \; \mbox{if} \; \; y<x}}\right\}


Z powyższych relacji wynika, że *proces urodzin jest procesem skorelowanym*.

Pokażemy, w jaki sposób można wyznaczyć postać funkcji korelacyjnej. Tą samą metodę stosuje się do obliczenia funkcji korelacyjnej procesu Wienera i procesu Levy'ego. Dlatego w tych przypadkach czytelnik sam powtórzy wszystkie kroki obliczeń. Rozpatrzymy dwa przypadki pamiętając że :math:`N(t_0) = N(0) =0`: 

1. Niech :math:`t_2 > t_1 > t_0=0`. Przyrosty :math:`N(t_2) - N(t_1)` oraz :math:`N(t_1) - N(t_0)` są zmiennymi losowymi niezależnymi dla których 

  .. MATH::
   :label: eqn35

   \langle[N(t_2) - N(t_1)] [ N(t_1) - N(t_0)] \rangle = \langle N(t_2) - N(t_1) \rangle \cdot \langle N(t_1) - N(t_0) \rangle = \mu (t_2 -t_1) \; \mu t_1.


  Skorzystaliśmy tu z tego, że wartość średnia iloczynu zmiennych losowych niezależnych jest iloczynem wartości średnich zmiennych losowych niezależnych. Z drugiej strony, wymnożymy wyrażenia w nawiasach pamiętając, że :math:`N(t_0) = N(0) = 0` (proces Poissona startuje z zera). Wówczas otrzymamy 

  .. MATH::
   :label: eqn36

   \langle N(t_2) N(t_1) - N^2(t_1) \rangle = \langle N(t_2) N(t_1) \rangle - \langle N^2(t_1)\rangle =\mu (t_2 -t_1) \; \mu t_1


  Stąd wynika, że 

  .. MATH::
   :label: eqn37

   \langle N(t_2) N(t_1) \rangle = \mu (t_2 -t_1) \; \mu t_1 +\langle N^2(t_1)\rangle = \mu (t_2 -t_1) \; \mu t_1 + \mu^2 t_1^2 + \mu t_1 

  .. MATH::
   :label: eqn38

   \mu^2 t_2 t_1 + \mu t_1 \; \; \; \; \mbox{dla} \; \; \; t_2 > t_1


2. Niech :math:`t_1 > t_2 > t_0=0`. Przyrosty :math:`N(t_1) - N(t_2)` oraz :math:`N(t_2) - N(t_0)` są zmiennymi losowymi niezależnymi. Możemy powtórzyć trzy kroki analogiczne do tych w powyższych trzech równaniach otrzymując 

  .. MATH::
   :label: eqn39

   \langle N(t_1) N(t_2)\rangle = \mu (t_1 -t_2) \; \mu t_2 + \langle N^2(t_2)\rangle = \mu^2 t_1 t_2 + \mu t_2\; \; \; \; \mbox{dla} \; \; \; t_1 > t_2


  Ponieważ 

  .. MATH::
   :label: eqn40

   \langle N(t_2) N(t_1)\rangle = \langle N(t_1) N(t_2)\rangle$


  to z powyższych równań otrzymujemy tezę.

Rozkład prawdopodobieństwa Poissona 

.. MATH::
 :label: eqn41

  p_k(t) = Pr\{N(t) = k\} = \mbox{e}^{-\mu t} \; \frac{(\mu t)^k}{k!}$


spełnia następujący układ równań ewolucji (ang. master equations)

.. MATH::
 :label: eqn42

 \frac{dp_0(t)}{dt} = -\mu p_0(t), \; \; \; p_0(0) = 1 


.. MATH::
 :label: eqn43

 \frac{dp_k(t)}{dt} = \mu p_{k-1}(t) -\mu p_k(t), \; \; \; p_k(0) = 0, \; \; \; k=1, 2, 3, \dots 


Słuszność tego układu równań można sprawdzić bezpośrednim rachunkiem, z jednej strony różniczkując wyrażenie dla :math:`p_k(t)`, z drugiej strony wstawiając wrażenia na :math:`p_k(t)` oraz :math:`p_{k-1}(t)`. Równania te mają też jasną interpretację. W tym celu spojrzymy nieco inaczej na nasz proces. Mówimy, że układ jest w stanie :math:`k` jeżeli 

.. MATH::
 :label: eqn44

 N(t) =k\;


Stan układu jest określony przez możliwe wartości populacji w danej chwili czasu, :math:`k=0, 1, 2,....`. 
Zmiana stanu k układu w danej chwili czasu, opisywana przez tempo zmian czyli pochodną :math:`dp_k(t)/dt`, może zachodzić z dwóch powodów: albo stan k pojawia się ze stanu (k-1) ponieważ następuje akt narodzin, albo stan k znika i układ przechodzi do stanu k+1 (ponieważ następuje akt narodzin). W wyrażeniu powyższym 
wyraz :math:`\mu p_{k-1}(t)\;` wchodzi ze znakiem dodatnim ponieważ stan k pojawia się ze stanu k-1; wyraz :math:`\mu p_{k}(t)\;` wchodzi ze znakiem ujemnym ponieważ stan k znika i układ przechodzi w stan k+1 (ponieważ ktoś się urodził). Jest to nic innego jak równanie bilansu. 

Proces Poissona można uogólnić tak, aby skok nie był tylko w górę o 1. Można modelować skoki w górę i w dół o dowolne wielkości. Mogą to być skoki deterministyczne lub losowe. Oto jedno z możliwych uogólnień: 

.. MATH::
 :label: eqn45

 N(t) = \sum\limits_i z_i \theta (t-t_i), \qquad 


gdzie :math:`\theta (x)` jest funkcją schodkową Heaviside'a oraz :math:`\{t_i\}` jest zbiorem losowych chwil skoków o średniej gęstości :math:`\mu`. Amplitudy skoków :math:`\{z_i\}` są niezależnymi zmiennymi losowymi o tym samym rozkładzie prawdopodobieństwa :math:`\rho(z)` i są niezależne od :math:`t_i`. Realizacjami takiego procesu są funkcje schodkowe o skokach w losowych chwilach czasu :math:`t_i` i o losowych wielkościach skoku :math:`z_i`. Wartość średnia takiego procesu Poissona wynosi

.. MATH::
 :label: eqn46

 \langle N(t)\rangle = \mu\langle z_i\rangle t$$


gdzie

.. MATH::
 :label: eqn47

 \langle z_i \rangle = \int_{-\infty}^{\infty} z \rho(z) dz 


Funkcja korelacyjna tego procesu Poissona ma postać: 
.. MATH::
 :label: eqn48

 R(t_2, t_1) = \langle N(t_2) N(t_1)\rangle = \mu^2 \langle z_i\rangle^2 \;t_2 \;t_1 + \mu \langle z_i\rangle\; \mbox{min}(t_2, t_1) = \langle N(t_2)\rangle\langle N(t_1)\rangle+ \mu \;\langle z_i\rangle \mbox{min}(t_2, t_1)

Pojedynczą Realizację procesu Poissona można uzyskać poprzez wygenerowanie ``N`` niezależnych 
punktów losowo rozłożonych na osi czasu na odcinku :math:`[0,T]`. Ilość punktów generujemy z 
rozkładu Poissona a ich położenie na osi czasu zgodnie z rozkładem jednorodnym :math:`U(0,N)`. 
Najprościej będzie posłużyć się dwoma pakietami. Pakietem ``scipy``, aby wygenerować 
ilość punktów korzystając z rozkładu Poissona. Natomiast pakiet ``matplotlib`` posłuży nam 
funkcją step do narysowania funkcji schodkowej. Punkty czasowe, w których nastąpi skok 
uzyskamy wykorzystując podstawową funkcję ``random()``.

.. only:: latex

  .. code-block:: python

    from scipy import stats
    import matplotlib.pyplot as plt

    T = 15
    mu = 1.3
    N = stats.poisson.rvs(T*mu)
    steps = range(N+1)
    
    points = sorted([random()*T for i in steps])
    
    plt.step(points,steps,linewidth=2R)
    plt.xlabel(r'$t$')
    plt.ylabel(r'$N(t)$')
    plt.savefig('sage_chIII02_02.pdf')
    plt.savefig('sage_chIII02_02.png')
    plt.clf()

  .. figure:: images/sage_chIII02_02.*
      :align: center
      :width: 80%
      :alt: figchIII0202

      Relizacja procesu Poissona.

.. only:: html

  .. sagecellserver::
   :is_verbatim: True

    from scipy import stats
    import matplotlib.pyplot as plt
    T = 15
    mu = 1.3
    N = stats.poisson.rvs(T*mu)
    steps = range(N+1)
    points = sorted([random()*T for i in steps])
    plt.step(points,steps,linewidth=2R)
    plt.xlabel(r'$t$')
    plt.ylabel(r'$N(t)$')
    plt.savefig('sage_chIII02_02.pdf')
    plt.savefig('sage_chIII02_02.png')
    plt.clf()

  .. end of input


Proces Levy-ego
---------------

Uogólnimy dwa powyższe procesy: Wienera i Poissona, które w potocznym sensie są jednocześnie najbardziej losowe. Są też procesami Markowa. Podkreślamy, że są to podstawowe procesy stochastyczne, ale nie powinno się je nazywać szumem ponieważ nie są to procesy stacjonarne. Są one najbardziej losowe, ponieważ następujące po sobie przyrosty tych procesów są niezależne.

Powyższe dwa procesy są szczególnymi przypadkami procesu który nazywa się procesem Levy'ego. Wiele innych procesów są albo funkcjami procesu Levy'ego albo funkcjonałami (trochę ogólniejszymi zależnościami) tego procesu.

Definicja procesu Levy'ego :math:`L(t)` jest relatywnie prosta: jest to rzeczywisty proces stochastyczny, prawostronnie ciągły o skończonych granicach lewostronnych oraz

#. :math:`L(t)` startuje z zera, tzn. :math:`L(0)=0`

#. :math:`L(t)` ma niezależne przyrosty na nieprzekrywających się przedziałach, tzn. przyrosty :math:`L(t_4) -L(t_3)` oraz :math:`L(t_2) -L(t_1)` są niezależnymi zmiennymi losowymi na nieprzekrywających się przedziałach :math:`[t_1, t_2]` and :math:`[t_3, t_4]` dla dowolnych chwil czasu takich że :math:`0 \le t_1 \le t_2 \le t_3 \le t_4`

#. :math:`L(t)` ma stacjonarne przyrosty, tzn. rozkład prawdopodobieństwa zmiennych losowych :math:`L(t_2) -L(t_1)` zależy od różnicy czasów :math:`t_2 -t_1` dla dowolnych :math:`0 \le t_1 \le t_2`.

#. :math:`L(t)` jest stochastycznie ciągły, tzn. dla dowolnych :math:`t \ge 0` oraz :math:`\epsilon > 0`:

  .. MATH::
   :label: eqn49

   \lim_{s\to t} P(|L(t) -L(s)|>\epsilon)=0


Własności te są takie same jak dla procesu Wienera i procesu Poissona. Ale istnieją jeszcze inne procesy, które mają te same własności. Dlatego włączenie tych innych procesów do procesu Wienera i Poissona daje w rezultacie proces Levy'ego.

Z własności (1) i (2) wynika, że funkcja korelacyjna procesu Levy'ego ma postać (patrz wykłady: Procesy i zjawiska losowe) 

.. MATH::
 :label: eqn50

 \langle L(t) L(s) \rangle = 2D_0 \mbox{min} (t, s) \equiv 2D_0 [t \theta(s-t) + s \theta(t-s)], \qquad 


gdzie :math:`D_0 >0` jest intensywnością (natężeniem) procesu Levy'ego.

Własności probabilistyczne tego procesu można wyznaczyć np. z jego funkcji charakterystycznej, która zgodnie z twierdzeniem Levy'ego-Chinczyna ma postać

.. MATH::
 :label: eqn51

 C(\omega, t) = \langle \mbox{e}^{i\omega L(t)} \rangle = \mbox{e}^{t \psi(\omega)}, \qquad 


gdzie eksponenta Levy'ego ma postać

.. MATH::
 :label: eqn52

 \psi(\omega) = ia_0 \omega -\frac{1}{2} b \omega^2+\int_{-\infty}^{\infty} \left[\mbox{e}^{i\omega y} - 1 - i\omega y I_{(-1,1)}(y) \right] \nu (dy), \qquad 


Stałe :math:`a_0\in R, b \ge 0. Oznaczenie I_A(y)` jest tzw. indykatorem zbioru :math:`A`: jest to funkcja o własności:

.. MATH::
 :label: eqn53

  I_A(y) =1 \quad \mbox{gdy} \quad y\in A \quad \mbox{oraz} \quad I_A(y) = 0 \quad \mbox{w pozostałych przypadkach} 


:math:`\nu(dy)` jest tzw. miarą Levy'ego o własności

.. MATH::
 :label: eqn54

 \nu (R-[-1, 1]) < \infty, \quad \int_{-1}^1 y^2 \nu(dy) < \infty. \qquad 


Dla niewtajemniczonych i nie-ekspertów matematycznych: zamiast tajemniczego zapisu :math:`\nu(dy)` można używać zapisu :math:`\nu(dy) = h(y) dy` gdzie :math:`h(y)` jest nieujemną funkcją. Z powyższego przedstawienia funkcji charakterystycznej wynika, że proces Levy'ego jest określony przez 3 liczby, tzw. tryplet Levy'ego-Chinczyna :math:`(a_0, b, \nu)`, gdzie :math:`a_0` charakteryzuje dryf, :math:`b` to parametr procesu Wienera oraz :math:`\nu` charakteryzuje skoki procesu. Tryplet :math:`(0, b, 0)` to rozkład Gaussa dla procesu Wienera. Tryplet :math:`(0, 0, \mu \delta(y-1))` to rozkład Poissona z parametrem :math:`\mu` który opisuje proces Poissona o skokach 1 w chwilach o równomiernym rozkładzie. Tzw. złożony proces Poissona to proces o losowych skokach o różnej wielkości z rozkładem prawdopodobieństwa :math:`\nu` z :math:`\nu(R) <\infty`. Eksponenta Levy'ego przyjmuje wówczas postać

.. MATH::
 :label: eqn55

 \psi(\omega) = \mu \int_{-\infty}^{\infty} \left[\mbox{e}^{i\omega y} - 1 \right] \nu (dy). \qquad 


Jeżeli :math:`\nu(R) = \infty` wówczas :math:`L(t)` jest skokowym procesem o nieskończonej liczbie małych skoków w dowolnie małym przedziale czasu. W rzeczywistości taki proces nie istnieje, ale jeżeli pojawia się bardzo duża ilość skoków w małych przedziałach czasu, to przybliżenie takie dobrze modeluje układ. 

Z twierdzenia Levy'ego-Ito wynika, że proces Levy'ego :math:`L(t)` składa się z 4 niezależnych procesów elementarnych:

.. MATH::
 :label: eqn56

 L(t)=L_1(t) +L_2(t) + L_3(t) + L_4(t), \qquad 


gdzie :math:`L_1(t)` to dryf, :math:`L_2(t)` to proces Wienera, :math:`L_3(t)` to złożony proces Poissona oraz :math:`L_4(t)` to czysto skokowy proces zwany martngałem (a pure jump martingale). Mówiąc w prosty sposób, martyngał to taki proces stochastyczny, że warunkowa wartość średnia

.. MATH::
 :label: eqn57

 \langle L(t_{n+1})|L(t_{1}) L(t_{2})... L(t_{n})\rangle = L(t_{n})


Innymi słowy, to taki proces w którym warunkowa wartość średnia procesu w momencie :math:`t+1`, gdy znamy jego wartości do jakiegoś wcześniejszego momentu :math:`t`, jest równa wartości procesu w momencie :math:`t`.

Taka dekompozycja wynika z eksponenty Levy'ego, która może być przedstawiona w postaci 4 wyrażeń:

.. MATH::
 :label: eqn58

 \psi(\omega) = \psi_1(\omega) +\psi_2(\omega) +\psi_3(\omega) +\psi_4(\omega), \qquad 


gdzie

.. MATH::
 :label: eqn59

 \psi_1(\omega) = i a_0 \omega, \quad \psi_2(\omega) = -\frac{1}{2} b \omega^2, \quad \psi_3(\omega) = \int_{|y| \ge 1} \left[\mbox{e}^{i\omega y} - 1 \right] \nu (dy), \qquad 


.. MATH::
 :label: eqn60

 \psi_4(\omega) = \int_{|y| < 1} \left[\mbox{e}^{i\omega y} - 1 - i\omega y \right] \nu (dy).


Warto podkreślić, że liniowa kombinacja niezależnych procesów Levy'ego jest także procesem Levy'ego.

Szczególny, ale bardzo ważnym przypadkiem procesu Levy'ego jest tzw. :math:`\alpha`-stabilny proces :math:`L_{\alpha}(t)` 0 indeksie :math:`\alpha \in (0, 2]`. To jest przypadek trypletu :math:`(a, 0, \nu)` z miarą Levy'ego w postaci

.. MATH::
 :label: eqn61

 \nu(y) = \left[ c_{1} I_{(0,\infty)}(y) + c_{2} I_{(-\infty,0)}(y) \right] | y|^{-\alpha -1}\ dy, \qquad 


gdzie :math:`c_1>0` i :math:`c_2>0`. Funkcja charakterystyczna jest postaci

.. MATH::
 :label: eqn62

 \psi(\omega)=\left\{\begin{array}{ll}i a \omega - c | \omega|^\alpha\left (1-i\beta\mbox{sgn}\omega \tan\frac{\pi\alpha}{2} \right), & \mbox{for}\;\;\alpha\neq 1, \\i a \omega -c | \omega|\left (1+i\beta\frac{2}{\pi}\mbox{sgn} \omega \ln|k| \right), & \mbox{for}\;\;\alpha=1, \\\end{array}\right. \qquad 


gdzie

.. MATH::
 :label: eqn63

 \alpha\in(0, 2], \; \beta =\beta(c_1, c_2) \in [-1, 1], c = c(\alpha, c_1, c_2) \in(0, \infty)


oraz :math:`a = a(a_0, \alpha, c_1, c_2)`. Przypadek :math:`c_1=c_2` implikuje :math:`\beta=0` i wówczas proces jest symetryczny.

Tzw. charakterystyczny funkcjonał (pewien szczególny rodzaj odwzorowania, funkcji) symetrycznego :math:`\alpha`- stabilnego białego szumu Levy'ego :math:`Y_{\alpha}(t)` (gdy :math:`a=0, \beta=0` w równaniu :eq:`eqn62` ) jest w postaci

.. MATH::
 :label: eqn64

 {\cal C}_{Y_{\alpha}}[f] =\langle {\mbox{exp}}\left[i \int_0^{t} ds\; f(s) Y_{\alpha}(s) \right] \rangle = {\mbox{exp}}\left[- c \int_0^{t} dt\; | (s)|^{\alpha} \right], \qquad 


Ten zapis ma uzmysłowić, że funkcjonał :math:`{\cal C}` zależy od historii na przedziale :math:`(0, t)`. Funkcja :math:`f` jest dowolną funkcją. Jeżeli testowa funkcja :math:`f(t)` jest stała, :math:`f(s) =\omega`, to funkcjonał redukuje się do funkcji charakterystycznej.

Generowanie realizacji procesu Levy'ego wymaga nieco większego nakładu pracy. 
Metoda generowania zmiennych z rozkładu $\alpha-$stabilnego opisana jest w 
dodatku numerycznym na końcu tego podręcznika. Sama realizacja procesu przebiega 
identycznie jak w przypadku procesu Wienera. Jedynymi różnicami są wykładnik 
stojący przy prefaktorze zmiennej losowej oraz rozkład którym posługujemy się 
do generowania liczb losowych.

Posłużymy się metodą ``rvs`` funkcji ``levy_stable`` wbudowaną w pakiet ``stats`` biblioteki 
``scipy``. Pobiera ona 5 argumentów

  ``stats.levy_stable(alpha, beta, loc=0, scale=1, size=1)``

gdzie 

* ``alpha``, ``beta`` - to parametry rozkładu Levy'ego

* ``loc=0``, ``scale=1`` - to odpowiednio średnia i odchylenie standardowe (wraz z domyślnymi wartościami)

*  ``size=1`` - to ilość zmiennych losowych generowanych jednorazowym wywołaniem


Więcej informacji uzyskamy w pomocy (wpisując stats.levy_stable?)

.. only:: latex

  .. code-block:: python

      # kilka importów
      import numpy as np
      from scipy import stats
      import warnings
      warnings.simplefilter('ignore', DeprecationWarning)

      # parametry symulacji
      h = 0.01 #krok
      N = 5000 #ilosc krokow

      # parametry SDE
      x0 = 0 #wartosc poczatkowa

      #Levy - Smirnoff
      alpha = 1/2
      beta = 1
      mu = 0
      sigma = 0.1

      x = [x0]
      for i in xrange(1,N):
        lab = stats.levy_stable.rvs(alpha, beta, loc=mu, scale=sigma)
        x.append(x[i-1] + h**(1/alpha) * lab)


    .. figure:: images/sage_chIII02_03.*
      :align: center
      :width: 80%
      :alt: figchIII0203

      Relizacja procesu Levy-Smirnoffa.



.. only:: html

  .. sagecellserver::
   :is_verbatim: True

      import numpy as np
      from scipy import stats
      import warnings
      warnings.simplefilter('ignore', DeprecationWarning)
      # parametry symulacji
      h = 0.01 #krok
      N = 5000 #ilosc krokow
      # parametry SDE
      x0 = 0 #wartosc poczatkowa
      #Levy - Smirnoff
      alpha = 1/2
      beta = 1
      mu = 0
      sigma = 0.1
      x = [x0]
      for i in xrange(1,N):
        lab = stats.levy_stable.rvs(alpha, beta, loc=mu, scale=sigma)
        x.append(x[i-1] + h**(1/alpha) * lab)
      list_plot(x, plotjoined=True, axes_labels=[r'$t$',r'$x(t)$'], figsize=[8,3], frame=1, axes=0)


  .. end of input

Korzystając z rozkładu Levy'ego możemy oczywiście uzyskać zmienne normalne 
:math:`N(0,1)` kładąc :math:`$\alpha=2, \beta=0, \sigma = 1/\sqrt(2), \mu=0`.

.. only:: latex

  .. figure:: images/sage_chIII02_04.*
    :align: center
    :width: 80%
    :alt: figchIII0204

    Relizacja procesu Wienera uzyskana z rozkładu Levy'ego.

.. only:: html

  .. sagecellserver::
   :is_verbatim: True

      import numpy as np
      from scipy import stats
      import warnings
      warnings.simplefilter('ignore', DeprecationWarning)
      # parametry symulacji
      h = 0.01 #krok
      N = 5000 #ilosc krokow
      # parametry SDE
      x0 = 0 #wartosc poczatkowa
      #N(0,1)
      alpha = 2
      beta = 0
      mu = 0
      sigma = 1/sqrt(2.)
      x = [x0]
      for i in xrange(1,N):
        lab = stats.levy_stable.rvs(alpha, beta, loc=mu, scale=sigma)
        x.append(x[i-1] + h**(1/alpha) * lab)
      list_plot(x, plotjoined=True, axes_labels=[r'$t$',r'$x(t)$'], figsize=[8,3], frame=1, axes=0)

  .. end of input
