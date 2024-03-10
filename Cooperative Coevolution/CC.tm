<TeXmacs|2.1.1>

<style|<tuple|generic|british|number-europe>>

<\body>
  <doc-data|<doc-title|Review Large Scale Evolutionary Optimization Using
  Cooperative Coevolution>|<doc-author|<author-data|<author-name|Tingyu
  Zhang>|<\author-affiliation>
    2023.10.18
  </author-affiliation>>>>

  <section|Introduction>

  What is the proble:

  Evolutionary optimization performs <with|color|#faf|well on low-dimension
  problems>, but<with|color|#faf| fails in solving high-dimension problems>.

  Cooperative coevolution can solve high-dimension problems.

  Problem Decomposition: Decompose a high-dimensional objective vector into
  smaller subcomponents that can be handled by conventional EAs.\ 

  Subcomponent Optimization: Evolve each subcomponent separately using a
  certain EA.

  Subcomponents Coadaptation: Since interdependencies may exist between
  subcomponents, coadaptation (i.e., coevolution) is essential in capturing
  such interdependencies during optimization.

  2 methods: \ 

  one-dimensional based: n-dimensional problem would be decomposed into n
  1-dimensional problems. Simple and effective for separable functions, it
  did not consider interdependencies among variables for
  nonseparableproblems.

  splitting-in-half strategies:decompose a high-dimensional vector into two
  equal halves and thus reducing an n-dimensional problem into two n2
  -dimensional problems

  \;

  paper did:the grouping based strategy, in order to better capture the
  variable interdependencies for nonseparable problems by optimize a group of
  interacting variables together (as a subcomponent), rather than splitting
  them into different subcomponents.

  his paper also introduces a new differential evolution (DE) variant,
  SaNSDE, as the base optimizer for subcomponents.

  <section|Cooperative Coevolution>

  Algorithm

  (1) Decompose an objective vector into m low-dimensional
  subcomponents.<next-line>(2) Set i = 1 to start a new cycle.<next-line>(3)
  Optimize the i-th subcomponent with a certain EA for a predefined number
  of<next-line>fitness evaluations (FEs).<next-line>(4) If i \<less\> m then
  i + +, and go to Step 3.<next-line>(5) Stop if halting criteria are
  satisfied; otherwise go to Step 2 for the next cycle.<next-line>

  For nowadays CC, 3 shortcomings happen :

  First, the decomposition strategies did not take into account variable
  interdependencies for nonseparable problems.\ 

  Second, the base optimizer (e.g., an EA) was out of date.\ 

  Third, the CC algorithms were able to deal with problems with only up to
  100 dimensions.

  \;

  <section|The New Framework with Grouping and Adaptive Weighting>

  \;

  crucial idea : Spliting an objective vector into m s-dimensional
  subcomponents (assuming n = m \<ast\> s)

  (1) Set i = 1 to start a new cycle.

  (2) Split an n-dimensional object vector into m subcomponents
  (s-dimensional) randomly, i.e. n = m \<ast\> s. Here \Prandomly\Q means
  that each variable has the same<next-line>chance to be assigned into any of
  the subcomponents.<next-line>(3) Optimize the i-th subcomponent with a
  certain EA for a predefined number of<next-line>FEs.<next-line>(4) If i
  \<less\> m then i + +, and go to Step 3.<next-line>(5) Apply a weight to
  each of the subcomponents. Evolve the weight vectors for
  the<next-line>best, the worst and a random members of current
  population.<next-line>(6) Stop if halting criteria are satisfied; otherwise
  go to Step 1 for the next cycle.<next-line>

  The main differences between our proposed approach and the existing ones
  are:\ 

  (1) Our new framework evolves a group of variables together, and the
  grouping structure will be changed dynamically;\ 

  (2) The new framework uses adaptive weighting for coadaptation among
  subcomponents after each cycle.\ 

  This scheme of algorithm will be denoted as <with|color|#aaf|EACC-G> in our
  paper

  <subsection|Why and How Well EACC-G Works>

  <\definition>
    <math|f<around*|(|x|)>> is called a separable function if
    <math|\<forall\>k \<in\> {1, n}> and
  </definition>

  <\equation>
    <around*|\<nobracket\>|<tabular|<tformat|<table|<row|<cell|x\<in\>S,x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|k>,\<ldots\>,x<rsub|n>|)>>>|<row|<cell|x<rsup|<rprime|'>>\<in\>S<rsup|>,x<rsup|<rprime|'>>=<around*|(|x<rsub|1>,\<ldots\>,x<rsup|<rprime|'>><rsub|k>,\<ldots\>,x<rsub|n>|)>>>>>>|}>f<around*|(|x|)>\<less\>f<around*|(|x<rsup|<rprime|'>>|)>
  </equation>

  imply

  <\equation>
    <around*|\<nobracket\>|<tabular|<tformat|<table|<row|<cell|\<forall\>y\<in\>S,y=<around*|(|y<rsub|1>,\<ldots\>,x<rsub|k>,\<ldots\>,y<rsub|n>|)>>>|<row|<cell|\<forall\>y<rsup|<rprime|'>>\<in\>S<rsup|>,y<rsup|<rprime|'>>=<around*|(|y<rsub|1>,\<ldots\>,x<rsup|<rprime|'>><rsub|k>,\<ldots\>,y<rsub|n>|)>>>>>>|}>f<around*|(|y|)>\<less\>f<around*|(|y<rsup|<rprime|'>>|)>
  </equation>

  Otherwise, <math|f<around*|(|x|)>> is non-separable function.

  <\remark>
    Basically, non-separability means that the objective vector consists of
    interacting variables, while separability means that the influence of a
    variable on the fitness value depends only on itself, i.e., independent
    of any other variables.
  </remark>

  Given a nonseparable function, if all of its variables are highly
  interdependent of each other, no CC algorithms would perform well on such
  an extreme case.The proposed EACC-G has been designed to decompose a
  nonseparable problem following the above principle.

  The following theorem shows a simple case of the probability to optimize
  two interacting variablestogether in EACC-G.

  <\theorem>
    The probability of EACC-G to assign two interacting variables
    <math|x<rsub|i>> and <math|x<rsub|j>> into a single subcomponent for at
    least k cycles is:

    <\equation>
      P<rsub|k>=<below|<big|sum><rsup|N>|r=k><around*|(|<tabular*|<tformat|<table|<row|<cell|N>>|<row|<cell|r>>>>>|)><around*|(|<frac|1|m>|)><rsup|r><around*|(|1-<frac|1|m>|)><rsup|N-r>
    </equation>
  </theorem>

  where N is the total number of cycles and m is the number of subcomponents.

  <\proof>
    <math|1.p\<assign\>P<around*|{|x<rsub|j><infix-and>x<rsub|i> in the same
    subcomponent|}>=<frac|<around*|(|<tabular*|<tformat|<table|<row|<cell|m>>|<row|<cell|1>>>>>|)>|m<rsup|2><around*|(|all
    m-cycle can be choose|)>>>=<math|<frac|1|m>>,

    2.P{<math|x<rsub|j><infix-and>x<rsub|i> in the same subcomponent in
    r-cycle>}=<math|<around*|(|<tabular*|<tformat|<table|<row|<cell|N>>|<row|<cell|r>>>>>|)>p<rsup|r><around*|(|1-p|)><rsup|N-r>>
  </proof>

  \;

  <section|Self-adaptive Differential Evolution with Neighbourhood Search>

  The primary driving force behind DE is mutation.DE executes its mutation by
  adding a weighted difference vector between two individuals to a third
  individual.

  \;

  <subsection|Classical Differential Evolution>

  (1)Mutation

  (2)Crossover

  (3)Selection

  <subsection|Differential Evolution with Neighbourhood Search (NSDE)>

  Although DE might be similar to the evolutionary process in EP, it lacks a
  relevant concept of neighbourhood search.NSDE is the same as the DE
  described in Section 4.1.1 except for Eq. (4).

  <\equation>
    v<rsub|i>=x<rsub|i<rsub|1>>+<around*|{|<tabular|<tformat|<table|<row|<cell|d<rsub|i>\<cdot\>N<around*|(|0.5,0.5|)>,
    if U<around*|(|0,1|)>\<less\>0.5>>|<row|<cell|d<rsub|i>\<cdot\>\<delta\>,otherwise>>>>>|\<nobracket\>>
  </equation>

  where <math|N<around*|(|\<cdot\>\<comma\>*\<cdot\>|)>> is Gaussian random
  number, <math|\<delta\> is Cauchy random variable with scale 1.>

  \;

  <subsection|Self-adaptive NSDE (SaNSDE)>

  SaNSDE is same as NSDE except for the following:

  (1) Introducing the self-adaptive mechanism from SaDE.

  (2) Following the strategy in SaDE to dynamically adapt the value of CR.

  (3) Using the same self-adaptive strategy as that in SaDE to adapt the
  balance between Gaussian and Cauchy operators

  \;

  <subsection|SaNSDE Under the New CC Framework>

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|3.1|2>>
    <associate|auto-5|<tuple|4|3>>
    <associate|auto-6|<tuple|4.1|3>>
    <associate|auto-7|<tuple|4.2|3>>
    <associate|auto-8|<tuple|4.3|3>>
    <associate|auto-9|<tuple|4.4|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Cooperative
      Coevolution> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>The
      New Framework with Grouping and Adaptive Weighting>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Why and How Well EACC-G
      Works <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Self-adaptive
      Differential Evolution with Neighbourhood Search>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc>Classical Differential
      Evolution <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.2<space|2spc>Differential Evolution with
      Neighbourhood Search (NSDE) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.3<space|2spc>Self-adaptive NSDE (SaNSDE)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.4<space|2spc>SaNSDE Under the New CC
      Framework <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>
    </associate>
  </collection>
</auxiliary>