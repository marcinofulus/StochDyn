Równania stochastyczne i ich interpretacja
==========================================

Dotychczas rozważaliśmy modele deterministyczne bazujące na równaniach różniczkowych zwyczajnych. Twierdzenia matematyczne dają nam pewność że przy odpowiednicj założeniach rozwiązania równań różniczkowych są jednoznaczne przy zadanych warunkach początkowych. To jest kluczowe dla szerokiej klasy zjawisk w przyrodzie. Ten determinizm pozwala przewidywać ewolucję układów, pozwala konstruować i używać urządzenia, które pracują zgodnie z jego planowanymi funkcjami. To zapewniają twierdzenia matematyczne. Ale też pokazaliśmy, że matematyczny determinizm może być w praktyce złudny ponieważ dokładne w sensie matematycznym przygotowanie układu w określonych stanach początkowych jest niemożliwe. Niedokładności warunków początkowych mogą w trakcie ewolucji narastać powodując utratę przewidywalności ukrytą w równaniach różniczkowych. Dlatego ten fenomen nazywa się deterministycznym chaosem, czyli czymś co jest nieprzewidywalne ale jednocześnie nie jest losowe. Teraz rozpoczynamy wędrówkę po innej klasie zjawisk i procesów dynamicznych, a mianowicie po krainie procesów losowych. Ta klasa zjawisk bazuje na teorii procesów stochastycznych. To jest teoria matematyczna, której fundamenty oparte są o teorię prawdopodobieństwa. Niewątpliwie procesy stochastyczne nie są procesami deterministycznymi. Ich opis używa takich pojęć jak wartość średnia, fluktuacje czyli niespodziewane odchylania od wartości średniej, korelacja w różnych momentach czasu, charakterystyki spektralne ważne z eksperymentalnego punktu. Opis procesów stochastycznych jest do pewnego stopnia podobny do przedstawionego wcześniej opisu: bazuje on też na równaniach różniczkowych w których pojawiają się wyrażenia mogące przyjmować w sposób losowy różne wartości. Aby to wyjaśnić, posłużmy się przykładem z klasycznej mechaniki Newtona. Ba, możemy przywołać tu równanie Newtona dla cząstki o jednym stopniu swobody w potencjale :math:`V(x)`. Jest ono postaci: 

.. MATH::
 :label: eqn1

 m \ddot x + \gamma \dot x = -V'(x)


W równaniu tym pojawia się wyraz :math:`\gamma \dot x`, który uwzględnia tarcie, tłumienie. Skąd pojawia się tarcie (tłumienie) w układzie? Wywodzi się ono z oddziaływania układu z otoczeniem. Rzeczywiste układy zawsze są w jakimś ośrodku: w powietrzu, wodzie, krysztale, komórce biologicznej. Owo oddziaływanie z otoczeniem jest źródłem tarcia, ale też jest jednym z czynników powodujących losowość. Wpływ otoczenia nie da się przewidzieć ponieważ rzeczywiste otoczenie składa się w bardzo dużej ilości cząstek. Przypomnijmy że w szkance wypełnionej wodą mamy około :math:`10^{23}` cząstek. Nie znamy ani położeń tych cząstek, ani prędkości tych cząstek. Ale gdybyśmy nawet znali te wielkości, to co nam z takiej wiedzy. Gdybyśmy chcieli modelować oddziaływanie układu z otoczeniem jako oddziaływanie opisane przez równania Newtona, to liczba równań Newtona rzędu :math:`10^{23}` jest przerażająco wielka. Nie bylibyśmy w stanie je zapisać, nie mówiąc o ich rozwiązywaniu. W tej beznadziejnej sytuacji powstaje fizyka statystyczna i teoria procesów stochastycznech. W tych teoriach nie ma determinizmu. Musi nam wystarczyć tylko prawdopodobieństwo tego, że cząstka w chwili :math:`t=17` znajduje się w jakimś obszarze :math:`A`, że średnia wartość prędkośći w chwili :math:`t=32 s` wynosi :math:`36 m/s` oraz że cząstka średnio oddaliła się o :math:`x=2 m` od położenia początkowego. 

W powyższym równaniu Newtona uwzględniliśmy wyraz opisujący tarcie (czyli oddziaływanie z otoczeniem), ale nie uwzględniliśmy jeszcze jednej siły, siły jaką cząstki otoczenia wywierają na układ. Poprawniejsze równanie miałoby postać:

.. MATH::
 :label: eqn2

 m \ddot x + \gamma \dot x = -V'(x) + \Gamma (t) \qquad 


