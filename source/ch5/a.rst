Proces Poissona
---------------

Pojedynczą realizację procesu Poissona można uzyskać poprzez wygenerowanie 
:math:`N` niezależnych punktów losowo rozłożonych na osi czasu na odcinku 
:math:`[0,T]`. Ilość punktów generujemy z rozkładu Poissona a ich położenie 
na osi czasu zgodnie z rozkładem jednorodnym :math:`U(0,N)`. Najprościej 
posłużyć się pakietem ``scipy``, aby wygenerować ilość punktów korzystając 
z rozkładu Poissona. Tak właśnie zrobiliśmy w rozdziale poświęconym
dynamice stochastycznej. Tutaj skorzystamy z metody inwersyjnej. 
Kolejne zdarzenia na osi czasu są z definicji procesu Poissona od siebie 
niezależne. Rozkład czasów miedzy dwoma kolejnymi punktami jest eksponencjalny

.. math::
  :label: eqn201

  p(t) = \mu e^{-\mu t}

Sekwencja liczb wygenerowanych z takim rozkładem zdefiniuje nam proces 
Poissona. 

Jak już pisaliśmy wcześniej, dystrybuanta rozkładu :eq:`eqn201` wynosi

.. math::
  :label: eqn202

  F(x) = 1 - e^{-\mu x}

A jej odwrotność :math:`-\ln(1 - u)/\mu`, gdzie :math:`u` to liczba 
losowa o rozkładzie :math:`U(0,1)`. Wygenerujemy ją posługując się
podstawową funkcję ``random()``.


.. only:: latex

  .. code-block:: python

    from numpy import cumsum
    F(u, a) = -log(1-u)/a
    N = 20
    skoki = range(N)
    kolor = ["red", "green", "blue"]
    mu = 0.5
    p = []
    for ii in range(3):
      l = [F(random(), par) for i in skoki]
      l = cumsum(l)
      p.append(plot_step_function(zip(l,skoki),color=kolor[ii]))


  .. figure:: images/sage_chV04_20.*
    :align: center
    :width: 80%
    :alt: figchV0420

    Realizacje procesu Poissona.

.. only:: html

  .. sagecellserver::
    :is_verbatim: True

    from numpy import cumsum
    F(u, a) = -log(1-u)/a
    N = 20
    skoki = range(N)
    kolor = ["red", "green", "blue"]
    mu = 0.5
    p = []
    for ii in range(3):
      l = [F(random(), par) for i in skoki]
      l = cumsum(l)
      p.append(plot_step_function(zip(l,skoki),color=kolor[ii]))
    sum(p).show(figsize=[8,3],axes_labels=[r'$t$',r'$N(t)$'])

  .. end of input


:math:`\alpha`-stabilny proces Levy'ego
---------------------------------------

Również w przypadku procesów wykorzystujących statystykę Levy'ego posłużymy
się metodą inwersyjną.
Funkcja charakterystyczna dla :math:`\alpha`-stabilnego procesu Levy'ego
jest postaci

.. MATH::
 :label: eqn302

 \phi(k)=\left\{\begin{array}{ll}\exp\left[ -\sigma^\alpha|k|^\alpha\left (1-i\beta\sgn k\tan\frac{\pi\alpha}{2} \right) +i\mu k \right], & \mbox{for}\;\;\alpha\neq 1, \\\exp\left[ -\sigma|k|\left (1+i\beta\frac{2}{\pi}\sgn k \ln|k| \right) + i\mu k \right], & \mbox{for}\;\;\alpha=1. \\\end{array}\right.

gdzie :math:`\alpha\in(0, 2]`. Przypadek :math:`\beta=0` oznacza, że proces jest symetryczny.

Przepis, na wygenerowanie zmiennej losowej o rozkładzie :math:`\alpha`-stabilnym
jest następujący. Jeżeli :math:`\alpha \ne 1`, obliczamy

.. math::
  :label: eqn302

  \varsigma = D_{\alpha,\beta,\sigma} \frac{\sin(\alpha(V+C_{\alpha,\beta})) }{ (\cos V)^{\frac{1}{\alpha}}}\left[\frac{\cos(V-\alpha(V+C_{\alpha,\beta}))}{W}\right]^{\frac{1-\alpha}{\alpha}},

gdzie zmienne :math:`C` i :math:`D` są dane wzorami

.. math::
  :label: eqn303

  C_{\alpha,\beta}=\frac{\arctan\left(\beta\tan \frac{\pi\alpha}{2} \right)}{\alpha},
  
oraz

.. math::
  :label: eqn304

  D_{\alpha,\beta,\sigma}=\sigma\left[ \cos\left(\arctan\left(\beta\tan \frac{\pi\alpha}{2}\right) \right) \right]^{-\frac{1}{\alpha}}.

Dla :math:`\alpha = 1`, wyrażenie jest nieco prostsze i przyjmuje postać

.. math::
  :label: eqn305

  \varsigma = \frac{2\sigma}{\pi} \left[ (\frac{\pi}{2}+\beta V)\tan V -\beta\ln \left (\frac{\frac{\pi}{2}W\cos V}{\frac{\pi}{2}+\beta V} \right) \right] + \mu.

W obu powyższych wzorach :math:`W` oraz :math:`V` to niezależne zmienne losowe; :math:`V` posiada
rozkład jednorodny na przedziale :math:`(-\frac{\pi}{2},\frac{\pi}{2})`
a :math:`W` jest generowana z rozkładem wykładniczym o jednostkowej średniej równej.

Do wygenerowania realizacji procesu Levy'ego posłużymy się metodą ``rvs`` 
funkcji ``levy_stable`` wbudowaną w pakiet ``stats`` biblioteki 
``scipy``. Pobiera ona 5 argumentów

  ``stats.levy_stable(alpha, beta, loc=0, scale=1, size=1)``

gdzie 

* ``alpha``, ``beta`` - to parametry rozkładu Levy'ego

* ``loc=0``, ``scale=1`` - to odpowiednio średnia i odchylenie standardowe (wraz z domyślnymi wartościami)

*  ``size=1`` - to ilość zmiennych losowych generowanych jednorazowym wywołaniem


.. only:: latex

  .. code-block:: python

        import numpy as np
        from scipy import stats

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

  .. figure:: images/sage_chV04_31.*
    :align: center
    :width: 80%
    :alt: figchV0431

    Relizacje procesów Levy'ego o parametrach podanych w legendach.


.. only:: html

  .. sagecellserver::
        :is_verbatim: True

        import numpy as np
        from scipy import stats

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

  .. end of input

Aby korzystając z powyższej metody otrzymać zmienne z rozkładami

* normalnym :math:`N(\mu, 2 \sigma^2)` należy zdefiniować 
  :math:`\alpha=2,\beta=0`,

* normalnym :math:`N(0,1)` należy podać
  :math:`\alpha=2,\beta=0,\sigma=1/\sqrt{2},\mu=0`,

* Cauchy-ego należy podać
  :math:`\alpha=1,\beta=0`,

* Levyego-Smirnoffa należy podać
  :math:`\alpha=1/2,\beta=1`.



