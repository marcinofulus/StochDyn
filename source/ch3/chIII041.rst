Układy w kontakcie z termostatem: Uogólnione równania Langevina
===============================================================

Motywacja
---------

Dobrze znane równanie oscylatora harmonicznego ma postać:

.. MATH::
 :label: eqn1

 \ddot x + \omega^2 x=0


Rozwiązaniem tego równania jest funkcja opisująca drgania harmoniczne, np.

.. MATH::
 :label: eqn2

 x(t) = A \cos (\omega t + \phi)

gdzie :math:`A` jest amplitudą drgań, :math:`\omega` jest częstością drgań oraz
:math:`\phi` jest fazą.

Równanie to ma wiele realizacji: masa przyczepiona do sprężyny poruszająca się
w jednym wymiarze (wzdłuż osi OX) czy wahadło matematyczne (kulka zawieszona na
nieważkim pręcie w polu ziemskim). Równanie to jest słuszne przy bardzo
idealizujących założeniach typu ruch w próżni. Zwykle tego typu układy nie
drgają permanentnie, nieskończenie długo lecz obserwujemy tłumienie drgań.
Jeżeli uwzględnimy tłumienie (tarcie), to równanie ruchu rozpatrywanego układu
przyjmuje postać

.. MATH::
 :label: eqn3

 \ddot x + \gamma \dot x + \omega^2 x=0


gdzie :math:`\gamma` jest współczynnikiem tłumienia (tarcia). Rozwiązaniem tego
równania jest funkcja typu

.. MATH::
 :label: eqn4

 x(t) = B \mbox{e}^{- \alpha t}\cos (\Omega t + \phi_0)


która opisuje drgania tłumione.

Dlaczego w realnych układach występuje tarcie? Oczywiście jest ono spowodowane oddziaływaniem układu z otoczeniem. Innymi słowy układ oddziaływuje z cząstkami otoczenia. Ale zgodnie z zasadą akcji i reakcji, otoczenie też oddziaływuje z układem. Jeżeli uwględnimy dodatkowo, że cząstki otoczenia zderzają się z układem i działają na układ pewną siła, to równanie ruch przyjmuje postać

.. MATH::
 :label: eqn5

 \ddot x + \gamma \dot x + \omega^2 x= \Gamma(t)


gdzie :math:`\Gamma(t)` jest siłą wywieraną przez cząstki otoczenia na nasz układ. Jest to siła zderzeń cząstek otoczenia na układ. Co możemy powiedzieć o tej sile?

1. Po pierwsze, jest to siła losowa.

2. Po drugie, średnio rzecz biorąc, możliwe są wszystkie kierunki tej siły. Dlatego też wartość średnia tej siły powinna wynosić zero,

  .. MATH::
   :label: eqn6

   \langle \Gamma(t)\rangle = 0

3. Po trzecie, powinna to być wielkość losowa o rozkładzie normalnym, co wynika z centralnego twierdzenia granicznego. Mówiąc prosto, jeżeli jakaś wielkość jest sumą lub średnią bardzo wielu drobnych losowych czynników, to niezależnie od rozkładu każdego z tych czynników, jej rozkład będzie zbliżony do normalnego. W rzeczywistości taki rozkład nie jest ściśle realizowany, ale jest to przybliżenie dobrze oddające charakter oddziaływania otoczenia na układ.


Prezentowane podejście jest fenomenologiczne, oparte na potocznych obserwacjach. Okazuje
się, że równanie :eq:`eqn5` jest zgodne z fizyką statystyczną układów w stanie równowagi
termodynamicznej oraz jest jej uogólnieniem na stany nierównowagowe! Równanie :eq:`eqn5`
wygląda jak równanie Newtona z losową siłą :math:`\Gamma(t)`. Tego typu równanie
nazywane jest w fizyce równaniem Langevina.


Hamiltonowski model mikroskopowy: wyprowadzenie uogólnionych równań Langevina
-----------------------------------------------------------------------------

