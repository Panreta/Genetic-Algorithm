<TeXmacs|2.1.1>

<style|<tuple|article|std-latex>>

<\body>
  Define <math|f:\<bbb-R\><rsup|N>\<rightarrow\>\<bbb-R\>> and
  <math|<wide|x|\<bar\>>\<in\>\<bbb-R\><rsup|N>> ,which
  <math|<wide|x|\<bar\>>=<big|sum><rsup|N><rsub|k=1>a<rsub|k>*<wide|x|^><rsub|k>>,
  <math|<below|<above|<big|sum>|>|>>

  <math|<wide|x|^><rsub|k><around|(|k=1,2,\<ldots\>.,n|)>> is an orthogonal
  basis of <math|\<bbb-R\><rsup|N>>, <math|a<rsub|k>\<in\>\<bbb-R\><around|(|k=1,2,\<ldots\>,n|)>>.

  we want find <math|min<rsub|<wide|x|\<bar\>>\<in\>\<bbb-R\><rsup|N>>
  f<around|(|<wide|x|\<bar\>>|)>> and the
  <math|<wide|x|\<bar\>><rsup|\<circ\>>\<in\>\<bbb-R\><rsup|N><rsup|\<nosymbol\>>>,
  s.t

  <\equation*>
    f<around*|(|<wide|x|\<bar\>><rsup|\<circ\>><rsup|\<nosymbol\>>|)>=min<rsub|<wide|x|\<bar\>>\<in\>\<bbb-R\><rsup|N>>
    f<around|(|<wide|x|\<bar\>>|)>
  </equation*>

  take <math|f<around|(|<wide|x|\<bar\>>|)>\<assign\><around|\<\|\|\>|<wide|x|\<bar\>>-<wide|x|\<bar\>><rsup|\<circ\>>|\<\|\|\>>>
  as example, w.r.t <math|<around|\<\|\|\>|x|\<\|\|\>>> is the norm of
  <math|x\<in\>\<bbb-R\><rsup|N>>

  w.l.o,g <math|<wide|x|\<bar\>><rsup|\<circ\>>\<leftarrow\>0>

  so <math|f<around|(|<wide|x|\<bar\>>|)>\<assign\><around|\<\|\|\>|<wide|x|\<bar\>>-<wide|x|\<bar\>><rsup|\<circ\>>|\<\|\|\>>\<leftarrow\><big|sum><rsub|k=1><rsup|n><around|\<\|\|\>|a<rsub|k>*<wide|x|^><rsub|k>|\<\|\|\>>>

  to get the ans in trivial case,we consider the separability of
  <math|f<around|(|<wide|x|\<bar\>>|)>>.

  in this case <math|f<around|(|<wide|x|\<bar\>>|)>> is fully additive
  separable.

  thus we can optimize the<math|f<around|(|<wide|x|\<bar\>>|)>> by each
  apponent <math|<around|\<\|\|\>|a<rsub|k>*<wide|x|^><rsub|k>|\<\|\|\>><around|(|k=1,2,\<ldots\>,n|)>>

  and the problem is an n*1-dimension problem

  in Rudolph's argument we have an operator
  <math|G:\<bbb-R\><rsup|N>\<rightarrow\>\<bbb-R\><rsup|N>>,
  \ <math|<wide|x|\<bar\>><rsup|t+1>\<assign\>G<around|(|<wide|x|\<bar\>><rsup|t>|)>>
  s.t

  the elitist selection make strong claim that
  <math|G<around|(|<wide|x|\<bar\>><rsup|\<circ\>>|)>=<wide|x|\<bar\>><rsup|\<circ\>>>,
  i.e <math|<wide|x|\<bar\>><rsup|\<circ\>>> is a fixed-proof of <math|G>

  and for any initial <math|<wide|x|\<bar\>><rsup|0>\<neq\><wide|x|\<bar\>><rsup|\<circ\>>>

  <\equation*>
    f<around|(|G<around|(|<wide|x|\<bar\>><rsup|0>|)>|)>\<geqslant\>f<around|(|G<around|(|<wide|x|\<bar\>><rsup|1>|)>|)>\<geqslant\>\<cdots\>\<geqslant\>f<around|(|G<around|(|<wide|x|\<bar\>><rsup|\<circ\>>|)>|)>
  </equation*>

  By applying the G to each <math|<around|\<\|\|\>|a<rsub|k>*<wide|x|^><rsub|k>|\<\|\|\>>=f*<around|(|a<rsub|k>*<wide|x|^><rsub|k>|)>>
  to get <math|<wide|x|\<bar\>><rsup|\<circ\>><rsub|k>> ,which minimize the
  <math|kth> apponent

  finally combine the <math|<wide|x|\<bar\>><rsup|\<circ\>><rsub|k>> together
  :

  <\equation*>
    <big|sum><rsub|k=1><rsup|n><wide|x|\<bar\>><rsup|\<circ\>><rsub|k>
  </equation*>

  which is the <math|<wide|x|\<bar\>><rsup|\<circ\>>> we want to get.
</body>

<initial|<\collection>
</collection>>