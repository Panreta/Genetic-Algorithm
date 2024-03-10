<TeXmacs|2.1.1>

<style|<tuple|generic|british>>

<\body>
  <doc-data|<doc-title|Pieces may use>>

  Step 1: we consider <math|<around*|[|1,Np\<ast\>n|]>/<below|<above|<big|cup>|Np-1>|i=0><around*|[|in+1,in+s|]><around*|(|Np\<cdot\><around*|(|n-s|)>bits|)>
  and<infix-or>der them in> dictionary-order

  Step 2: For the left<math|<below|<above|<big|cup>|Np-1>|i=0><around*|[|in+1,in+s|]><around*|(|Np\<cdot\>s
  bits|)> and> order them in dictionary-order.

  \;

  In general,<samp|<verbatim|>>

  <\equation>
    <around*|{|<tabular|<tformat|<table|<row|<cell|C=diag<rsub|2<rsup|Np<around*|(|n-s|)>>><around*|(|C<rsub|2<rsup|Np\<cdot\>s>>|)>>>|<row|<cell|M=diag<rsub|2<rsup|Np<around*|(|n-s|)>>><around*|(|M<rsub|2<rsup|Np\<cdot\>s>>|)>>>|<row|<cell|S=diag<rsub|2<rsup|Np<around*|(|n-s|)>>><around*|(|S<rsub|2<rsup|Np\<cdot\>s>>|)>.>>>>>|\<nobracket\>>
  </equation>

  with <math|P=CMS=diag<rsub|2<rsup|Np<around*|(|n-s|)>>><around*|(|C<rsub|2<rsup|Np\<cdot\>s>>M<rsub|2<rsup|Np\<cdot\>s>>S<rsub|2<rsup|Np\<cdot\>s>>|)>\<assign\>><math|diag<rsub|2<rsup|Np<around*|(|n-s|)>>><around*|(|P<rsub|2<rsup|Np\<cdot\>s>>|)>>.

  (The notation <math|diag<rsub|M><around*|(|A|)>> means a diagonal matrix
  with M copy of A as its diagonal elements)

  \;

  Replace CGA into EGA, i.e. we add super-individual<with|color|magenta|(definition?)>
  in every statement we defined before.Thus

  <math|i\<assign\><around*|(|\<pi\><rsub|0><around*|(|i|)>,\<pi\><rsub|1><around*|(|i|)>,\<ldots\>,\<pi\><rsub|Np><around*|(|i|)>|)>>,
  thus we have <math|><math|2<rsup|<around*|(|Np+1|)>\<cdot\>s>> statements
  now.

  \;

  Let <math|\<bbb-P\>=diag<rsub|2<rsup|n>><around*|(|P|)>=diag<rsub|2<rsup|n>\<cdot\>2<rsup|Np<around*|(|n-s|)>>><around*|(|P<rsub|2<rsup|Np\<cdot\>s>>|)>>
  with the most important rule: the better the super-individual's

  fitness(with respect to <math|f,not f\|<rsub|<around*|[|1,s|]>>>), the
  higher the position of the corresponding statement in the matrix.

  Now we consider the upgrade strategy(consider upgrade matrix <math|U>):

  <\math>
    For \<forall\>i\<in\><around*|[|1,2<rsup|<around*|(|Np+1|)>n>|]>,let
    b\<assign\>argmax<around*|{|f\|<rsub|<around*|[|1,s|]>><around*|(|\<pi\><rsub|k><around*|(|i|)>\|<rsub|<around*|[|1,s|]>><with|color|magenta|<around*|(|don<rprime|'>t
    understand|)>>|)>\|k\<in\><around*|[|1,Np|]>|}>.

    if f\|<rsub|<around*|[|1,s|]>><around*|(|\<pi\><rsub|0><around*|(|i|)>\|<rsub|<around*|[|1,s|]>><with|color|magenta|>|)>\<less\>f\|<rsub|<around*|[|1,s|]>><around*|(|b\|<rsub|<around*|[|1,s|]>><with|color|magenta|>|)>,then
    u<rsub|ij>=1 with stat j\<assign\><around*|(|<around*|(|b\|<rsub|<around*|[|1,s|]>>\<pi\><rsub|0<around*|[|s+1,n|]>>|)>,\<pi\><rsub|1><around*|(|i|)>,\<ldots\>,\<pi\><rsub|Np><around*|(|i|)>|)>,otherwise

    u<rsub|ii>=1.<around*|(|Thus there is exactly one entry in each row|)>
  </math>

  <\theorem>
    <math|For f is fully-additive separable,\<forall\>x,y\<in\>\<bbb-B\><rsup|n>,f\|<rsub|<around*|[|1,s|]>><around*|(|x\|<rsub|<around*|[|1,s|]>><with|color|magenta|>|)>\<less\>f\|<rsub|<around*|[|1,s|]>><around*|(|y\|<rsub|<around*|[|1,s|]>><with|color|magenta|>|)>\<Leftrightarrow\>f<around*|(|x|)>\<less\>f<around*|(|y|)>.>
  </theorem>

  with this theorem, we know if <math|i\<less\>j,then
  f<around*|(|\<pi\><rsub|0><around*|(|i|)>|)>\<geqslant\>f<around*|(|\<pi\><rsub|0><around*|(|j|)>|)>\<Leftrightarrow\>f<around*|(|\<pi\><rsub|0><around*|(|i|)>\|<rsub|<around*|[|1,s|]>>|)>\<geqslant\>f<around*|(|\<pi\><rsub|0><around*|(|j|)>\|<rsub|<around*|[|1,s|]>>|)>>.

  Thus by our starategy <math|u<rsub|ij>=0,i.e. U is a lower-triangular
  matrix.>

  Morever, Since <math|f<around*|(|\<pi\><rsub|0><around*|(|i|)>|)><with|color|magenta|>=max<around*|{|f<around*|(|b|)>\|b\<in\>\<bbb-B\><rsup|n>|}>\<Rightarrow\>u<rsub|ii>=1
  for i\<in\><around*|[|1,2<rsup|Np\<cdot\>n>|]>.>

  Since <math|U> is lower-triangular, we may write <math|U> in a manner that
  every block is of the size <math|2<rsup|Np\<cdot\>s>\<times\>2<rsup|Np\<cdot\>s>>.

  i.e.<with|color|magenta|(big matrix to write)>then
  <math|\<bbb-P\><rsup|+>=\<bbb-P\>U=diag<rsub|2<rsup|n>2<rsup|Np<around*|(|n-s|)>>><around*|(|P<rsub|2<rsup|Np\<cdot\>s>>|)>\<cdot\>U=><with|color|magenta|(big
  matrix to write)>

  Since <math|u<rsub|ii>=1 for i\<in\><around*|[|1,2<rsup|Np\<cdot\>n>|]>\<Rightarrow\>U<rsub|ii>\<cdot\>P<rsub|2<rsup|Np\<cdot\>s>>=I\<cdot\>P<rsub|2<rsup|Np\<cdot\>s>>=P<rsub|2<rsup|Np\<cdot\>s>>.>

  \;

  \;

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|font-base-size|9>
    <associate|page-medium|paper>
  </collection>
</initial>