Siła :math:`\Gamma(t)` opisuje proces oddziaływania (zderzeń) cząsteczek otoczenia z układem. Dla przykładu, możemy rozpatrywać kulkę polimerową o promieniu mikronów (:math:`10^{-6}` metra) zanurzoną w wodzie. Taka kulka bez przerwy zderza się z cząsteczkami wody i porusza się w nieprzewidywalny sposób. Co możemy powiedzieć o sile :math:`\Gamma(t)`, która z pewnością jest losowa.

A. Po pierwsze, żaden kierunek nie jest uprzywilejowany: kulka jest atakowana ze wszystkich stron i średnia siła jest zerowa:

  .. MATH::
   :label: eqn3

    \langle \Gamma(t) \rangle = 0 \qquad 


B. Po drugie, siła w chwili :math:`t_1` nie zależy od siły w chwili :math:`t_2`, czyli nie jest ona skorelowana w różnych momentach czasu: 

  .. MATH::
   :label: eqn4

    \langle \Gamma(t_1) \Gamma(t_2)\rangle = \langle\Gamma(t_1)\rangle \langle\Gamma(t_2)\rangle = 0 \qquad 

C. Po trzecie, :math:`\Gamma(t)` powinna być wielkością losową o rozkładzie normalnym, co wynika z centralnego twierdzenia granicznego. Mówiąc prosto, jeżeli jakaś wielkość jest wynikiem bardzo wielu drobnych losowych czynników, to niezależnie od rozkładu każdego z tych czynników, jej rozkład będzie zbliżony do normalnego. W rzeczywistości taki rozkład nie jest ściśle realizowany, ale jest to przybliżenie dobrze oddające charakter oddziaływania otoczenia na układ. Pamiętajmy, że centralne twierdzenie graniczne jest jednym z najważniejszych twierdzeń rachunku prawdopodobieństwa, które uzasadnia powszechne występowanie w przyrodzie rozkładów zbliżonych do rozkładu normalnego.


Modelem siły losowej może być tzw. biały szum gaussowski. Jest to losowy proces, zupełnie taki jak ten opisany powyżej, różni się tylko tym, że funkcja korelacyjna ma postać:

.. MATH::
 :label: eqn5

  \langle \Gamma(t_1) \Gamma(t_2)\rangle = 2D \delta(t_1 - t_2) \qquad 


gdzie :math:`D` jest natężeniem szumu, które zależy od temperatury :math:`T`: :math:`D = D(T)`. W wyższej temperaturze energia kinetyczna cząstek wody jest większa i z większą siłą cząsteczki wody uderzają w kulkę. Z własności dystrybucji delta Diraca wynika własność :eq:`eqn4`. Jedna własność może wydawać się nieuzasadniona, a mianowicie dla tych samych chwil czasu :math:`t_1 = t_2` delta Diraca jest nieskończona, co oznacza że drugi moment statystyczny nie istnieje (jak mówią fizycy, jest nieskończony). Ale to nie jest aż takie kłopotliwe. Okazuje się bowiem że równanie Newtona z taką siłą losową, która jest białym szumem gaussowkim, jest w zgodzie z fizyką statystyczną, w szczególności stan stacjonarny :math:`p(x, \dot x)` opisany równaniem :eq:`eqn2` jest stanem równowagi termodynamicznej określonym przez rozkład kanoniczny Gibbsa:

.. MATH::
 :label: eqn6

  p(x, \dot x) = N_0 \exp\left[ - \frac{1}{k_B T}\left(\frac{m\dot x^2}{2} + V(x)\right)\right] \qquad 


gdzie :math:`N_0` jest stałą normalizacyjną. Otrzymanie powyższej gęstości prawdopodobieństwa z równania :eq:`eqn2` nie jest zadaniem łatwym. W dalszych częściach postaramy się pokazać, dlaczego rów. :eq:`eqn6` wynika z rów. :eq:`eqn2`.

Rozpatrzmy teraz tzw. reżim przetłumiony, czyli przypadek silnego tłumienia. Jeżeli tarcie jest duże, to trudno jest (prawie niemożliwe) doświadczalnie wyznaczyć przyśpieszenie cząstki. Innymi słowy wyraz :math:`m \ddot x` można w równaniu :eq:`eqn2` zaniedbać. W takim reżimie równanie :eq:`eqn2` redukuje się do postaci:

.. MATH::
 :label: eqn7

  \gamma \dot x = -V'(x) + \Gamma (t) \qquad 


lub

.. MATH::
 :label: eqn8

  \dot x = -\tilde V'(x) + \tilde \Gamma (t) \qquad 


