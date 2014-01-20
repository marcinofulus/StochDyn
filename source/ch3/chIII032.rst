Równania ewolucji dla rozkładów prawdopodobieństwa
==================================================

Z fizycznego punktu widzenia szumy możemy podzielić na dwie klasy:

* szumy równowagowe (szumy termiczne, fluktuacje termiczne)

* szumy nierównowagowe (fluktuacje nierównowagowe)


Stany stacjonarne układów na które działają szumy termiczne powinny być stanami równowagi termodynamicznej. Jak rozpoznać, czy szum w równaniu Ito lub Langevina ma charakter fluktuacji równowagowych czy fluktuacji nierównowagowych? Odpowiedź jest następująca: dla układów dążących do stanu równowagi termodynamicznej powinno być spełnione twierdzenie fluktuacyjno-dysypacyjne. Na przykład równanie Langevina

.. MATH::
 :label: eqn1

 m\ddot X(t) + \gamma \dot X(t) + U'(X(t))= \sqrt{2\gamma k_BT}\;\Gamma(t)


lub wersja dla dynamiki przetłumionej 

.. MATH::
 :label: eqn2

 \gamma \dot X(t)= - U'(X(t)) + \sqrt{2\gamma k_BT}\;\Gamma(t),


zawiera szum równowagowy ponieważ istnieje silny związek pomiędzy parametrami występującymi z lewej i prawej strony tych równań. Parametr :math:`\gamma` pojawia się z lewej i prawej strony. Oznacza to, że wyraz opisujący tłumienie (dyssypację) występuje jednocześnie z wyrazem opisującym siłę losową :math:`\Gamma(t)`. Jeżeli :math:`\gamma = 0` to znikają oba wyrazy: nie ma fluktuacji bez dyssypacji i nie ma dyssypacji bez fluktuacji. To jest treścią twierdzenia fluktuacyjno-dyssypacyjnego.

Jeżeli w równaniu pojawia się wyraz losowy i nie ma on związku z wyrazami opisującymi dyssypację, to jest to szum nierównowagowy. Przy modelowaniu innych zjawisk niż procesy fizyczne nie musimy się martwić takimi subtelnościami. Przy analizie zmian cen akcji na giełdzie byłoby trudno wyodrębnić losowe czynniki które odpowiadałyby fluktuacjom równowagowym. Na rynkach finansowych fluktuacje zawsze mają charakter fluktuacji nierównowagowych. Na rynkach finansowych trudno oczekiwać stanów stacjonarnych które byłyby w stanie równowagi z otoczeniem. Procesy modelujące rynki finansowe są zawsze procesami niestacjonarnymi i nierównowagowymi. Na przykład równanie Langevina w postaci

.. MATH::
 :label: eqn3

 \dot X(t)= F(X(t)) + \xi(t) 


gdzie :math:`\xi(t)` jest skorelowanym szumem, opisuje proces którego stan stacjonarny (jeżeli taki w ogóle istnieje) nie jest stanem równowagi termodynamicznej (nie ma postaci rozkładu Boltzmanna). Równanie stochastyczne typu

.. MATH::
 :label: eqn4

 \dot X= F(X) + G(X) \xi(t),


(dalej nie będziemy zaznaczali zależności procesu :math:`X` od czasu bo to jest oczywiste) nazywa się równaniem z multiplikatywnym szumem i z pewnością nie opisuje stanów równowagi termodynamicznej. Wszelkie multiplikatywne szumy opisują nierównowagowe procesy. 

W modelowaniu opartym na równaniach stochastycznych typu jak powyżej pojawia się następujący problem: Jaki jest rozkład prawdopodobieństwa :math:`P(x, t)` procesu stochastycznego :math:`X=X(t)`? Można też zapytać: jakie równanie ewolucji spełnia rozkład :math:`P(x, t)`? Wszystko zależy od postaci szumu :math:`\xi(t)`. W wielu przypadkach nawet nie znamy takiego równania ewolucji. Poniżej prezentujemy przypadki dla których równanie ewolucji dla :math:`P(x, t)` są znane. Mimo że często nie potrafimy analitycznie rozwiązać tych równań stanowią one ważny punkt wyjścia to analizy numerycznej.