Z fizyki statystycznej wiemy, że układ oddziałujący z otoczeniem :math:`E` (termostatem, środowiskiem) o temperaturze :math:`T` dąży dla długich czasów do stanu równowagi termodynamicznej z otoczeniem i temperatura układu jest taka sama jak otoczenia. Rozważania przedstawiane na wykładzie z fizyki statystycznej mają charakter fenomenologiczny oparty o argumenty stosowane dla układów makroskopowych. Tutaj chcemy przedstawić teorię mikroskopową opartą o klasyczną mechanikę i klasyczną fizykę statystyczną. W tym celu rozważamy klasyczny układ :math:`S` (od słowa system) jako układ otwarty oddziałujący z klasycznymi cząstkami termostatu :math:`E`. Zakładamy, że termostat :math:`E` jest ogromy, tak że jego energia nie zmienia się wskutek oddziaływania z układem :math:`S` oraz że termostat jest w stanie równowagi termodynamicznej. Oznacza to, że w końcowej fazie powinniśmy wykonać tzw. przejście termodynamiczne: termostat staje się nieskończenie duży. Całkowity układ :math:`S+E` jest układem zamkniętym, izolowanym i jego dynamika jest określona przez prawa mechaniki klasycznej i równania ruch Newtona lub Eulera-Lagrange'a albo Hamiltona. Najwygodniejszym formalizmem jest formalizm Hamiltona. Układ :math:`S+E` jest określony, jeżeli znamy jego całkowitą energię wyrażoną w języku funkcji Hamiltona :math:`H`. Jest to energia :math:`H_S` układu :math:`S`, energia :math:`H_T` termostatu :math:`E` i energia oddziaływania :math:`H_{S-T}` pomiędzy układem i termostatem:

.. MATH::
 :label: eqn7

 H = H_S + H_T + H_{S-T}


Jako standardowy model, rozważa się cząstkę o jednym stopniu swobody w potencjale :math:`U(x)` scharakteryzowany przez położenie :math:`x` i pęd :math:`p`. Jako termostat rozważa się układ oscylatorów o współrzędnych :math:`\{q_k, p_k\}`. Oddziaływanie modeluje się jako oddziaływanie bi-liniowe typu :math:`x q_k`. Funkcja Hamiltona takiego układu ma postać:

.. MATH::
 :label: eqn8

 H=\frac{p^2}{2m} + U(x) + \sum_k \left[\frac{p_k^2}{2m_k}+ \frac{m_k\omega_k^2}{2}\Big(q_k - \frac{\lambda_k}{m_k\omega_k^2} x\Big)^2\right].

Przez :math:`m_k` oznaczamy masy oscylatorów, :math:`\omega_k` to częstości oscylatorów oraz parametry 
:math:`\lambda_k` to stałe oddziaływania układu z otoczeniem. Można spytać, dlaczego taka postać funkcji 
Hamiltona a nie inna. Ta postać jest "przyjazna", tzn. nie jest sprzeczna z prawami fizyki, jest łatwo 
rozwiązywalna i zawiera wszystkie istotne cechy. Jest też w pewnym stopniu modelem minimalnym, nie 
zaciemniającym istoty zagadnienia. Oddziaływanie jest ukryte w wyrazie mieszanym po wykonaniu potęgowania 
pod sumą:

.. MATH::
 :label: eqn9

 H_{S-E} = \lambda_k q_k x


Aby zbadać dynamikę układu, musimy podać równania ruchu Hamiltona:

.. MATH::
 :label: eqn10

 \dot x = \frac{\partial H}{\partial p}, \qquad \dot p = - \frac{\partial H}{\partial x}, \qquad \dot q_k = \frac{\partial H}{\partial p_k}, \qquad \dot p_k = - \frac{\partial H}{\partial q_k}.


Jeżeli wykonamy odpowiednie różniczkowania w funkcji Hamiltona, otrzymamy następujące równania ruchu:

.. MATH::
 :label: eqn12

 \dot x = \frac{p}{m}, \qquad \dot p = -U'(x) + \sum_k \lambda_k (q_k - \frac{\lambda_k}{m_k\omega_k^2} x),

 \dot q_k = \frac{p_k}{m_k}, \qquad \dot p_k = - m_k \omega_k^2 q_k + \lambda_k x,


gdzie :math:`U'(x) = dU(x)/dx`.

Z dwóch ostatnich równań Hamiltona otrzymamy (należy zróżniczkować 3 równanie dla :math:`q_k` i w miejsce :math:`\dot p_k` wstawić 4 równanie) :

