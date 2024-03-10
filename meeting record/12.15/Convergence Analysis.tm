<TeXmacs|2.1.1>

<style|<tuple|generic|british>>

<\body>
  <doc-data|<\doc-title>
    Convergence Analysis of DECC-G
  </doc-title>|<doc-author|<author-data|<author-name|Zhang
  Tingyu>|<\author-affiliation>
    2023.12.15
  </author-affiliation>>>>

  <section|Introduction>

  Differential Evolution Cooperative Coevolution (DECC-G) designs a
  corresponding self-adaptive differential evolution with neighborhood search
  (SaNSDE) using cooperative coevolution.

  Diferential Evolution as introduced in [2] is often used to solve static
  optimization problems of the type:<with|color|magenta|(form from [1])>

  <\equation>
    max<around*|{|f<around*|(|<wide|x|\<bar\>>|)>\|f:\<bbb-R\><rsup|N>\<rightarrow\>\<bbb-R\><rsup|+>|}>.<around*|(|change?|)>
  </equation>

  To simplify the problem and make the problem solvable by computers,first,
  <math|f is considered to be fully-additive separable function,>which means
  <math|f can be written in the form:>

  <\equation>
    f<around*|(|<wide|x|\<bar\>>|)>=<below|<above|<big|sum>|m>|k=1>f<rsub|k><around*|(|<wide|x<rsub|>|\<bar\>><rsub|k>|)>\<#FF0C\>
  </equation>

  where seperates <math|\<bbb-R\><rsup|N>\<assign\>\<bbb-R\><rsup|n>\<times\>\<bbb-R\><rsup|m>,f<rsub|k>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|+>,<wide|x<rsub|>|\<bar\>><rsub|k>\<in\>\<bbb-R\><rsup|n>>.Second,
  the problem is discretized by using <math|\<bbb-B\><rsup|N> to replace
  \<bbb-R\><rsup|n>.<with|color|magenta|<around*|(|detail about how to
  change|)>>> Then \ Cooperative Coevolution mentioned in [2] can be applied
  to make the large and complex problems easier using a divide-and conquer
  strategy.<with|color|magenta|(form from [2] P4)>Although empirical evidence
  indicates that DECC-G can sometimes find good solutions to complex problems
  there are few theoretical results concerning their convergence
  properties.In optimization theory an algorithm is said to converge to the
  global optimum if it generates a sequence of solutions or function values
  in which the global optimum is a limit value. A probabilistic version of
  this definition is used in this paper.

  Markov chains offer an appropriate model to analyze DECC-G and they have
  been used in [3] and [4]<with|color|magenta|(mentioned in [1])> to prove
  probabilistic convergence of the best solution within a population to the
  global optimum under elitist selection (the best individual survives with
  probability one).This paper analyzes the global convergence properties of
  the DECC-G and modified versions that simply save the best discovered
  solution. It is proved by means of homogeneous finite Markov chains that
  the CGA never converges to the global optimum, but modified versions do.
  <with|color|magenta|(last sentence??)>

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  References:

  [1]Rudolph, G. (1994). Convergence analysis of canonical genetic
  algorithms. IEEE Transactions on Neural Networks.

  [2]Yang, Z., Tang, K., & Yao, X. (2007). Large scale evolutionary
  optimization using cooperative coevolution.

  [3] A.E. Eiben, E.H.L. Aarts, and K.M. Van Hee, \\Global convergence of
  genetic algorithms:A markov chain analysis", in Paral lel Problem Solving
  from Nature, H.-P. Schwefel and R. M anner (Eds.), Berlin and Heidelberg:
  Springer, 1991, pp. 4-12.

  [4] D.B. Fogel, Evolving Arti\Lcial Intel ligence, PhD dissert., San Diego:
  University of California, 1992.<next-line>

  \;

  \;

  \;

  \;

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
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>