Biały szum gaussowski i równania Fokkera-Plancka
------------------------------------------------

Jeżeli szum :math:`\Gamma(t)` w równaniu Langevina

.. MATH::
 :label: eqn5

 \dot X= F(X) + G(X) \Gamma(t), \quad \langle \Gamma(t)\rangle= 0, \qquad \langle \Gamma(t) \Gamma(s)\rangle= 2D \delta(t-s)


jest białym szumem gaussowskim, to z poprzednich rozdziałów wiemy, że przy interpretacji Ito równanie ewolucji dla rozkładu prawdopodobieństwa :math:`P(x, t)` jest równaniem Fokkera-Plancka

.. MATH::
 :label: eqn6

 \frac{\partial}{\partial t} P(x,t)= -\frac{\partial}{\partial x} F(x) P(x,t) + D \frac{\partial^2}{\partial x^2}G^2(x)P(x,t) = L P(x, t)


gdzie przez :math:`L` oznaczyliśmy operator różniczkowania

.. MATH::
 :label: eqn7

 LP(x, t) = \left[ -\frac{\partial}{\partial x} F(x) + D \frac{\partial^2}{\partial x^2}G^2(x)\right] P(x,t)


który nazywa się operatorem infinitezymalnym lub generatorem danego procesu. Generator ten składa się z 2 części. Pierwsza część

.. MATH::
 :label: eqn8

 L_1 P(x, t) = -\frac{\partial}{\partial x} F(x) P(x, t)


zawiera funkcję :math:`F(x)` i opisuje część deterministyczną w równaniu Langevina. Jest to operator różniczkowanie pierwszego rzędu. Należy to zapamiętać! Druga część

.. MATH::
 :label: eqn9

 L_2 P(x, t) = D \frac{\partial^2}{\partial x^2}G^2(x) P(x,t)


zawiera funkcję :math:`G(x)` i opisuje część losową równania Langevina (lub Ito). Ta część opisuje proces dyfuzji. Tak więc dyfuzja jest opisywana operatorem różniczkowania drugiego rzędu.

Jeżeli powyższe równanie Langevina jest w interpretacji Stratonowicza to równanie ewolucji dla rozkład prawdopodobieństwa :math:`P(x, t)` ma postać nieco inną postać, a mianowicie

.. MATH::
 :label: eqn10

 \frac{\partial}{\partial t} P(x,t)= -\frac{\partial}{\partial x} F(x) P(x,t) + D \frac{\partial}{\partial x}G(x)\frac{\partial}{\partial x}G(x) P(x,t)


Równania tego typu można analizować zarówno analitycznie jak i numerycznie.



Szumy skorelowane i równania typu równań Fokkera-Plancka
--------------------------------------------------------

Niech teraz

.. MATH::
 :label: eqn11

 \dot X= F(X) + G(X) \xi(t)


gdzie :math:`\xi(t)` jest gaussowskim szumem skorelowanym. W ogólnym przypadku nie znamy równania dla :math:`P(x, t)`. Ale jeżeli szum :math:`\xi(t)` jest zdefiniowany przez równanie typu równania Ito (Langevina) z pomocniczym białym szumem gaussowskim to można otrzymać równanie ewolucji w rozszerzonej przestrzeni fazowej. Co to znaczy? Podamy przykład. Niech szum :math:`\xi(t)` będzie eksponencjalnie skorelowanym szumem gaussowskim. Oznacza to, że :math:`\xi(t)` jest procesem Ornsteina-Uhlenbecka i generowany jest przez równanie

.. MATH::
 :label: eqn12

 \dot \xi = -\frac{1}{\tau_c} \xi + \frac{1}{\tau_c} \Gamma(t)


gdzie :math:`\Gamma` jest białym szumem gaussowskim jak powyżej. Równanie Fokkera-Plancka dla tego procesu ma postać:

.. MATH::
 :label: eqn13

 \frac{\partial}{\partial t} f(\xi, t) = \left[\frac{1}{\tau_c} \frac{\partial}{\partial \xi} + \frac{D}{\tau_c^2} \frac{\partial^2}{\partial \xi^2}\right] f(\xi, t) = L_{\xi} f(\xi, t)