.. MATH::
 :label: eqn13

 m_k \ddot q_k + m_k \omega_k^2 q_k= \lambda_k x = \lambda_k x(t).


Jest to równanie ruch dla oscylatora harmonicznego. Prawa strona tego równania to siła
z jaką układ :math:`S` działa na oscylatory termostatu. Jest to równanie liniowe
różniczkowe 2-go rzędu niejednorodne. Można jest rozwiązać dla dowolnej prawej strony.
Metoda rozwiązywania jest podana w paragrafie 7.3 ksiązki F. W. Byrona i R. W.
Fullera "Matematyka w fizyce klasycznej i kwantowej", tom2. Rozwiązanie to ma
postać (patrz tam równanie (7.35b))

.. MATH::
 :label: eqn14

 q_k = q_k(t) = q_k(0) \cos \omega_k t + \frac{p_k(0)}{m_k \omega_k} \sin \omega_k t + \frac{\lambda_k}{m_k \omega_k} \int_0^{\; t} \sin \omega_k (t - s) x(s) ds


Z dwóch pierwszych równań Hamiltona otrzymamy (podobnie jak poprzednio dla oscylatorów) równanie ruchu:

.. MATH::
 :label: eqn15

  m\ddot x(t) = -\frac{dU(x)}{dx} - \sum_k \frac{\lambda_k^2}{m_k \omega_k^2} x +  \sum_k \lambda_k q_k.


W miejsce :math:`q_k = q_k(t)` wstawiamy powyższe rozwiązanie co implikuje:

.. MATH::
 :label: eqn16

  m\ddot x(t) = -U'(x(t)) - \sum_k \frac{\lambda_k^2}{m_k \omega_k^2} x(t) +
  
  + \sum_k \frac{\lambda_k}{m_k \omega_k} \int_0^{\; t} \sin \omega_k (t - s) x(s) ds + 
    
  + \sum_k \lambda_k [q_k(0) \cos \omega_k t + \frac{p_k(0)}{m_k \omega_k} \sin \omega_k t ].

Całkujemy przez części wyrażenie z całką. Pojawi się :math:`x(0)`. Dla ułatwienia założymy, że początkowe położenie cząstki :math:`x(0) =0`. Nie jest to założenie restrykcyjne, ponieważ zawsze można tak wybrać układ współrzędnych, aby to było spełnione. Jeżeli wykonamy to całkowanie, otrzymamy ostatecznie wyrażenie:

.. MATH::
 :label: eqn17

 m\ddot x(t) + \int_0^{\;t} \gamma(t-s) \dot x(s)\;ds + U'(x(t)= \xi(t),


gdzie funkcja podcałkowa

.. MATH::
 :label: eqn18

 \gamma(t)= \int_0^{\;\infty} \frac{J(\omega)}{\omega} \cos(\omega t) \;d\omega,


opisuje efekty dysypacji (tłumienia, tarcia) oraz

.. MATH::
 :label: eqn19

 J(\omega)= \sum_k \frac{\lambda_k^2}{m_k\omega_k} \delta(\omega-\omega_k)


nazywa się funkcją spektralną (lub gęstością spektralną) termostatu. Opisuje ona jednocześnie oddziaływanie i własności termostatu (ponieważ są tam stałe oddziaływanie :math:`\lambda_k` oraz rozkład częstości :math:`\omega_k` (czyli także energii) termostatu w zależności od :math:`k`).

Występująca po prawej stronie siła :math:`\xi(t)` jest oznaczeniem dla wyrażenia

.. MATH::
 :label: eqn20

 \xi(t) = \sum_k \lambda_k\Big[q_k(0) \cos \omega_k t + \frac{p_k(0)}{m_k\omega_k} \sin \omega_k t\Big].


Termostat składa się z ogromnej ilości cząstek (zwykle rzędu :math:`10^{23}` i więcej). Początkowe położenia :math:`q_k(0)` i początkowe pędy :math:`p_k(0)` cząstek otoczenia nie są znane. Ale ponieważ tworzą one termostat, to zakładamy że termostat jest w stanie równowagi termodynamicznej opisanej przez rozkład kanoniczny

.. MATH::
 :label: eqn21

 P(\{ x_k \}, \{ p_k\}) = N_0 \exp [-H_T/k_BT]