gdzie przeskalowaliśmy potencjał i siłę losową: podzieliliśmy obustronnie prze stałą :math:`\gamma` i zdefiniowaliśmy nowe funkcje

.. MATH::
 :label: eqn9

 \tilde V(x) = \frac{1}{\gamma} V(x), \qquad \tilde\Gamma (t) = \frac{1}{\gamma} \Gamma(t) \qquad 


Równanie :eq:`eqn8` jest wyjściowym równaniem do dalszych rozważań i uogólnień. Będziemy badali nieco ugólniejszą postać tego równania, a mianowicie

.. MATH::
 :label: eqn10

  \frac{dX}{dt} = F(X) + G(X) \Gamma (t) \qquad 


gdzie :math:`X=X(t)` jest procesem zależnym od czasu, funkcje :math:`F(X)` i :math:`G(X)` są (raczej) dowolnymi funkcjami oraz :math:`\Gamma(t)` jest białym szumem gaussowskim określonym przez związki :eq:`eqn3` i :eq:`eqn5`. Fizycy nazywają rów. :eq:`eqn10` równaniem Langevina. Matematycy preferują inny zapis tego równania, a mianowicie 

.. MATH::
 :label: eqn11

  dX = F(X) dt + G(X) dW(t), \qquad dW(t) = \Gamma(t) dt \qquad 


gdzie proces losowy :math:`W(t)` nazywa się procesem Wienera. Można by zapisać relację

.. MATH::
 :label: eqn12

 \Gamma(t) = \frac{dW(t)}{dt}


choć matematycy dowodzą, że pochodna nie istnieje w żadnym rozsądnym sensie, co nie przeszkadza fizykom wykorzystywanie tej relacji, głównie w celach rachunkowych. Po raz kolejny uogólnimy równanie :eq:`eqn11` do postaci

.. MATH::
 :label: eqn13

  dX = F(X) dt + G(X) d\xi(t) \qquad 


gdzie :math:`\xi(t)` jest jakimś dopuszczalnym procesem losowym nazywanym szumem, losowymi fluktuacjami, zaburzeniem przypadkowym lub procesem stochastycznym. Wszystkie te nazwy będziemy używali zamiennie. Równanie :eq:`eqn11` nazywa się równaniem Ito. Równanie :eq:`eqn13` też będziemy nazywali równaniem Ito, a równanie

.. MATH::
 :label: eqn14

  \frac{dX}{dt} = F(X) + G(X) \eta(t) \qquad 


nazywać będziemy równaniem Langevina. W równaniu tym :math:`\eta(t)` jest jakimś możliwym procesem losowym. Okazuje się, że równanie :eq:`eqn13` lub :eq:`eqn14` nie jest jednoznacznie zdefiniowane jeżeli funkcja :math:`G(X)` zależy od :math:`X`. Gdy :math:`G(X)` jest funkcją stałą, równanie jest dobrze określone.

Dlaczego pojawia sie niejednoznaczność w interpretacji tych równań? Przyczyną tego jest proces losowy występujący w ostatnim wyrazie. Niewinnie wyglądająca różniczka :math:`dW(t)` lub :math:`d\xi(t)` to przyrost procesu losowego:

.. MATH::
 :label: eqn15

 dW(t) = W(t+dt) - W(t), \qquad d\xi(t) = \xi(t+dt) - \xi(t)


co oznacza, że powinniśmy znać własności procesu :math:`W` oraz :math:`\xi` w różnych chwilach czasu. Ponadto z punktu widzenia matematyki, powyższe równania rózniczkowe są umownym zapisem całkowej wersji tych równań:

.. MATH::
 :label: eqn16

 X(t) - X(t_0) = \int_{t_0}^{\; t} F(X(s), s) ds + \int_{t_0}^{\;t} G(X(s), s) d\xi(s)


które powstaje przez obustronne całkowanie w przedziale czasu :math:`[t_0, t]`. Otrzymujemy równanie całkowe dla procesu :math:`X(t)`. W równaniu tym pojawiają się dwa typy całek: "tradycyjna" całka Riemanna-Stieltjesa

.. MATH::
 :label: eqn17

 I_1= \int_{t_0}^{\;t} F(X(s), s) ds


oraz całka, w której występuje proces :math:`\xi(t)`: 

.. MATH::
 :label: eqn18

 I_2= \int_{t_0}^{\;t} G(X(s), s) d\xi(s)


Powinniśmy zawsze pamiętać o tym, że całka jest graniczną wartością odpowiedniej sumy. I tak pierwsza całka 