gdzie wyrażenie w nawiasie oznaczyliśmy jako :math:`L_{\xi}` i nazywa się generatorem procesu Ornsteina-Uhlenbecka.

Teraz możemy połączyć te 2 równania i rozważyć układ 2 równań stochastycznych:

.. MATH::
 :label: eqn14

 \dot X= F(X) + G(X) \xi(t)


.. MATH::
 :label: eqn15

 \dot \xi = -\frac{1}{\tau_c} \xi + \frac{1}{\tau_c} \Gamma(t)


Zgodnie z poprzednimi rozdziałami, ten układ 2 równań opisuje 2-wymiarowy proces Markowa. Łączny (2-wymiarowy) rozkład prawdopodobieństwa :math:`P(x, \xi, t)` spełnia równanie Fokkera-Plancka w postaci: 

.. MATH::
 :label: eqn16

  \frac{\partial}{\partial t} P(x, \xi, t)= -\frac{\partial}{\partial x} \left[ F(x)+G(x)\xi\right] P(x, \xi,t) + \left[\frac{1}{\tau_c} \frac{\partial}{\partial \xi} + \frac{D}{\tau_c^2} \frac{\partial^2}{\partial \xi^2}\right] P(x, \xi, t) \qquad(*)


Gęstość prawdopodobieństwa :math:`P(x, \xi, t)` opisuje zarówno proces :math:`X(t)` jak i szum :math:`\xi(t)`. Ale nas interesuje tylko proces :math:`X(t)` i jego rozkład :math:`P(x, t)`. Jak go otrzymać? Oto recepta:

.. MATH::
 :label: eqn17

 P(x, t) = \int_{-\infty}^{\; \infty} P(x, \xi, t) d\xi


czyli należy scałkować po zmiennej szumu :math:`\xi`. Niestety nie można otrzymać równania ewolucji tylko dla rozkładu :math:`P(x, t)`. To jest poważny problem, do dziś nie rozwiązany. Czy równanie ewolucji :math:`(*)` jest pomocne w wyznaczeniu rozkładu :math:`P(x, t)`? I tak nie potrafimy go rozwiązać i znaleźć postać funkcji :math:`P(x, \xi, t)`. W praktyce zwykle numerycznie symulujemy układ 2 równań Langevina i z symulacji otrzymujemy charakterystyki probabilistyczne procesu :math:`X(t)`.

Z powyższego przykładu można wysnuć następujące uogólnienie: 

Niech szum :math:`\xi(t)` (z matematycznego punktu widzenia) będzie zdefiniowany przez układ :math:`n` równań stochastycznych Ito dla zmiennych :math:`\vec \xi =\{\xi, \xi_1, \xi_2,..., \xi_{n-1}\}` z pomocniczymi zmiennymi :math:`\{\xi_i, i=1,2,\cdots n-1\}`. Wówczas proces wektorowy :math:`\vec \xi(t)` jest procesem Markowa i znane jest równanie Fokkera-Plancka z generatorem :math:`L_{\vec \xi}`. Proces stochastyczny w rozszerzonej przestrzeni fazowej :math:`\{x, {\vec \xi}\}` jest procesem Markowa i podobnie jak powyżej równanie ewolucji dla łącznego rozkładu prawdopodobieństwa ma postać 

.. MATH::
 :label: eqn18

  \frac{\partial}{\partial t} P(x,{\vec \xi}, t)= -\frac{\partial}{\partial x} \left[ F(x)+G(x)\xi\right] P(x,{\vec \xi},t) + L_{\vec \xi} P(x, {\vec \xi}, t)


Podobne reguły stosuje się do równań z niegaussowskimi szumami dla których znane są generatory :math:`L_{\xi}`.





Układy z białym szumem Poissona
-------------------------------

Niech układ będzie modelowany równaniem

.. MATH::
 :label: eqn19

 \dot X = F(X) + Y_0(t) 


gdzie :math:`Y_0(t)` jest białym szumem Poissona (patrz rozdział o modelach szumów)

.. MATH::
 :label: eqn20

 Y_0(t) = \sum\limits_{i} z_i \delta (t-t_i) -\mu <z_i> 