gdzie :math:`T` jest temperaturą termostatu oraz :math:`k_B` jest stałą Boltzmanna oraz

.. MATH::
 :label: eqn22

 H_T = \sum_k \left[\frac{p_k^2}{2m_k}+ \frac{1}{2} m_k \omega_k^2 q_k^2\right]


jest funkcją Hamiltona dla termostatu. Zauważmy, że funkcja ta jest formą kwadratową zmiennych :math:`\{q_k, p_k\}`. To implikuje, że mają one rozkład normalny (gaussowski). Dlatego

.. MATH::
 :label: eqn23

 \langle q_k(0)\rangle = 0, \qquad \langle q_k^2(0)\rangle = \frac{k_BT}{m_k \omega_k^2}, \qquad \langle p_k(0)\rangle = 0, \qquad \langle p_k^2(0)\rangle = m_k k_BT


Z kolei to oznacza, że siła :math:`\xi(t)` jest gaussowskim procesem stochastycznym. Obliczymy jego wartość średnią i funkcję korelacyjną (pojawiają się tylko i wyłącznie gaussowskie całki) :

.. MATH::
 :label: eqn24

 \langle \xi(t) \rangle = 0, \quad \langle \xi(t) \xi(s)\rangle = k_BT \gamma(t-s),


Zauważmy, że funkcja korelacyjna fluktuującej siły :math:`\xi(t)` jest ściśle związana z funkcją dysypacji :math:`\gamma(t)`. Jest to treść twierdzenia fluktuacyjno-dysypacyjnego:

Jeżeli układ oddziaływuje z otoczeniem to na układ działają siły losowe oraz układ podlega dysypacji; nie może byc dysypacji bez fluktuacji siły losowej :math:`\xi(t)` oraz fluktuującej siły, która by nie powodowała dysypacji. Te dwa elementy są ze sobą nierozerwalnie związane.


Równanie :eq:`eqn17` wraz z relacjami w :eq:`eqn24` nazywa się uogólnionym równaniem Langevina.

W granicy termodynamicznej, prawie-periodyczna funkcja :math:`\gamma(t)` staję się funkcją nieperiodyczną i generalnie malejącą. Postać tej funkcji zależy od funkcji spektralnej termostatu :math:`J(\omega)`. Pytanie, czy proces :math:`x(t)` jest procesem Markowa czy nie, zależy też od postaci :math:`J(\omega)`. Ponieważ na ogół nie znamy :math:`\{\lambda_k, m_k, \omega_k\}`, modelujemy układ podając modelowe przykłady funkcji spektralnej :math:`J(\omega)` lub funkcji dysypacji :math:`\gamma(t)`. Poniżej przedstawimy 2 przykłady.


Termiczne fluktuacje równowagowe: biały szum gaussowski
-------------------------------------------------------

Uogólnione równanie Langevina :eq:`eqn17` jest równaniem różniczkowo-całkowym, w dodatku stochastycznym ponieważ siła :math:`\xi(t)` jest siłą losową. Równanie różniczkowe przypominające równanie Newtona może być otrzymane z rów. :eq:`eqn17` w pewnej granicznej sytuacji: w tzw. przypadku omowym gdy funkcja spektralna :math:`J(\omega)=2\gamma \omega/\pi`, gdzie :math:`\gamma` jest stałą. W tym przypadku funkcja dysypacji ma postać:

.. MATH::
 :label: eqn25

 \gamma(t)= \int_0^{\;\infty} \frac{J(\omega)}{\omega} \cos(\omega t) \;d\omega = \frac{2 \gamma}{\pi} \int_0^{\;\infty} \cos(\omega t) \;d\omega= 2\gamma \delta(t)


Dla tego przypadku wyrażenie

.. MATH::
 :label: eqn26

 \int_0^{\;t} \gamma(t-s) \dot x(s)\;ds = 2 \gamma \int_0^{\;t} \delta(t-s) \dot x(s)\;ds = \gamma \dot x(t)


i uogólnione równanie Langevina :eq:`eqn17` redukuje się do postaci równania Newtona z losową siłą:

.. MATH::
 :label: eqn27

 m\ddot x(t) + \gamma \dot x(t) + U'\left( x(t) \right)= \xi(t)