.. MATH::
 :label: eqn19

 I_1= \int_{t_0}^{\;t} F(X(s), s) ds = \lim_{n \to \infty} \sum_{i=0}^{n-1} F(X({\tilde s}_i), {\tilde s}_i) [s_{i+1} -s_i]


gdzie granicę należy rozumieć w sensie średniokwadratowym oraz :math:`{\tilde s}_i \in [s_i, s_{i+1}]` jest dowolną liczbą z danego przedziału :math:`[s_i, s_{i+1}]`. W kursie analizy matematycznej wykazuje się, że graniczna wartość sumy (czyli wartość całki) nie zależy od tego gdzie wybieramy wartość :math:`X({\tilde s}_i)` dla :math:`{\tilde s}_i` w przedziale :math:`[s_i, s_{i+1}]`. Może ona leżeć w lewym końcu przedziału, w prawym końcu przedziału, w środku lub każdym innym punkcie tego przedziału. Okazuje się, że w ogólności tej własności nie ma drugi typ całki!! W takim razie w jakim punkcie przedziału należy wybrać wartość :math:`\xi({\tilde s}_i)` w całce, w której pojawia sie proces :math:`\xi(t)`? Ogólnej recepty na to nie ma. W literaturze istnieją 2 przepisy, gdzie ma leżeć :math:`\xi({\tilde s}_i)`.

Całka Ito
---------

W tej definicji (preferowanej przez matematyków) wybiera się wartość :math:`W(s_i)` z lewej strony przedziału z czysto praktycznej przyczyny (ułatwia to rachunki). Aby wyjaśnic dlaczego tak sie postępuje, rozpatrzmy nieco inną całkę z procesem Wienera, a mianowicie 

.. MATH::
 :label: eqn20

 I_3= \int_{t_0}^{\;t} H(W(s), s) dW(s) = \lim_{n \to \infty} \sum_{i=0}^{n-1} H(W(s_i), {\tilde s}_i) [W(s_{i+1}) -W(s_i)] \qquad $


Tak określona całka nazywa się całką Ito i ma "przyjazne" własności z tego powodu, że wartości średnie typu 

.. MATH::
 :label: eqn21

  \langle H(W(s_i), {\tilde s}_i) [W(s_{i+1}) -W(s_i)]^k\rangle = \langle H(W(s_i), {\tilde s}_i)\rangle \cdot \langle [W(s_{i+1}) -W(s_i)]^k\rangle \qquad $


rozbijają się na iloczyny wartości średnich ponieważ proces Wienera jest procesem o niezależnych przyrostach na nieprzekrywających się przedziałach, a wartość średnia iloczynu niezależnych zmiennych losowych jest równa iloczynowi wartości średnich tych zmiennych. Jest to główna przyczyna takiej definicji całek Ito. Należy podkreślić, że dla rzeczywistych procesów losowych taki wybór nie zawsze jest poprawny.

Teraz możemy zdefiniować całkę 

.. MATH::
 :label: eqn22

 I_2=\int_{t_0}^{\;t} G(X(s), s) \xi(s) = \lim_{n \to \infty} \sum_{i=0}^{n-1} G(X(s_i), {\tilde s}_i) [\xi(s_{i+1}) -\xi(s_i)] \qquad $


Całki, w definicji których wartości procesu :math:`X(t)` lub :math:`\xi(t)` należy brać z lewej strony przedziałów :math:`[s_i, s_{i+1}]`, tzn. dla :math:`G(X(s_i), {\tilde s}_i)`, nazywamy '''całkami Ito''' lub całkami w interpretacji Ito. Ponieważ jak na razie z czysto matematycznego punktu widzenia wybór punktu z lewej strony przedziału jest arbitralny, każdy inny punkt jest równo uprawniony. Ale należy bezwględnie pamiętać, że zmiana położenia punktu :math:`{\tilde s}_i` w przedziale :math:`[s_i, s_{i+1}]` dla :math:`X(\tilde s_i)` czy dla :math:`\xi(\tilde s_i)` oznacza zmianę wartości całki. To odróżnia całki stochastyczne od "tradycyjnych" całek Riemanna. W związku z tym pojawia się poważny problem, gdy chcemy stosować równania stochastyczne do modelowania realnych zjawisk i procesów. Czy istnieją jakieś racjonalne kryteria na wybór punktu pośredniego :math:`\tilde s_i`? Dylemat ten przez pewien okres czasu był przedmiotem dyskusji i polemik w literaturze naukowej. 


Całka Stratonowicza
-------------------

Istnieją także inne definicje całek stochastycznych. Druga, konkurencyjna definicja jest następująca: 