gdzie amplitudy impulsów :math:`z_i` mają rozkład określony przez zadaną gęstość prawdopodobieństwa :math:`\rho(z)`. Wartość średnia oraz funkcja korelacyjna tego szumu to:

.. MATH::
 :label: eqn21

 \langle Y_0(t) \rangle = 0, \quad \langle Y_0(t) Y_0(u) \rangle = 2D_S \delta (t-u)


gdzie :math:`D_S=(1/2)\mu <z_i^2>` nazywa się intensywnością szumu. 

Przepiszemy równanie Langevina w postaci

.. MATH::
 :label: eqn22

 \dot X = F(X) -\mu <z_i> + \sum\limits_{i} z_i \delta (t-t_i) 


Równanie ewolucji dla rozkładu prawdopodobieństwa :math:`P(x, t)` procesu :math:`X=X(t)` ma postać

.. MATH::
 :label: eqn23

 {\partial P(x, t) \over \partial t} =-{\partial\over \partial x} [F(x)-\mu <z_i> ]P(x, t)+\mu \int\limits_{- \infty}^{\; \infty} \rho(z)[P(x-z, t)-P(x, t) ]\; dz 


Jest to równanie różniczkowo-całkowe. Pierwsza część prawej strony tego równania opisuje deterministyczną część równania Langevina. Druga część (całkowa) opisuje część losową indukowaną szumem Poissona.

Gdyby równanie Langevina zawierało dodatkowo wyraz z białym szumem gaussowskim :math:`\Gamma(t)`: 

.. MATH::
 :label: eqn24

 \dot X = F(X) + Y_0(t) + \Gamma(t)


wówczas równanie ewolucji ma postać

.. MATH::
 :label: eqn25

 {\partial P(x, t) \over \partial t} =-{\partial\over \partial x} [F(x)-\mu <z_i> ]P(x, t)+\mu \int\limits_{- \infty}^{\; \infty} \rho(z)[P(x-z, t)-P(x, t) ]\; dz + D \frac{\partial^2}{\partial x^2} P(x, t)


czyli dodajemy dodatkowy generator związany z gaussowską dyfuzją, podobnie jak w równaniu Fokkera-Plancka.





Układy z szumem dychotomicznym
------------------------------

Rozważamy równanie stochastyczne Langevina z białym szumem gaussowskim :math:`\Gamma(t)` i szumem dychotomicznym :math:`\xi(t)` w postaci

.. MATH::
 :label: eqn26

 \dot X = F(X) + \Gamma (t) + \xi(t)


Szum dychotomiczny ma 2 stany: 

.. MATH::
 :label: eqn27

 \xi(t) = \{-a, b\}, \quad a, b > 0


Przeskoki pomiędzy tymi dwoma stanami są dane przez prawdopodobieństwa przejścia w jednostce czasu

.. MATH::
 :label: eqn28

 Pr(-a\rightarrow b)=\mu_a = 1/\tau_a, \qquad Pr(b\rightarrow -a)=\mu_b = 1/\tau_b, \qquad 


gdzie :math:`\tau _a` and :math:`\tau _b` są średnimi czasami przebywania w stanach :math:`-a` oraz :math:`b`. Jeżeli założymy że

.. MATH::
 :label: eqn29

 b \mu_a= a \mu_b \qquad 


to proces jest stacjonarny o zerowej wartości średniej. Funkcja korelacyjna ma postać funkcji eksponencjalnej (podobnie jak dla szumu Ornsteina-Uhlenbecka) 

.. MATH::
 :label: eqn30

 C(t) = a b \:\mbox{exp}\left(-\frac{|t|}{\tau_c} \right), \qquad 


gdzie czas korelacji szumu :math:`\tau_c` dany jest prze formułę 

.. MATH::
 :label: eqn31

 1/\tau_c = \mu_a + \mu_b


Proces :math:`X(t)` jest niemarkowowski ale 2-wymiarowy proces :math:`\{X(t), \xi(t)\}` jest procesem Markowa. Rozkłady prawdopodobieństwa

.. MATH::
 :label: eqn32

 P_{+}(x,t)\equiv p(x,b,t),\quad P_{-}(x,t)\equiv p(x,-a,t) \qquad 


spełniają układ równań