gdzie parametr :math:`\gamma` ma interpretację stałej tłumienia (współczynnika tarcia) oraz gaussowska siła losowa :math:`\xi(t)` spełnia relacje (patrz rów. :eq:`eqn24` powyżej):

.. MATH::
 :label: eqn28

 \langle \xi(t) \rangle= 0, \quad \langle \xi(t) \xi(s)\rangle = 2\gamma k_BT \delta(t-s),


czyli jest białym szumem gaussowskim. Równanie to jest równoważne równaniu

.. MATH::
 :label: eqn29

 m\ddot x(t) + \gamma \dot x(t) + U'(x(t))= \sqrt{2\gamma k_BT}\;\Gamma(t)


gdzie tym razem szum :math:`\Gamma(t)` spełnia relacje

.. MATH::
 :label: eqn30

 \langle \Gamma(t) \rangle= 0, \quad \langle \Gamma(t) \Gamma(s)\rangle= \delta(t-s),


Prawa strona w rów. :eq:`eqn29` spełnia te same relacje co w rów. :eq:`eqn28`
dlatego obie formy równania ruchu :eq:`eqn27` oraz :eq:`eqn29` są równoważne.

Równanie :eq:`eqn29` jest wygodnie przepisać w postaci 2 równań pierwszego
rzędu dla zmiennych położenie - prędkość :math:`\{x(t), v(t)\}` :

.. MATH::
 :label: eqn31

 \dot x(t) = v(t),


.. MATH::
 :label: eqn32

 \dot v(t) = -\frac{\gamma}{m} v(t) - \frac{1}{m}U'(x(t)+ \frac{1}{m}\sqrt{2\gamma k_BT}\; \Gamma(t)


Jak wynika z poprzednich części, 2-wymiarowy proces stochastyczny :math:`\{x(t), v(t)\}` jest procesem Markowa. Gęstość prawdopodobieństwa przejścia lub warunkowa gęstość prawdopodobieństwa :math:`P\equiv P(x, v, t|x_0, v_0, t_0')` spełnia równanie Fokkera-Plancka

.. MATH::
 :label: eqn33

 \frac{\partial P}{\partial t} = -\frac{\partial}{\partial x} (v P) +\frac{\partial}{\partial v} \left ( \frac{\gamma}{m} v +\frac{1}{m} U'(x) \right ) P + \frac{\gamma k_B T}{m^2} \frac{\partial^2 P}{\partial v^2}


W literaturze fizycznej równanie to nazywa się równaniem Kramersa. Powyższego równania nie można rozwiązać w zamkniętej postaci analitycznej. Natomiast rozwiązanie stacjonarne

.. MATH::
 :label: eqn34

 P_{st} (x, v) = \lim_{t\to \infty} P(x, v, t)


tego równania ma postać

.. MATH::
 :label: eqn35

 P_{st}(x, v) = N_0 \mbox{exp} \left[ -\left ( {mv^2/2}+ U(x)\right )/k_B T \right ]


gdzie :math:`N_0` jest stałą normalizacyjną. Czytelnik może to sprawdzić bezpośrednim rachunkiem, jednak obliczenia są dość żmudne. Łatwo zauważyć, że stan stacjonarny określony przez to równanie jest stanem równowagi termodynamicznej podobnie jak dla zespołu kanonicznego Gibbsa. Wyrażenie w eksponencie tego równania jest energią cząstki:

.. MATH::
 :label: eqn36

 E = \frac{mv^2}{2} + U(x) = \frac{p^2}{2m} + U(x) = H(x, p), \qquad p=mv


Jeżeli energię wyrazimy w zmiennych położenie-pęd, to otrzymamy funkcję Hamiltona :math:`H(x, p)` dla badanego układu. Wówczas stacjonarna gęstość prawdopodobieństwa :eq:`eqn35` ma postać rozkładu Gibbsa:

.. MATH::
 :label: eqn37

 P_{st}(x, v) = N_0 \mbox{e}^{-H/k_BT}


Proces 2-wymiarowy :math:`\{x(t), p(t)\}` można zrzutować na przestrzeń położeń. Oznacza to, że rozkład prawdopodobieństwa położeń :math:`p(x)` otrzymuje się zgodnie z zasadami rachunku prawdopodobieństwa w następujący sposób:

.. MATH::
 :label: eqn38

 p(x) = \int_{-\infty}^{\; \infty} P_{st}(x, v) dv = \widetilde N_0 \mbox{e}^{-U(x)/k_BT}


Jest to rozkład Boltzmanna dla położeń cząstki Browna.

Zbadajmy teraz tzw. przypadek przetłumionej dynamiki: tarcie jest na tyle duże, że efekty inercjalne związane z przyśpieszeniem można pominąć. Innymi słowy dynamika układu jest określona przez równanie ruchu

.. MATH::
 :label: eqn39

 \gamma \dot x(t)= - U'(x(t) + \sqrt{2\gamma k_BT}\;\Gamma(t)


które można otrzymać z rów. :eq:`eqn33` zakładająć że :math:`m \ddot x(t) = 0`. Dla tego jednowymiarowego równania Langevina otrzymujemy następujące równanie Fokkera-Plancka:

.. MATH::
 :label: eqn40

 \gamma \frac{\partial p(x, t)}{\partial t} = \frac{\partial}{\partial x} U'(x) p(x, t) + k_B T\frac{\partial^2}{\partial x^2} p(x, t)


W literaturze fizycznej równanie to nazywa się równaniem Smoluchowskiego. W stanie stacjonarnym :math:`p(x) = \lim_{t\to \infty} p(x, t)` dlatego też :math:`p(x)` spełnia równanie

.. MATH::
 :label: eqn41

 \frac{\partial}{\partial x} U'(x) p(x) + k_B T\frac{\partial^2}{\partial x^2} p(x) = 0 \qquad \mbox{czyli} \quad \frac{\partial}{\partial x}\left[ U'(x) p(x) + k_B T\frac{\partial}{\partial x} p(x)\right] = 0


