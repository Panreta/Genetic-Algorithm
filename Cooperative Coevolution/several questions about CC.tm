<TeXmacs|2.1.1>

<style|<tuple|generic|british>>

<\body>
  <section|part II>

  Question1.What's the definition of \ nonseparable, in other words,expect
  for the interdependencies of the variables, are there any other aspects of
  the nonseparable?

  Question2. What other aspects limit traditional CC algorithms to compute
  higher dimensions?

  \;

  <section|part III>

  <section*|Q1.>

  <\equation*>
    <\aligned>
      <tformat|<table|<row|<cell|>|<cell|3.*<space|1em><around|(|i*i|)>*<space|1em>\<chi\>=<around|(|x<rsub|1>,x<rsub|2>,\<ldots\>,x<rsub|n>|)>*<space|1em>f:\<bbb-F\><rsup|n>\<to\>\<bbb-F\>>>|<row|<cell|>|<cell|<text|is
      >f<around|(|x|)>\<equiv\>f*<around|(|c\<cdot\>x|)><text|means
      >>>|<row|<cell|>|<cell|f<around|(|\<chi\>|)>=<around|(|c\<cdot\>x<rsub|1>,c\<cdot\>x<rsub|2>,\<ldots\>,c\<cdot\>x<rsub|n>|)>=<math-bf|Wc>\<cdot\><around|(|<around|(|x<rsub|1>,0,\<ldots\>,0|)>,<around|(|0,x<rsub|2>,\<ldots\>,0|)>,\<ldots\>,<around|(|0,\<ldots\>,0,x<rsub|n>|)>|)>*?>>>>
    </aligned>
  </equation*>

  <section*|Q2.>

  <\equation*>
    <\aligned>
      <tformat|<table|<row|<cell|>|<cell|3.1<space|1em><text|Definition
      1.>>>|<row|<cell|>|<cell|\<forall\>y\<in\>S,y=<around|(|y<rsub|1>,\<ldots\>,x<rsub|k>,\<ldots\>,y<rsub|n>|)>\<Rightarrow\>f<around|(|y|)>\<leq\>f*<around|(|c*y<rprime|'>|)>>>|<row|<cell|>|<cell|\<forall\>y<rprime|'>\<in\>S,y<rprime|'>=<around|(|y<rprime|'><rsub|1>,\<ldots\>,x<rprime|'><rsub|k>,\<ldots\>,y<rprime|'><rsub|n>|)>>>|<row|<cell|>|<cell|<text|what
      set is >S*?*<text|Does >S*<text|mean fix the value in >k<text|th
      position and change >>>|<row|<cell|>|<cell|<text|the value in
      >1*\<ldots\>*k-1,k+1*\<ldots\>*n*<text|'s position? If so, why the
      >y<rprime|'>\<in\>S*?*<text|the >x<rprime|'><rsub|k>*<text|is not equal
      to >x<rsub|k>.>>>>
    </aligned>
  </equation*>

  <\remark>
    I think it is the question to ask the background of the \Pseperate
    function\Q,and how to understand \Pself-adaptive\Q?
  </remark>

  <section|part IV>

  <\question>
    What does it mean \Padding a weighted difference vector between two
    individuals to a third individual.\Q More precisely , what is \Pweighted
    difference vector \Q
  </question>

  <\question>
    Comfirm the concept \Pdiscrete crossover and greedy selection\Q with
    Alan, also describe the whole \Pclassical differential evolution\Q.
  </question>

  <\question>
    What is \Pdifferent schemes \Qin \PSelf-adaptive strategy has also been
    investigated to adapt these parameters as well as different schemes\Q
  </question>

  1) Introducing the self-adaptive mechanism from SaDE.<next-line>(2)
  Following the strategy in SaDE to dynamically adapt the value of
  CR.<next-line>(3) Using the same self-adaptive strategy as that in SaDE to
  adapt the balance<next-line>between Gaussian and Cauchy
  operators.<next-line>

  <\question>
    Does this mean that the self-adaptive NSDE can modify the parameters of
    the distributions and CR? How? Why do this kind of operation?
  </question>

  <\example>
    <\equation>
      v<rsub|i>=x<rsub|i<rsub|1>>+<around*|{|<tabular|<tformat|<table|<row|<cell|d<rsub|i>\<cdot\>N<around*|(|0.5,0.5|)>,
      if U<around*|(|0,1|)>\<less\>0.5>>|<row|<cell|d<rsub|i>\<cdot\>\<delta\>,otherwise>>>>>|\<nobracket\>>
    </equation>

    where <math|N<around*|(|\<cdot\>\<comma\>*\<cdot\>|)>> is Gaussian random
    number, <math|\<delta\> is Cauchy random variable with scale 1.>
  </example>

  <section|part V>

  <\question>
    \ Are the \Pbenchmark functions\Q the same as the one I searched out?
  </question>

  <\question>
    What is the word \PFEPCC\Q ?
  </question>

  <section|More to ask>

  <\question>
    Which articles are recommended to read?

    \;
  </question>

  <\remark>
    \<#57FA\>\<#4E8E\> <code*|DE/rand/1/bin>
    \<#5DEE\>\<#5206\>\<#8FDB\>\<#5316\>\<#7B56\>\<#7565\>\<#FF0C\>\<#6211\>\<#4EEC\>\<#53EF\>\<#4EE5\>\<#901A\>\<#8FC7\>\<#9010\>\<#4E2A\>\<#6539\>\<#53D8\>\<#6BCF\>\<#4E2A\>\<#53C2\>\<#6570\>\<#6765\>\<#7406\>\<#89E3\>\<#5B83\>\<#4EEC\>\<#5BF9\>\<#7B97\>\<#6CD5\>\<#884C\>\<#4E3A\>\<#7684\>\<#5F71\>\<#54CD\>\<#FF1A\>

    <\enumerate>
      <item><strong|\<#6539\>\<#53D8\> <code*|x>\<#FF08\>\<#5411\>\<#91CF\>\<#9009\>\<#62E9\>\<#FF09\>\<#FF1A\>>

      <\itemize>
        <item>\<#793A\>\<#4F8B\>\<#FF1A\><code*|DE/best/1/bin>

        <item>\<#53D8\>\<#5316\>\<#FF1A\>\<#5728\>\<#8FD9\>\<#4E2A\>\<#53D8\>\<#4F53\>\<#4E2D\>\<#FF0C\>\<#6211\>\<#4EEC\>\<#4F7F\>\<#7528\>\<#5F53\>\<#524D\>\<#79CD\>\<#7FA4\>\<#4E2D\>\<#7684\>\<#6700\>\<#4F18\>\<#5411\>\<#91CF\>\<#FF08\><code*|best>\<#FF09\>\<#FF0C\>\<#800C\>\<#4E0D\>\<#662F\>\<#968F\>\<#673A\>\<#5411\>\<#91CF\>\<#FF08\><code*|rand>\<#FF09\>\<#3002\>

        <item>\<#8FD9\>\<#4E2A\>\<#6539\>\<#53D8\>\<#4F7F\>\<#7B97\>\<#6CD5\>\<#66F4\>\<#52A0\>\<#96C6\>\<#4E2D\>\<#4E8E\>\<#5F53\>\<#524D\>\<#6700\>\<#597D\>\<#7684\>\<#89E3\>\<#51B3\>\<#65B9\>\<#6848\>\<#FF0C\>\<#53EF\>\<#80FD\>\<#52A0\>\<#901F\>\<#6536\>\<#655B\>\<#FF0C\>\<#4F46\>\<#4E5F\>\<#53EF\>\<#80FD\>\<#589E\>\<#52A0\>\<#9677\>\<#5165\>\<#5C40\>\<#90E8\>\<#6700\>\<#4F18\>\<#7684\>\<#98CE\>\<#9669\>\<#3002\>
      </itemize>

      <item><strong|\<#6539\>\<#53D8\> <code*|y>\<#FF08\>\<#5DEE\>\<#5206\>\<#5411\>\<#91CF\>\<#6570\>\<#91CF\>\<#FF09\>\<#FF1A\>>

      <\itemize>
        <item>\<#793A\>\<#4F8B\>\<#FF1A\><code*|DE/rand/2/bin>

        <item>\<#53D8\>\<#5316\>\<#FF1A\>\<#8FD9\>\<#91CC\>\<#6211\>\<#4EEC\>\<#4F7F\>\<#7528\>\<#4E24\>\<#4E2A\>\<#5DEE\>\<#5206\>\<#5411\>\<#91CF\>\<#FF08\><code*|2>\<#FF09\>\<#800C\>\<#4E0D\>\<#662F\>\<#4E00\>\<#4E2A\>\<#3002\>

        <item>\<#589E\>\<#52A0\>\<#5DEE\>\<#5206\>\<#5411\>\<#91CF\>\<#7684\>\<#6570\>\<#91CF\>\<#53EF\>\<#4EE5\>\<#589E\>\<#52A0\>\<#79CD\>\<#7FA4\>\<#7684\>\<#591A\>\<#6837\>\<#6027\>\<#FF0C\>\<#6709\>\<#52A9\>\<#4E8E\>\<#63A2\>\<#7D22\>\<#66F4\>\<#591A\>\<#7684\>\<#641C\>\<#7D22\>\<#7A7A\>\<#95F4\>\<#FF0C\>\<#4F46\>\<#540C\>\<#65F6\>\<#53EF\>\<#80FD\>\<#964D\>\<#4F4E\>\<#6536\>\<#655B\>\<#901F\>\<#5EA6\>\<#3002\>
      </itemize>

      <item><strong|\<#6539\>\<#53D8\> <code*|z>\<#FF08\>\<#4EA4\>\<#53C9\>\<#6A21\>\<#5F0F\>\<#FF09\>\<#FF1A\>>

      <\itemize>
        <item>\<#793A\>\<#4F8B\>\<#FF1A\><code*|DE/rand/1/exp>

        <item>\<#53D8\>\<#5316\>\<#FF1A\>\<#5728\>\<#6B64\>\<#53D8\>\<#4F53\>\<#4E2D\>\<#FF0C\>\<#6211\>\<#4EEC\>\<#4F7F\>\<#7528\>\<#6307\>\<#6570\>\<#4EA4\>\<#53C9\>\<#FF08\><code*|exp>\<#FF09\>\<#800C\>\<#4E0D\>\<#662F\>\<#4E8C\>\<#9879\>\<#5F0F\>\<#4EA4\>\<#53C9\>\<#FF08\><code*|bin>\<#FF09\>\<#3002\>\<#6307\>\<#6570\>\<#4EA4\>\<#53C9\>\<#503E\>\<#5411\>\<#4E8E\>\<#4EA7\>\<#751F\>\<#66F4\>\<#52A0\>\<#8FDE\>\<#7EED\>\<#7684\>\<#53D8\>\<#5316\>\<#FF0C\>

        <item>\<#53EF\>\<#80FD\>\<#6709\>\<#52A9\>\<#4E8E\>\<#66F4\>\<#7EC6\>\<#81F4\>\<#5730\>\<#63A2\>\<#7D22\>\<#641C\>\<#7D22\>\<#7A7A\>\<#95F4\>\<#FF0C\>\<#4F46\>\<#53EF\>\<#80FD\>\<#51CF\>\<#5C11\>\<#8DF3\>\<#8DC3\>\<#5230\>\<#8FDC\>\<#79BB\>\<#5F53\>\<#524D\>\<#89E3\>\<#51B3\>\<#65B9\>\<#6848\>\<#533A\>\<#57DF\>\<#7684\>\<#80FD\>\<#529B\>\<#3002\>
      </itemize>
    </enumerate>

    \<#6BCF\>\<#6B21\>\<#53EA\>\<#6539\>\<#53D8\>\<#4E00\>\<#4E2A\>\<#53C2\>\<#6570\>\<#6709\>\<#52A9\>\<#4E8E\>\<#7406\>\<#89E3\>\<#6BCF\>\<#4E2A\>\<#53C2\>\<#6570\>\<#5BF9\>\<#7B97\>\<#6CD5\>\<#6027\>\<#80FD\>\<#7684\>\<#72EC\>\<#7ACB\>\<#5F71\>\<#54CD\>\<#3002\>\<#8FD9\>\<#79CD\>\<#65B9\>\<#6CD5\>\<#53EF\>\<#4EE5\>\<#7528\>\<#4E8E\>\<#5BF9\>\<#7279\>\<#5B9A\>\<#95EE\>\<#9898\>\<#7684\>\<#7B97\>\<#6CD5\>\<#8FDB\>\<#884C\>\<#7EC6\>\<#81F4\>\<#8C03\>\<#6574\>\<#FF0C\>\<#4EE5\>\<#8FBE\>\<#5230\>\<#6700\>\<#4F18\>\<#6027\>\<#80FD\>\<#3002\>
  </remark>
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
    <associate|auto-3|<tuple|2|1>>
    <associate|auto-4|<tuple|2|1>>
    <associate|auto-5|<tuple|3|1>>
    <associate|auto-6|<tuple|4|2>>
    <associate|auto-7|<tuple|5|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>part
      II> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>part
      III> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Q1.>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Q2.>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>part
      IV> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>part
      V> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>More
      to ask> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>