.. MATH::
 :label: eqn23

 I_{\circ}= \int_{t_0}^{\;t} G(X(s), s) \circ \,d\xi(s) = \lim_{n \to \infty} \sum_{i=0}^{n-1} G\left(\frac{X(s_{i+1}) + X(s_i)}{2}, {\tilde s}_i\right) [\xi(s_{i+1}) -\xi(s_i)] \qquad 


gdzie oznaczenie :math:`\circ` w całce ma informować o tym, że wartość funkcji :math:`G(X(t), t)` na przedziale :math:`[s_i, s_{i+1}]` jest brana dla średniej arytmetycznej  :math:`[X(s_{i+1}) + X(s_i)]/2`. Tak określona całka nazywa się '''całką Stratonowicza''' lub całka w sensie Stratonowicza. 

Czytelnik łatwo zauważy, że obie całki są szczególnymi przypadkami takiej oto całki: 

.. MATH::
 :label: eqn24

 I_{\bullet}= \int_{t_0}^{\;t} G(X(s), s) \bullet \,d\xi(s) = \lim_{n \to \infty} \sum_{i=0}^{n-1} G\left(\lambda X(s_{i+1}) + (1-\lambda) X(s_i), {\tilde s}_i\right) [\xi(s_{i+1}) -\xi(s_i)] \qquad 


gdzie :math:`\lambda \in [0, 1]` i może przyjmowac dowolną wartość z tego przedziału. Szczególne przypadki to: :math:`\lambda =0` (definicja Ito); :math:`\lambda =1/2` (definicja Stratonowicza).



.. note::

   1. Istnieją twierdzenia mówiące o tym, że jeżeli proces :math:`xi(t)` jest skorelowany, to obie definicje są równoważne. Problem pojawia sie tylko wówczas gdy :math:`\xi(t)` jest procesem stochatycznym o niezależnych przyrostach. Takimi procesami są podstawowe modelowe procesy stochastyczne: proces Wienera, proces Poissona i proces Levy'ego. 

   2. Jeżeli te trzy procesy sa przybliżeniami odpowiednich procesów skorelowanych, to właściwa definicja jest definicją Stratonowicza. Innymi słowy, wyjściowe całki ze skorelowanymi procesami nie zależą od definicji, ale w granicy gdy czas korelacji dąży do zera, wartości całek są takie jak w definicji Stratonowicza.

   3. Istnieje związek między całkami Ito i Stratonowicza: z całki Ito można otrzymać całkę Stratonowicza i odwrotnie: z całki Stratonowicza można otrzymać całkę Ito. Więc generalnie nie należy się przejmować interpretacją tak długo jak prowadzimy formalne obliczenia, ale w opdowiednim momencie trzeba wybrać odpowiednią interpretację całki, ponieważ końcowe wyniki zależą od tej interpretacji. 



Przypadek wielowymiarowy
------------------------

W przypadku układu :math:`n`-równań różniczkowych rozpatrujemy uogólnienie równania :eq:`eqn13` w postaci

.. MATH::
 :label: eqn25

  dX_i = F_i(X_1, X_2, X_3,..., X_n) dt + \sum_{j=1}^{n} G_{ij}(X_1, X_2, X_3,..., X_n) d\xi_j(t), \quad i, j = 1, 2, 3,..., n \qquad 


lub odpowiednik równania :eq:`eqn14` ma postać 

.. MATH::
 :label: eqn26

  \frac{dX_i}{dt} = F_i(X_1, X_2, X_3,..., X_n) + \sum_{j=1}^{n} G_{ij}(X_1, X_2, X_3,..., X_n) \eta_{j} (t), \quad i, j = 1, 2, 3,..., n \qquad 


gdzie wielkości losowe :math:`\xi_i(t)` oraz :math:`\eta_i(t)` są niezależnymi między sobą procesami stochastycznymi.

Mogą być takie przypadki, gdy wielkości losowe pojawiają sie w nieliniowy sposób, np. w postaci 

.. MATH::
 :label: eqn27

  \frac{dX}{dt} = F(X, \eta(t)) \qquad 


Czytelnik sam może napisać odpowiednik wielowymiarowy równania :eq:`eqn27`. Z punktu widzenia zastosowań ważne jest jakie istnieją modele matematyczne zaburzeń losowych :math:`\{\eta_i(t)\}` czy :math:`\{\xi_i(t)\}`. Mogą to być procesy stacjonarne, procesy Markowa (markowowskie) lub też procesy niemarkowowskie. Mogą to byc procesy skorelowane lub nieskorelowane. W następnej części podamy przykłady najczęściej stosowanych modeli szumu. 