.. MATH::
 :label: eqn33

 {\frac{\partial P_{+}(x,t)}{\partial t}}=-{\frac \partial {\partial x}} \left[F(x)+b\right]P_{+}(x,t)+D{\frac{\partial ^2}{\partial x^2}} P_{+}(x,t) -\mu_b P_{+}(x,t)+\mu_a P_{-}(x,t) 


.. MATH::
 :label: eqn34

 {\frac{\partial P_{-}(x,t)}{\partial t}}=-{\frac \partial {\partial x}} \left[F(x)-a\right]P_{-}(x,t)+D{\frac{\partial ^2}{\partial x^2}}P_{-}(x,t) +\mu_b P_{+}(x,t)-\mu_a P_{-}(x,t)


Pierwszy wyraz po prawej stronie to dryf (część deterministyczna procesu), drugi wyraz z :math:`D` to dyfuzja, ostatnie wyrazy opisują szum dychotomiczny (generator szumu dychotomicznego to macierz).

Jeżeli jesteśmy w stanie rozwiązać te równania, wówczas rozkład prawdopodobieństwa tylko procesu :math:`X(t)` można otrzymać z relacji

.. MATH::
 :label: eqn35

 P(x,t) = p(x,b,t)+p(x,-a,t)


Sumowanie dla dyskretnego szumu jest analogiem całkowania dla ciągłego szumu jak to było w przypadku szumu Ornsteina-Uhlenbecka. Można otrzymać równoważną postać równań ewolucji dodając do siebie powyższe równania lub odejmując je po wymnożeniu pierwszego przez :math:`b` i drugiego - przez :math:`a`:

.. MATH::
 :label: eqn36

 {\frac{\partial P(x,t)}{\partial t}}=-\frac{\partial} {\partial x} F(x)P(x, t) + D \frac{\partial^2 }{\partial x^2} P(x,t) -\frac{\partial} {\partial x} W(x, t) 


.. MATH::
 :label: eqn37

 {\frac{\partial W(x, t) }{\partial t}} = - {\frac{\partial }{\partial x}} \left\{\left[F(x) + \theta\right] W(x, t) -D {\frac{\partial}{\partial x}} W(x, t) \right\} - {\frac{1}{\tau_c}} W(x, t) - ab {\frac{\partial }{\partial x}}P(x, t)


gdzie :math:`W(x,t)\equiv bp(x,b,t)-ap(x,-a,t)`. Parametr :math:`\theta=b-a` jest miarą asymetrii szumu dychotomicznego :math:`\xi(t)`: Jeżeli :math:`a=b` to :math:`\xi(t)` jest szumem symetrycznym. W przeciwnym przypadku szum dychotomiczny jest asymetryczny. Funkcje :math:`P(x, t)` oraz :math:`W(x, t)` są unormowane w następujący sposób:

.. MATH::
 :label: eqn38

 \int_{-\infty}^{\infty} P(x, t) \;dx = 1, \qquad \int_{-\infty}^{\infty} W(x, t) \;dx = <\xi(t)> = 0


Powyższe równania ewolucji można analizować zarówno metodami analitycznymi jak i metodami numerycznymi. Ponadto przydatne są symulacje komputerowe równań Langevina. 






Układy z szumem kangura
-----------------------



Rozważamy równanie stochastyczne Langevina z białym szumem gaussowskim :math:`\Gamma(t)` oraz z szumem kangura :math:`\xi(t)` w postaci

.. MATH::
 :label: eqn39

 \dot X = F(X) + \Gamma (t)+ \xi(t) 


Jako :math:`\xi(t)` wybieramy proces kangura Kubo-Andersona, który to szum jest eksponencjalnie skorelowany. I znowu proces :math:`X=X(t)` jest niemarkowowski jako proces z szumem skorelowanym. Jednakże proces 2-wymiarowy :math:`\{x(t), \xi(t)\}` jest już procesem Markowa. Łączny rozkład prawdopodobieństwa spełnia równanie ewolucji w postaci

