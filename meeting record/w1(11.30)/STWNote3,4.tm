<TeXmacs|2.1.1>

<style|<tuple|generic|chinese>>

<\body>
  <doc-data|<\doc-subtitle>
    \;
  </doc-subtitle>>

  <section|Cooperative Coevolution Algorithm>

  We propose the group-based problem decomposition strategy still works. In
  addition, the CC framework is designed to change grouping structures
  dynamically, which will increase the chance of optimizing interacting
  variables together.

  The key steps of the framework can be summarized as follows:

  <\enumerate-numeric>
    <item>Set <math|G>=<math|H<rsub|1><rsup|<rsup|<rsub|>>T<rsup|>>\<circ\>H<rsup|T><rsub|2>\<circ\>\<cdots\>\<circ\>H<rsup|T><rsub|N>>

    <item><math|H<rsup|T><rsub|i<rsup|>>=H<rsup|><rsub|i<rsup|>>\<circ\>H<rsub|i>\<circ\>\<cdots\>\<circ\>H<rsub|i>>
    (Which means <math|H<rsub|i>> appears T times.)

    <item>Apply G use the assumtion in the CC.
  </enumerate-numeric>

  If the dimension is fully additive separable, then we can claim that such a
  G lead to convergence.

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
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1|..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_3.tm>>
    <associate|auto-2|<tuple|2|1|..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_3.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Cooperative
      Coevolution Algorithm> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Real-world
      Problems> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>