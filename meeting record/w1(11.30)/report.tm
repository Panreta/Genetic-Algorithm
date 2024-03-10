<TeXmacs|2.1.1>

<style|<tuple|generic|british>>

<\body>
  <doc-data|<doc-title|Convergence Analysis of
  DECC-G>|<doc-author|<author-data|<author-name|Tingyu
  Zhang>|<\author-affiliation>
    2023.12.8
  </author-affiliation>>>>

  <section|Introduction>

  \ The Evolutionary Algorithms are used to tackle static optimization
  problems of the type

  <\equation>
    min<around*|{|f<around*|(|<wide|x|\<bar\>>|)>\|f:\<bbb-R\><rsup|N>\<rightarrow\>\<bbb-R\>,<wide|x|\<bar\>>=<big|sum><rsup|N><rsub|k=1>a<rsub|k>*<wide|x|^><rsub|k>|}>\<#FF0C\>where
    N=l\<ast\>n.
  </equation>

  These kinds of problems have some examples to show their usage:

  <\example>
    Consider <math|f<around*|(|x|)>=<around*|\<\|\|\>|x-x<rsup|\<ast\>>|\<\|\|\>>,w.r.t
    <around*|\<\|\|\>|\<cdot\>|\<\|\|\>> is norm.> Especially, take
    <math|<around*|\<\|\|\>|\<cdot\>|\<\|\|\>><rsub|2> \ ><math|to be 2-norm
    in> the

    Euclidean space.
  </example>

  <\example>
    \ Define the function to be \Pfully additive separable\Q:

    <\equation>
      f<around*|(|<wide|x|\<bar\>>|)>=<below|<above|<big|sum>|N>|k=1><around*|\<\|\|\>|<wide|x|^><rsub|k>|\<\|\|\>>,
    </equation>

    which uses the thought of \Pdivide and conquer\Q.
  </example>

  Take <math|f:\<bbb-B\><rsup|N>\<rightarrow\>\<bbb-R\>>, which makes the
  domain of<math|f> discrete , hence the problems can be solved by computer.
  In the paper \PLarge Scale Evolutionary Optimization Using Cooperative
  Coevolution\Q, a method is proposed to solve the optimization problems,
  which is \PDECC-G\Q.

  <\specified-algorithm|DECC-G(s, cycles, FEs, wFEs)>
    <algo-state|<math|p*o*p*<around|(|1:N*P,1:n|)>\<leftarrow\>>random
    <space|2>population>

    <algo-state|<math|w*p*o*p*<around|(|1:N*P,1:n/s|)>\<leftarrow\>>define
    weight population>

    <algo-state|(<math|<text|best>,<text|best_val>)\<leftarrow\>>evaluate(pop)>

    <\algo-for|<math|i\<leftarrow\>1> to cycles>
      <algo-state|<math|index<around|(|1:n|)>\<leftarrow\>>randperm(n)>

      <\algo-for|<math|j\<leftarrow\>1*<text|to >n/s>>
        <algo-state|<math|l\<leftarrow\><around|(|j-1|)>\<ast\>s+1>>

        <algo-state|<math|u\<leftarrow\>j\<ast\>s>>

        <algo-state|<math|subpop\<leftarrow\>p*o*p(:,i*n*d*e*x<around|(|l:u|)>)>
        >

        <algo-state|<math|subpop\<leftarrow\>>SaNSDE(best, subpop, FEs)>

        <algo-state|<math|wpop(:,j)\<leftarrow\>>random weight>

        <algo-state|<math|pop(:,i*n*d*e*x<around|(|l:u|)>)\<leftarrow\>subpop>>

        <algo-state|(<math|<text|best>,<text|best_val>)\<leftarrow\>>evaluate(pop)
        >
      </algo-for>

      <algo-state|(<math|<text|best>,<text|best_index>)\<leftarrow\>>findbest(pop)>

      <algo-state|(<math|<text|rand>,<text|rand_index>)\<leftarrow\>>findrand(pop)>

      <algo-state|(<math|<text|worst>,<text|worst_index>)\<leftarrow\>>findworst(pop)>

      <algo-state|<math|pop(<text|best_index>,:)\<leftarrow\>>DE(best, wpop,
      wFEs)>

      <algo-state|<math|pop(<text|rand_index>,:)\<leftarrow\>>DE(rand, wpop,
      wFEs)>

      <algo-state|<math|pop(<text|worst_index>,:)\<leftarrow\>>DE(worst,
      wpop, wFEs)>

      <algo-state|(<math|<text|best>,<text|best_val>)\<leftarrow\>>evaluate(pop)>
    </algo-for>

    <algo-return|best_val>
  </specified-algorithm>

  Even though the algorithm is robust for some kinds of benchmark functions ,
  the convergence of the algorithm lacks rigorous proof. However, there is a
  method to prove the convergence of Canonical Genetic Algorithm(CGA) by the
  theorems in Markov Chain.\ 

  The reason why the convergence method of CGA is chosen is because the paper
  changes the existence of each individual in every term of evolution into
  the existence probability, and each individual can represent a state in the
  state space. Hence the existence probability can be used in the
  transformation matrix in the Markov Chain. Such way can be transfer to
  prove the convergence of DECC-G by analogy, which is our target.

  \;

  <section| Convergence Proof by Markov Chain >

  In the paper \PConvergence Analysis of Canonical Genetic Algorithms\Q
  written by Gunter Rudolph,

  it defined <math|G:\<bbb-R\><rsup|N>\<rightarrow\>\<bbb-R\><rsup|N>,<wide|x|\<bar\>><rsup|t+1>\<assign\>G<around|(|<wide|x|\<bar\>><rsup|t>|)>,G
  \ is an evolution.>

  The elitist selection mentioned in Rudolph's paper makes a strong claim
  that <math|G<around|(|<wide|x|\<bar\>><rsup|\<ast\>>|)>=<wide|x|\<bar\>><rsup|\<ast\>>>,
  i.e <math|<wide|x|\<bar\>><rsup|\<ast\>>> is a fixed-proof of <math|G>. For
  any initial <math|<wide|x|\<bar\>>\<neq\><wide|x|\<bar\>><rsup|\<ast\>>,>

  <\equation>
    f<around*|(|G<around|(|<wide|x|\<bar\>><rsup|0>|)>|)>\<geqslant\>f<around*|(|G<around|(|<wide|x|\<bar\>><rsup|1>|)>|)>\<geqslant\>\<cdots\>\<geqslant\>f<around*|(|G<around|(|<wide|x|\<bar\>><rsup|\<ast\>>|)>|)>
  </equation>

  \;

  <section|Cooperative Coevolution>

  We propose the group-based problem decomposition strategy still works. In
  addition, the CC framework is designed to change grouping structures
  dynamically, which will increase the chance of optimizing interacting
  variables together.

  The key steps of the framework can be summarized as follows:

  <\enumerate-numeric>
    <item>Set <math|G>=<math|H<rsub|1><rsup|<rsup|<rsub|>>T<rsup|>>\<circ\>H<rsup|T><rsub|2>\<circ\>\<cdots\>\<circ\>H<rsup|T><rsub|N>>

    <item><math|H<rsup|T><rsub|i<rsup|>>=H<rsup|><rsub|i<rsup|>>\<circ\>H<rsub|i>\<circ\>\<cdots\>\<circ\>H<rsub|i>>
    (Which means <math|H<rsub|i>> appears T times.)

    <item>Apply G use the assumption in the CC.
  </enumerate-numeric>

  If the dimension is fully additive separable, then we can claim that such a
  G lead to convergence.

  \;

  <section|Real-world Problems>

  The proposition we made for high-dimensional optimization problems may fail
  in the real-world problems. For not fully but additive separable problems,
  we can assume as follows:

  <\enumerate>
    <item><math|f<around*|(|<wide|x|\<bar\>>|)>=<big|sum><rsub|m=1><rsup|M>f<rsub|m><around*|(|<wide|x<rsub|>|\<bar\>><rsub|m>|)>>,
    which <math|<wide|x|\<bar\>>=<wide|x<rsub|1>|\<bar\>>+\<cdots\><wide|x<rsub|>|\<bar\>><rsub|M>>
    <strong|><math|>(Note that <strong|<math|\<bbb-R\><rsup|m >>> differs.)

    <item><math|<wide|x<rsub|1>|\<bar\>>>,<math|\<cdots\>,<wide|x<rsub|>|\<bar\>><rsub|m>>
    is known, <math|G>=<math|H<rsub|1><rsup|<rsup|<rsub|>>T<rsup|>>\<circ\>H<rsup|T><rsub|2>\<circ\>\<cdots\>\<circ\>H<rsup|T><rsub|M>
    > where <math|<wide|x<rsup|>|\<bar\>><rsup|t+1><rsub|m>=H<rsub|m><around*|(|<wide|x<rsup|>|\<bar\>><rsup|t><rsub|m>|)>>
  </enumerate>

  Then because <math|<wide|x<rsub|1>|\<bar\>>>,<math|\<cdots\>,<wide|x<rsub|>|\<bar\>><rsub|m>>
  is known, we can use the assumption in the CEA. So G converges.

  However, there are still some questions, if
  <math|<wide|x<rsub|1>|\<bar\>>>,<math|\<cdots\>,<wide|x<rsub|>|\<bar\>><rsub|m>>
  is unknown, we can not use the existed strategy to separate the problem. So
  we can use the random grouping in each G action:

  <\enumerate>
    <item>Fix K, ensure all <math|\<bbb-R\><rsup|K>> save dimensionalify.

    <item><math|G<rsup|1>>=<math|H<rsub|1><rsup|<rsup|<rsub|>>T,1<rsup|>>\<circ\>\<cdots\>\<circ\>H<rsup|T,1><rsub|K>
    >,<math|\<cdots\>,G<rsup|q>>=<math|H<rsub|1><rsup|<rsup|<rsub|>>T,q<rsup|>>\<circ\>\<cdots\>\<circ\>H<rsup|T,q><rsub|K>
    \<cdots\>.> (<math|q=1,2,\<cdots\>>)

    <item><math|<wide|x|\<bar\>><rsub|k>=x> where
    <math|<around*|\||x|\|>=<frac|N|K>,> <math|<big|cup><rsup|M><rsub|k=1<rsup|>><around*|{|<wide|x|\<bar\>><rsub|k>|}>=<around*|{|<wide|x|\<bar\>>|}>>,
    <math|<big|cap><rsup|M><rsub|k=1>><math|<around*|{|<wide|x|\<bar\>><rsub|k>|}>=\<varnothing\>.>
  </enumerate>

  But the random selection of <math|<wide|x|\<bar\>><rsub|k>> in each circle
  possibly no elitist effect because it cannot guarantee\ 

  <math|<math|<math|f<around*|(|H<rsup|t,q><rsub|K><around*|(|<wide|x|\<bar\>><rsub|k>|)>|)>\<geqslant\>><math|f<around*|(|H<rsup|t+1,q><rsub|K><around*|(|<wide|x|\<bar\>><rsub|k>|)>|)>>>.>

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
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>
      Convergence Proof by Markov Chain >
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Cooperative
      Coevolution> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Real-world
      Problems> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>