.. MATH::
 :label: eqn40

 {\frac{\partial P(x, \xi, t)}{\partial t}}= -{\frac \partial {\partial x}} [F(x)+\xi] P(x, \xi, t)+D{\frac{\partial ^2}{\partial x^2}} P(x,\xi, t) -\nu (\xi) P(x, \xi, t) + Q(\xi) \int_{-\infty}^{\infty} \nu (\eta) P(x, \eta, t) d\eta



Równanie to nazywa się równaniem Fellera-Kołmogorowa. Nas nie interesuje łączny rozkład procesu :math:`X(t)` i szumu tylko samego procesu :math:`X(t)` który może być otrzymany z rozkładu :math:`P(x, \xi, t)` przez scałkowanie po zmiennej szumu kangura:

.. MATH::
 :label: eqn42

 {\cal P}(x, t) = \int_{-\infty}^{\infty} P(x, \xi, t) d\xi.


Wówczas otrzymamy równanie ciągłości:

.. MATH::
 :label: eqn43

 {\frac{\partial {\cal P}(x,t)}{\partial t}} = -{\frac{\partial J(x,t)}{\partial x}}


gdzie strumień prawdopodobieństwa :math:`J(x, t)` dla procesu :math:`X(t)` ma postać:

.. MATH::
 :label: eqn44

 J(x, t)= f(x){\cal P}(x, t) - D \frac{\partial {\cal P}(x,t)}{\partial x} +\int_{-\infty}^{\infty} \xi P(x, \xi,t) d\xi


Szum kangura jest rzadko wykorzystywany do modelowania. A szkoda.



Układy z szumem Levy'ego
------------------------


Rozpatrujemy równanie stochastyczne

.. MATH::
 :label: eqn45

 \dot X= F(X) + Z(t)


gdzie :math:`Z(t)` jest białym szumem Levy'ego określonym przez tryplet :math:`(0, b, \nu)` czyli jest procesem o wartości średniej zero. W literaturze trudno znaleźć równanie ewolucji dla rozkładu prawdopodobieństwa :math:`P(x, t)` procesu :math:`X(t)`.

To co wiemy dla ogólnego przypadku :math:`Z(t)`, wynika z twierdzenia Dooba: proces :math:`X(t)` jest procesem Markowa i jego infinitezymalny operator (generator) :math:`L` określony jest przez relację

.. MATH::
 :label: eqn46

 L^\dagger f(x) ={\partial\over \partial x} F(x)f(x) + \frac{b}{2} {\partial^2 \over \partial x^2} f(x) + \int\limits_{- \infty}^{\infty}\nu(dy) \left[f(x+y)-f(x) - y I_{(-1,1)}(y) \frac{\partial}{\partial x} f(x)\right] 


dla dowolnej funkcji dwukrotnie różniczkowalnej :math:`f(x)`. Operator :math:`L^\dagger` jest operatorem sprzężonym do operatora :math:`L` w sensie relacji

.. MATH::
 :label: eqn47

 <L^\dagger f|g> = <f|Lg>


gdzie symbol :math:`<f|g>` oznacza iloczyn skalarny dwóch funkcji :math:`f` oraz :math:`g` zdefiniowany przez całkę: 

.. MATH::
 :label: eqn48

 <f|g> = \int_{-\infty}^{\; \infty} f(x) g(x) dx 


Jeżeli skorzystamy z postaci :math:`L^\dagger` oraz iloczyny skalarnego, potrafimy obliczyć operator :math:`L`, który pozwala wyznaczyć równanie ewolucji dla :math:`P(x, t)` w postaci:

.. MATH::
 :label: eqn49

 {\partial P(x, t) \over \partial t} = L P(x, t) = -{\partial\over \partial x} F(x) P(x, t) + \frac{b}{2} {\partial^2 \over \partial x^2} P(x, t) + \int\limits_{- \infty}^{\infty}\nu(dy) \left[P(x-y, t)-P(x, t) + y I_{(-1,1)}(y) \frac{\partial}{\partial x} P(x,t\right] 


Postać tego równania sugeruje użycie metod numerycznych. Polecamy książkę Rama Cont, Peter Tankov, *Financial Modelling with Jump Processes* opublikowaną w 2004 r. przez wydawnictwo Chapman&Hall/CRC. Zawiera ona bogaty materiał na temat procesów Levy'ego oraz metody numeryczne do badania powyższych zagadnień.