Wyrażenie w nawiasie jest wielkością stałą (zerem) i dlatego

.. MATH::
 :label: eqn42

 U'(x) p(x) + k_B T\frac{d p(x)}{dx} = 0


Rozwiązaniem tego równania jest funkcja Boltzmanna :math:`p(x) = \widetilde N_0 \mbox{exp}(-U(x)/k_BT)`.



Kolorowy szum termiczny
-----------------------

Na podstawie twierdzenia fluktuacyjno-dysypacyjnego siła losowa :math:`\xi(t)` w uogólnionym równaniu Langevina jest ściśle związana z jądrem całkowym :math:`\gamma(t)` w tym równaniu. Innymi słowy

.. MATH::
 :label: eqn43

 \langle \xi(t) \rangle= 0, \quad \langle \xi(t) \xi(s)\rangle = k_BT \gamma(t-s),


W poprzednim przypadku założyliśmy, że :math:`\gamma(t) = 2\delta(t)` co oznacza, że szum termiczny jest nieskorelowany dla :math:`t \neq s`. Teraz założymy, że szum termiczny :math:`\xi(t) = \eta(t)` jest skorelowany. Częstym przypadkiem korelacji jest eksponencjalna korelacja określona przez funkcje korelacyjną

.. MATH::
 :label: eqn44

 \langle \eta(t) \eta(s)\rangle = k_BT \gamma(t-s) =\frac{\gamma k_BT}{\tau_c} \;\mbox{e}^{-|t-s|/\tau_c}


gdzie :math:`\tau_c` jest czasem korelacji szumu termicznego :math:`\eta(t)`. Taki gaussowski szum nazywa się procesem Ornsteina-Uhlenbecka. Ponieważ

.. MATH::
 :label: eqn45

 \lim_{\tau_c \to 0} \frac{1}{\tau_c} \;\mbox{e}^{-|t|/\tau_c}= 2 \delta(t)


oznacza to, że proces :math:`\eta(t)` dąży do białego szumu gaussowskiego gdy :math:`\tau_c \to 0` i otrzymujemy poprzedni przypadek. Szum :math:`\eta(t)` jako proces Ornsteina-Uhlenbecka spełnia równanie Langevina w postaci:

.. MATH::
 :label: eqn46

 \dot \eta(t)= -\frac{1}{\tau_c} \eta(t) +\frac{1}{\tau_c} \sqrt{2\gamma k_BT} \;\widetilde\Gamma(t), \qquad \widetilde\Gamma(t) \rangle = 0, \qquad \langle \widetilde\Gamma(t) \widetilde\Gamma(s)\rangle = \delta(t-s)


gdzie :math:`\widetilde\Gamma(t)` jest (pomocniczym i abstrakcyjnym) białym szumem gaussowskim.

Uogólnione równanie Langevina :eq:`eqn17` przyjmuje teraz postać

.. MATH::
 :label: eqn47

 m\ddot x(t) + \frac{\gamma }{\tau_c} \; \int_0^{\;t} {e}^{-|t-s|/\tau_c} \dot x(s)\;ds + U'(x(t)= \eta(t)


Wprowadzimy pomocniczy proces :math:`Z(t)` zdefiniowany przez relację

.. MATH::
 :label: eqn48

 Z(t) = \frac{\gamma}{\tau_c} \; \int_0^{\; t} \mbox{e}^{-(t-s)/\tau_c} \dot x(s)\;ds


który jest częścią całkową w rów. :eq:`eqn47`. Wówczas rów. :eq:`eqn47` można przepisać w postaci

.. MATH::
 :label: eqn49

 m \dot v(t)= - U'(x(t) -Z(t) + \eta(t)


.. MATH::
 :label: eqn50

 \dot x(t)= v(t)


.. MATH::
 :label: eqn51

 \dot Z(t)= -\frac{1}{\tau_c} Z(t) +\frac{\gamma}{\tau_c} v(t)


.. MATH::
 :label: eqn52

 \dot \eta(t)= -\frac{1}{\tau_c} \eta(t) +\frac{1}{\tau_c} \sqrt{2\gamma k_BT} \;\widetilde\Gamma(t)


Zamiast równania różniczkowo-całkowego :eq:`eqn47` otrzymujemy układ 4 równań różniczkowych. Niewątpliwie jest on 
łatwiejszy do analizy numerycznej. Układ ten można zredukować do 3 równań wprowadzając nowy proces :math:`G(t)` 
określony przez relację

.. MATH::
 :label: eqn53

 G(t) = \eta(t)-Z(t)


Wówczas otrzymamu układ 3 równań w postaci:

.. MATH::
 :label: eqn54

 m \dot v(t) = - U'(x(t) + G(t),


.. MATH::
 :label: eqn55

 \dot x(t) = v(t),


.. MATH::
 :label: eqn56

 \dot G(t) = -\frac{1}{\tau_c} G(t) - \frac{\gamma}{\tau_c} v(t) +\frac{1}{\tau_c} \sqrt{2\gamma k_BT}\; \widetilde\Gamma(t)


Ten układ równań stochastycznych można symulować numerycznie otrzymując interesujące nas charakterystyki probabilistyczne. Warunki początkowe dla tego układu równań można łatwo sformułować. Jedynym kłopotem może być warunek początkowy :math:`G(0)` dla pomocniczego procesu :math:`G(t)`. Ale ponieważ :math:`Z(0) =0`, więc :math:`G(0) = \eta(0)`, czyli należy znać rozkład początkowy :math:`p_{O-U}(x)` dla procesu Ornsteina-Uhlenbecka. Ale rozkład ten jest znany. Jest to (stacjonarny) rozkład Gaussa:

.. MATH::
 :label: eqn57

 p_{O-U}(x) = \sqrt{\frac{\tau_c}{2\pi \gamma k_BT} }\; \exp\left\{ - \frac{\tau_c x^2}{2 \gamma k_B T}\right\}


Kończąc ten wykład chcemy nadmienić, że istnieją 2 przypadki dla których zawsze możemy rozwiązać uogólnione równanie Langevina. Te 2 przypadki to

* cząstka swobodna, :math:`U(x)=0`;

* cząstka w potencjale kwadratowym :math:`U(x)=(1/2)kx^2` (dysypatywny oscylator harmoniczny).


W pierwszym przypadku proces jest niestacjonarnym procesem Gaussa o naturze dyfuzji normalnej lub anomalnej w zależności od postaci funkcji dysypacji :math:`\gamma(t)`. W drugim przypadku stacjonarna gęstość rozkładu powinna mieć postać rozkładu Gibbsa.



