<TeXmacs|2.1.1>

<style|<tuple|generic|british|number-europe>>

<\body>
  <doc-data|<doc-title|Review Convergence of Canonical Genetic
  Algorithm>|<doc-author|<author-data|<author-name|Tingyu
  Zhang>|<\author-affiliation>
    2023.10.16
  </author-affiliation>>>>

  <section|Introduction>

  The target is to use Canonical genetic algorithm(CGA) to tackle the static
  optimization problems

  of the type:

  <\equation>
    max<around*|{|f<around*|(|b|)>\<mid\>b\<in\>\<bbb-B\><rsup|l>|}>
  </equation>

  which <math|\<bbb-B\><rsup|l>\<assign\><around*|{|0,1|}><rsup|l>,and has
  the condition 0\<less\>f<around*|(|b|)>\<less\>\<infty\> for all
  b\<in\>\<bbb-B\><rsup|l> and f<around*|(|b|)>\<neq\>const.>

  In optimization theory an algorithm is said to converge to the global
  optimum if it <em|<em|generates a sequence of
  solutions<strong|<verbatim|<samp|>>>> <strong|<verbatim|>>>or function
  values in which the global optimum is a limit value. Especially,

  it is proved by means of homogeneous finite Markov chains that the CGA
  neverconverges to the global optimum, but modified versions do.Precisely,
  probabilistic convergence of the best solution within a population to the
  global optimum under elitist selection, which is the theorem the rest of
  the paper will prove.

  <section|Basic Tools>

  We will introduce CGA and finite Markov Chain as the background:

  <subsection|CGA>

  A genetic algorithm consists of an n-tuple of binary strings
  <math|b<rsub|i>> of length l, where the bits of each string are considered
  to be the genes of an individual chromosome and where the n-tuple of
  individual chromosomes is said to be a population.

  <\example>
    For a GA problem, suppose we have a genetic algorithm in which each
    chromosome is a binary string of length 5, and our population size is 3.
    A possible representation of the population could be:

    Chromosome 1: 10101\ 

    Chromosome 2: 11010\ 

    Chromosome 3: 00111

    The tuple consisting of these three chromosomes,
    <math|<around*|(|10101,11010,00111|)>>, represents our population.
    <math|b<rsub|i> represents a certain chromosome of
    population,l=5,n=3,i\<in\><around*|\<llbracket\>|1,n|\<rrbracket\>>>
  </example>

  Following the terminology of organic evolution the operations performed on
  the population are called mutation, crossover and selection (differential
  reproduction,\<#5DEE\>\<#5F02\>\<#5316\>\<#7E41\>\<#6B96\>). Each
  individual bi represents a feasible solution of problem (1) and its ob
  jective function value <math|f<around*|(|b<rsub|i>|)>> is said to be its
  fitness which is to be maximized.

  <\remark>
    Fitness function is a judgement criterion that is positive and increase
    more approach

    to the better solution. For example, <math|max
    g<around*|(|x|)>=-x<rsup|2>+4x,x\<in\><around*|[|1,5|]>,the corresponding
    fitness function>

    can be <math|f<around*|(|x|)>=g<around*|(|x|)>+100.> And <math|min
    g<around*|(|x|)>=x<rsup|2>,x\<in\><around*|[|-10,10|]>,><math|the
    corresponding fitness function can be>

    <math|f<around*|(|x|)>=<frac|1|x<rsup|2>+0.1>,where 0.1 is for avoiding
    the denominator to be 0.>
  </remark>

  The algorithm is sketched as follows:

  choose an initial population<next-line>determine the fitness of each
  individual<next-line>perform selection<next-line>repeat<next-line>perform
  crossover<next-line>perform mutation<next-line>determine the fitness of
  each individual<next-line>perform selection<next-line>until some stopping
  criterion applies<next-line>

  <with|color|#aaf|Mutation> operates independently on each individual by
  probabilistically perturbing each bit string. The event that the j-th bit
  of the i-th individual is flipped is stochastically independent and occurs
  with probability <math|p<rsub|m>\<in\><around*|(|0,1|)>>. For example, the
  probability that string <math|b=00000> transitions to string
  <math|b<rprime|'> = 10110> by mutation is
  <math|p<rsub|m><rsup|k><around*|(|1-p<rsub|m>|)><rsup|l-k>> with <math|k =
  3> and <math|l = 5>. Clearly, <math|k> is just the Hamming distance
  <math|H(b, b<rprime|'>)> between strings <math|b> and <math|b<rprime|'>>.
  Therefore the probability that string <math|b<rsub|i>> resembles string
  <math|b<rsub|i><rprime|'>> \ after mutation can be aggregated to

  <\equation>
    P<around*|{|b<rsub|i>\<rightarrow\>b<rsub|i><rprime|'>|}>=p<rsub|m><rsup|H<around*|(|b,
    b<rprime|'>|)>><around*|(|1-p<rsub|m>|)><rsup|l-H<around*|(|b,
    b<rprime|'>|)>>\<gtr\>0
  </equation>

  <with|color|#aaf|Crossover> operator is applied with some probability
  <math|p<rsub|c>\<in\> [0, 1]> in order to construct a bit string from at
  least two other bit strings chosen at random. Although many crossover
  operators have been proposed a description can be omitted because the
  choice of a speciac crossover operator does not effect the subsequent
  analysis.(Check out)

  For <with|color|#aaf|Proportional selection>, the population of the next
  generation is determined by n independent random experiments. The
  probability that individual bi is selected from tuple
  <math|<around*|(|b<rsub|1>,\<ldots\>,b<rsub|n>|)>> to be a member of the
  next generation at each experiment is given by:

  <\equation>
    P<around*|{|b<rsub|i> is selected|}>=<frac|f<around*|(|b<rsub|i>|)>|<above|<below|<big|sum>|j=1>|n>f<around*|(|b<rsub|j>|)>>\<gtr\>0
  </equation>

  <subsection|Finite Markov Chains>

  A finite Markov chain describes a probabilistic trajectory over a finite
  state space <math|S> of cardinality <math|<around*|\||S|\|> = n>, where the
  states may be numbered from 1 to n.\ 

  The probability <math|p<rsub|ij>(t)> of transitioning from state
  <math|i\<in\> S to state j\<in\> S >at step t is called the transition
  probability from <math|i to j at step t>.\ 

  If the transition probabilities are independent from t, i.e.,
  <math|p<rsub|ij>(t) = p<rsub|ij>(s)> <math|for all i,j\<in\> S and for all
  s;> <math|t\<in\>\<bbb-N\>>, the Markov chain is said to be homogeneous.

  <\remark>
    Homogeneity is a really crucial property, since only homogeneous Markov
    Chain

    can determain every step by transitioning matrix and initial state in the
    formula <math|p<rsup|t>=p<rsup|0>P<rsup|t>>.
  </remark>

  <\definition>
    A square matrix <math|A\<in\>\<cal-M\><rsub|n*><around*|(|K|)> >is said
    to be\ 

    (a) nonnegative (<math|A\<succcurlyeq\>0>), if
    <math|a<rsub|ij>\<geqslant\> 0 for all i, j\<in\>
    <around*|{|1,\<ldots\>,n|}>>

    (b) positive (<math|A\<succ\>0>), if <math|a<rsub|ij>\<gtr\> 0 for all i,
    j\<in\> <around*|{|1,\<ldots\>,n|}>>

    A nonnegative matrix <math|A\<in\>\<cal-M\><rsub|n*><around*|(|K|)>> is
    said to be

    (c) primitive, if there exists a <math|k\<in\>\<bbb-N\>> such that
    <math|A<rsub|><rsup|k> >is positive,

    (d) reducible, if A can be brought into the form (with square matrices C
    and T)<matrix|<tformat|<table|<row|<cell|C
    <strong|<em|0<strong|>>>>>|<row|<cell|R T>>>>> by applying the same
    permutations to rows and columns,

    (e) irreducible, if it is not reducible,

    (f ) stochastic, if <math|<big|sum><rsub|j=1><rsup|n>a<rsub|ij>=1
    <around*|(|summation of the row of matrix|)>
    <prefix-for-all>i\<in\><around*|{|1,\<ldots\>,n|}>>

    A stochastic matrix <math|A\<in\>\<cal-M\><rsub|n*><around*|(|K|)>> is
    said to be(g) stable, if it has identical rows,

    (h) column al lowable, if it has at least one positive entry in each
    column.
  </definition>

  Quite a lot definitions are made, here comes what they can do:

  \;

  <\lemma>
    Let C\<#FF0C\>M and S be stochastic matrices, where M is positive and S
    is column allowable. Then the product CMS is positive.
  </lemma>

  By the lamma 5, 2 theorem can be proved:

  <\theorem>
    Let P be a primitive stochastic matrix. Then <math|P<rsup|k>> converges
    as <math|k\<rightarrow\>\<infty\>> to a positive stable stochastic matrix
    <math|P<rsup|\<infty\>> = 1<rprime|'>p<rsup|\<infty\>>>, where
    <math|p<rsup|\<infty\>>=p<rsup|0 ><below|lim
    P<rsup|k>|k\<rightarrow\>\<infty\>>=p<rsup|0>P<rsup|\<infty\>>> has
    nonzero entries andis unique regardless of the initial distribution.

    proof:

    1. Positive stable stochastic get directly from definition.

    2.<math|> By induction, all element in <math|P<rsup|k>> is smaller than
    1. And by contradiction all eigen-valun of <math|P<rsup|k>>

    must be smaller than 1. Since by <math|<around*|\||I-P|\|>=0,P
    \ \ ><math|has 1 as eigen-value,>hence <math|P<rsup|k>>has 1 as
    eigen-value. Hence convergence exist and not to 0.
  </theorem>

  <\theorem>
    Let P be a reducible stochastic matrix, where
    <math|C\<in\>\<cal-M\><rsub|m><around*|(|K|)>> is a primitive stochastic
    matrix and <math|R,T\<neq\>0>. Then

    <\equation>
      P<rsup|\<infty\>>=<below|lim P<rsup|k>|k\<rightarrow\>\<infty\>>=<below|lim|k\<rightarrow\>\<infty\>><matrix|<tformat|<table|<row|<cell|C<rsup|k><space|5em>
      0>>|<row|<cell|<big|sum><rsup|k-1><rsub|i=0>T<rsup|i>RC<rsup|k-i-1>
      T<rsup|k>>>>>>=<matrix|<tformat|<table|<row|<cell|C<rsup|k>
      0>>|<row|<cell|R<rsub|\<infty\>> 0>>>>>
    </equation>
  </theorem>

  is a stable stochastic matrix with <math|P<rsup|\<infty\>> =
  1<rprime|'>p<rsup|\<infty\>>>, where <math|p<rsup|\<infty\>>=p<rsup|0>P<rsup|\<infty\>>>
  is unique regardless of the initial distribution, and
  <math|p<rsup|\<infty\>> satisfies: p<rsub|i><rsup|\<infty\>>\<gtr\> 0 for
  1\<leqslant\>i\<leqslant\>m and p<rsub|i><rsup|\<infty\>>= 0 for
  m\<less\>i\<leqslant\>n>.

  <section|Markov Chain Analysis of Genetic Algorithms>

  Determine the state space <math|S=><math|\<bbb-B\><rsup|N>=\<bbb-B\><rsup|l\<ast\>n*>,where
  l is the nunber of genes<around*|(|or length of chromosome|)>,and n denotes
  the population size,>

  <math|Each element of the state space can be regarded >as an integer number
  in binary representation.

  (<math|n=<big|sum><rsup|m><rsub|k=0>2<rsup|k>a<rsub|k>>)

  The projection <math|\<pi\><rsub|k><around*|(|i|)>> picks up the k-th bit
  segment of length l from the binary representation of state i and is used
  to identify single individuals from the population.

  <\example>
    For <math|b<rsub|i>=1111010110,><math|choose
    l=3,\<pi\><rsub|2><around*|(|i|)>>=101.
  </example>

  The probabilistic changes of the genes within the population caused by the
  genetic operators are captured by the transition matrix P, which can be
  decomposed in a natural way into a product of stochastic matrices <math|P =
  C \ M \ S>, where C, M and S describe the intermediate transitions caused
  by crossover, mutation and selection, respectively.

  <\theorem>
    The transition matrix of the CGA with mutation probability
    <math|p<rsub|m>\<in\> <around*|(|0,1|)>>, crossover probability
    <math|p<rsub|c>\<in\> <around*|[|0,1|]>> and proportional selection is
    primitive.
  </theorem>

  proved by discussing the structure of C,G,A and lemma 1.

  \;

  The result can be used to form the uniqueness limit state

  <\corollary>
    The CGA with parameter ranges as in Theorem 3 is an ergodic Markov chain,
    i.e., there exists an unique limit distribution for the states of the
    chain with nonzero probability to be in any state at any time regardless
    of the initial distribution.
  </corollary>

  proved by Theorom 1 and Theorom 3.

  <\remark>
    Ergodic Markov has another definition: the markov chain which is
    aperiodic, irreducible and finite recurrence.
  </remark>

  From the result, we can apparently see that for such Markov chain the
  initial distribution <math|p<rsub|><rsup|0> >doesn't affect the limit
  distribution at all !

  The ergodicity property has consequences for the convergence behavior of
  the CGA. To avoid confusion, a precise de\Lnition of the term convergence
  of a GA is required:

  <\definition>
    Let <math|Z<rsub|t>=max<around*|{|f<around*|(|\<pi\><rsub|k><rsup|<around*|(|t|)>><around*|(|i|)>\<mid\>k=1,\<ldots\>,n|)>|}>>
    be a sequence of random variables representing the best fitness within a
    population represented by state i at step t. A genetic algorithm
    converges to the global optimum, if and only if

    <\equation>
      <below|lim|t\<rightarrow\>\<infty\>>P<around*|{|Z<rsub|t>=f<rsup|\<ast\>>|}>=1,
    </equation>
  </definition>

  where<math|f<rsup|\<ast\>>=max<around*|{|f<around*|(|b|)>\<mid\>b\<in\>\<bbb-B\><rsup|l>|}>
  >is is the global optimum of problem (1)<label|(1)>.

  By this definition:

  <\theorem>
    The CGA with parameter ranges as in Theorem 3 does not converge to the
    global optimum.

    <\proof>
      set <math|max<around*|{|f<around*|(|\<pi\><rsub|k><rsup|<around*|(|t|)>><around*|(|i|)>\<mid\>k=1,\<ldots\>,n|)>|}>\<less\>f<rsup|\<ast\>>\<#FF0C\>p<rsup|t><rsub|i>=<around*|{|probability
      GA in state i at step t|}>>;

      <wide*|<math|P<around*|{|Z<rsub|t>\<neq\>f<rsup|\<ast\>>|}>\<geqslant\>p<rsup|t><rsub|i>>|\<wide-underbrace\>><math|><math|\<Leftrightarrow\>P<around*|{|Z<rsub|t>=f<rsup|\<ast\>>|}>\<leqslant\>1-p<rsup|t><rsub|i>>.
      Hence <math|<below|lim|t\<rightarrow\>\<infty\>>P<around*|{|Z<rsub|t>=f<rsup|\<ast\>>|}>\<leqslant\>1-p<rsup|t><rsub|i>\<less\>1.>

      see remark
    </proof>
  </theorem>

  <\remark>
    Does \P<math|P<around*|{|Z<rsub|t>\<neq\>f<rsup|\<ast\>>|}>\<geqslant\>><math|p<rsup|t><rsub|i>>
    \Q stand for the optimization may hard to get?
  </remark>

  Can CGA be changed a little to fulfill the convergence? Actually it can be
  done by the theorem of

  ergodic Markov chain:

  <\theorem>
    In an ergodic Markov chain the expected transition time between initial
    state i and any other state j is finite regardless of the states i and j,
    i.e. <math|E(T<rsub|i\<rightarrow\>j>)\<less\>\<infty\>.>
  </theorem>

  <subsection|Little Change to make convergence>

  To make the result in conformity with Definition 2:\ 

  Change: Enlarging the population by adding <with|color|#aaf|super
  individual> which does not take part in the evolutionary process.

  Cardinality: From <math|2<rsup|n\<ast\>l>\<rightarrow\>2<rsup|<around*|(|n+1|)>\<ast\>l>>\<#FF0C\>give
  <math|l> bits for super indivitual leftmost and is accessible by

  <math|\<pi\><rsub|0><around*|(|i|)> at state i.>

  Require :better the super individual's fitness the higher the position of
  the corresponding state in the matrix.

  The extended transition matrices are written as diagonal matrices with
  <math|2<rsup|l> square matrices C,M,S<space|1em>>

  of size <math|2<rsup|nl>\<times\>2<rsup|nl>>.

  The copy operation is represented by an upgrade matrix U which upgrades an
  intermediate state containing an individual better than its super
  individual to a state where the super individual equals the better
  individual.

  Let <math|b=argmax<around*|{|f<around*|(|\<pi\><rsub|k><rsup|><around*|(|i|)>|)>\<mid\>k=1,\<ldots\>,n|}>\<in\>\<bbb-B\><rsup|l>:=>{<math|best
  individual of the population at any state i >(exclude super
  indivitual)}.Then <math|u<rsub|ij> = 1 if f (\<pi\><rsub|0><around*|(|i|)>)
  \<less\> f (b) with j \ <above|=|def> (b,\<pi\><rsub|1><around*|(|i|)>,
  \<pi\><rsub|2><around*|(|i|)>, \<ldots\>,\<pi\><rsub|n><around*|(|i|)>)\<less\>S>,
  otherwise <math|u<rsub|ii>=1>.

  Thus, there is exactly one entry in each row, which does not hold for the
  columns because for every state <math|j\<in\>s >with
  <math|f<around*|(|\<pi\><rsub|0><around*|(|i|)>|)>\<less\>max<around*|{|f<around*|(|\<pi\><rsub|k><rsup|><around*|(|i|)>|)>\<mid\>k=1,\<ldots\>,n|}>
  >one gets <math|u<rsub|ij> = 0> for all <math|i\<in\>S.>

  \;

  \;

  <\theorem>
    The canonical GA as in Theorem 3 maintaining the best solution found over
    time after selection converges to the global optimum.
  </theorem>

  \;

  \;

  <\theorem>
    The canonical GA as in Theorem 3 maintaining the best solution found over
    time before selection converges globally optimal.
  </theorem>

  <\note>
    Theorems 6 and 7 do not cover the case of elitist selection.<next-line>
  </note>

  <section|Discussion of results with respect to the schema theorem>

  A schema(\<#6A21\>\<#5F0F\>) S describes a specific type of subsets of the
  feasible region <math|\<bbb-B\><rsup|l>> of problem (1) which is again
  assumed to have only one global optimal point
  <math|b<rsup|\<ast\>>\<in\>\<bbb-B\><rsup|l>.>

  Usually, these subsets are represented by a string of length l over the
  alphabet <math|<around*|{|0,1,#|}>.>

  The utility of schema S restricted to multiset X is defined as the average
  objective function value over all elements contained in <math|S\<cap\>X>:

  <\equation>
    u<around*|(|S,X|)>\<assign\><frac|1|<around*|\||S\<cap\>X|\|>><below|<big|sum>|b\<in\>S\<cap\>X>f<around*|(|b|)>
  </equation>

  Then schema theorem is

  <\equation>
    E<around*|[|<around*|\||S\<cap\>X|\|>|]>\<geqslant\><around*|\||S\<cap\>X<rsub|t>|\|><frac|u<around*|(|S,X<rsub|t>|)>|u<around*|(|\<cal-S\>,X<rsub|t>|)>><around*|(|1-c<around*|(|S,X<rsub|t>|)>|)><around*|(|1-m<around*|(|S,X<rsub|t>|)>|)>
  </equation>

  almost surely, where <math|(X<rsub|t>)> is the sequence of populations
  generated by the CGA and c(.) and m(.) are bounds for the probability that
  an element of subset S is modfied by crossover and mutation respectively,
  so that the resulting element is not contained in subset S.

  <\remark>
    (7) state that the number of individuals in population <math|X<rsub|t+1>
    >with above average fitness is expected to be no smaller than in
    population <math|X<rsub|t> >,if the probabilities c(.) and m(.) are
    sufficiently small. But not fairly demonstrate the convergence to the
    global optimum.

    Generally, the specific content of the schema theorem is: under the
    action of genetic operators selection, crossover, and mutation, schemas
    with low order, short defining length, and average fitness higher than
    the population average fitness will grow exponentially in the
    offspring.(Without proof)
  </remark>

  Technically, it is neccessary and sufficient that
  <math|<below|lim|t\<rightarrow\>\<infty\>>E<around*|[|I<rsub|t>|]>=1> which
  implies <math|<below|lim|t\<rightarrow\>\<infty\>>E<around*|[|<around*|{|b<rsup|\<ast\>>|}><big|cap>X<rsub|t>|]>\<geqslant\>1,>

  where

  <\equation>
    I<rsub|t>\<assign\>h<around*|(|b<rsup|\<ast\>>,X<rsub|t>|)>\<assign\>
    <around*|{|<tabular|<tformat|<table|<row|<cell|1, if
    b<rsup|\<ast\>>\<in\><around*|{|\<pi\><rsub|1><around*|(|X<rsub|t>|)>,\<ldots\>,\<pi\><rsub|n><around*|(|X<rsub|t>|)>|}>>>|<row|<cell|0,
    otherwise>>>>>|\<nobracket\>>
  </equation>

  means when <math|t\<gtr\>N> for certain
  <math|N\<in\>\<bbb-N\>,><math|b<rsup|\<ast\>> >will be in one of the
  states.

  In particular:

  <\lemma>
    \;

    <math|<around*|(|a|)> ><math|<below|lim|t\<rightarrow\>\<infty\>>E<around*|[|I<rsub|t>|]>=1\<Leftrightarrow\>><math|<below|lim|t\<rightarrow\>\<infty\>>P<around*|{|Z<rsub|t>=f<rsup|\<ast\>>|}>=1>

    <math|<around*|(|b|)> ><math|<below|lim|t\<rightarrow\>\<infty\>>E<around*|[|I<rsub|t>|]>=1\<Rightarrow\><below|lim|t\<rightarrow\>\<infty\>>E<around*|[|<around*|{|b<rsup|\<ast\>>|}><big|cap>X<rsub|t>|]>\<geqslant\>1>
  </lemma>

  Proof:\ 

  <math|<around*|(|a|)>> Take <math|I<rsub|t>=1<rsub|<around*|{|\<pi\><rsub|1><around*|(|X<rsub|t>|)>,\<ldots\>,\<pi\><rsub|n><around*|(|X<rsub|t>|)>|}>><around*|(|b<rsup|\<ast\>>|)>,and
  b<rsup|\<ast\>>\<in\><around*|{|\<pi\><rsub|1><around*|(|X<rsub|t>|)>,\<ldots\>,\<pi\><rsub|n><around*|(|X<rsub|t>|)>|}>\<Leftrightarrow\><around*|{|I<rsub|t>=1|}>\<Leftrightarrow\><around*|{|Z<rsub|t>=f<rsup|*\<ast\>>|}>>

  <math|<around*|(|b|)>> <math|g<around*|(|b<rsup|\<ast\>>,X<rsub|t>|)>\<assign\>count
  the number of optimal solution b<rsup|\<ast\>> in population X<rsub|t.>>
  Compare to <math|h<around*|(|b<rsup|\<ast\>>,X<rsub|t>|)>> which only count
  once <math|\<Rightarrow\>> <math|g<around*|(|b<rsup|\<ast\>>,X<rsub|t>|)>\<geqslant\>h<around*|(|b<rsup|\<ast\>>,X<rsub|t>|)>\<Rightarrow\>>

  <\equation>
    <below|lim|t\<rightarrow\>\<infty\>>E<around*|[|<around*|{|b<rsup|\<ast\>>|}><big|cap>X<rsub|t>|]>=<big|sum><rsub|i=1><rsup|<around*|\||S|\|>>g<around*|(|b<rsup|\<ast\>>,X<rsub|t>|)>\<cdot\>p<rsub|i><rsup|\<infty\>>\<geqslant\><big|sum><rsub|i=1><rsup|<around*|\||S|\|>>h<around*|(|b<rsup|\<ast\>>,X<rsub|t>|)>\<cdot\>p<rsub|i><rsup|\<infty\>>=<below|lim|t\<rightarrow\>\<infty\>>E<around*|[|I<rsub|t>|]>=1
  </equation>

  \;

  Converse for <math|<around*|(|b|)>> is not true:

  \;

  <\remark>
    For a CGA there is a minimal probability bounded from zero to lose the
    global optimum solution at each generation. It follows from the
    Borel-Cantelli Lemma that this event will occur with probability one.\ 

    Borel-Cantelli Lemma: <math|<around*|{|E<rsub|n>|}> belongs to a certain
    probability space,if <big|sum><rsub|n=1><rsup|\<infty\>>\<bbb-P\><around*|(|E<rsub|n>|)>\<less\>\<infty\>\<Rightarrow\>\<bbb-P\><around*|(|<below|lim|n\<rightarrow\>\<infty\>>sup<around*|(|E<rsub|n>|)>|)>=0>

    Intuition : For converge series like <math|<around*|{|a<rsub|n>|}>>,
    <math|<big|sum><rsub|n=N><rsup|\<infty\>>a<rsub|n>\<rightarrow\>0> as
    <math|N<rsub|>\<rightarrow\>\<infty\>>.
  </remark>

  conclude,the global solution will be lost and found infinitely often
  <math|\<rightarrow\>>the sequence <math|<around*|(|<around*|\||<around*|{|b<rsup|\<ast\>><big|cap>X<rsub|t>|}>|\|>|)>>
  is an irreducible markov chain on the state space
  <math|<around*|{|0,\<ldots\>,n|}>> <math|\<rightarrow\>> does not converge
  to the best solution although the expectation does

  <subsection|Analysis the bounds for the probabilities of losing and
  generating the optimal solution>

  Assume that <math|k\<geqslant\>1> optimal solutions are contained in
  population Xt at generation t:

  The crossover operator may destroy or assemble some optimal solutions, so
  that there are k optimal solutions within the population after crossover.

  <subsubsection|The Optimal Solution Gets Lost>

  <math|1.k\<geqslant\>1.>\ 

  The probability that at least one bit of an optimal solution is ipped is
  given by:

  <math|p<rsub|F>\<assign\>1-<below|<wide*|<around*|(|1-p<rsub|m>|)><rsup|l>|\<wide-underbrace\>>|all
  l-bit do not change>\<gtr\>0,>the probability that all k optimal solutions
  are destroyed becomes:

  <math|p<rsub|F><rsup|k><around*|(|1-p<rsub|F>|)><rsup|n-k>\<gtr\>0,bounded
  below:\<gamma\><rsub|1>\<assign\>min<around*|{|<below|<wide*|p<rsub|F><rsup|n>|\<wide-underbrace\>>|p<rsub|F>\<less\>1-p<rsub|F>>,<below|<wide*|<around*|(|1-p<rsub|F><rsup|>|)><rsup|n-1>|\<wide-underbrace\>>|1-p<rsub|F>\<less\>p<rsub|F>>|}>\<gtr\>0>

  \;

  <math|2.k=0.<around*|(|all optimal solutions have been destroyed by
  crossover|)>> \ 

  The probability that all bits within the population remain unaltered:

  <\math>
    <around*|(|1-p<rsub|m>|)><rsup|n\<cdot\>l>=<around*|(|1-p<rsub|F><rsup|>|)><rsup|n>\<assign\>\<gamma\><rsub|2>\<gtr\>0.

    the probability that the optimal solution is lost after crossover and
    mutation is at least\<#FF1A\>

    p<rsub|L>=min<around*|(|\<gamma\><rsub|1>,\<gamma\><rsub|2>|)>=min<around*|{|p<rsub|F><rsup|n>,<around*|(|1-p<rsub|F><rsup|>|)><rsup|n-1>,<around*|(|1-p<rsub|F><rsup|>|)><rsup|n>|}>=min<around*|{|p<rsub|F><rsup|n>,<around*|(|1-p<rsub|F><rsup|>|)><rsup|n>|}>\<gtr\>0<around*|(|all
    n destoyed, at least one not,all not|)>
  </math>

  <subsubsection|The Optimal Solution Genrating>

  It remains to derive the bound for the probability to generate an optimal
  solution:

  The probability that mutation generates the optimal solution
  <math|b<rsup|\<ast\>><rsup|**>> from individual <math|b<rsub|i>:>

  <math|p<rsub|B<rsub|i>>\<assign\>p<rsub|m><rsup|H<around*|(|b<rsub|i>,b<rsup|\<ast\>>|)>><around*|(|1-p<rsub|m>|)><rsup|l-H<around*|(|b<rsub|i>,b<rsup|\<ast\>>|)>>\<gtr\>0;>
  Bounded below by:<math|p<rsub|B>\<assign\>min<around*|{|p<rsub|B<rsub|i>>\<mid\>i\<in\><around*|\<llbracket\>|1,n|\<rrbracket\>>|}>\<gtr\>0.>

  The probability that this event occurs at least once
  is:<math|p<rsub|G>\<assign\>1-<around*|(|1-p<rsub|B>|)><rsup|n>\<gtr\>0.>

  \;

  Next, consider the selection operator:

  Assume that only one optimal solution has been generated by mutation with
  probability <math|p<rsub|G>.>

  The probability to select the optimal solution is given
  by:<space|1em><math|p<rsub|b<rsup|\<ast\>>>\<assign\><frac|f<around*|(|b<rsup|\<ast\>>|)>|<big|sum><rsub|j=1><rsup|n>f<around*|(|b<rsub|j>|)>>\<gtr\>0>,

  The probability that this event occurs at least once becomes:
  <math|p<rsub|S>\<assign\>1-<around*|(|1-p<rsub|b<rsup|\<ast\>>><rsup|>|)><rsup|n>\<gtr\>0.>

  The probability that a global solution is generated by mutation and that it
  survives the selection procedure can be
  bounded:<math|p<rsub|G>\<cdot\>p<rsub|S>\<gtr\>0.>

  <math|>

  \;

  \;

  \;

  \;

  \;

  <image|file:///C:/Users/Pluviophile/Documents/Tencent
  Files/2170139052/FileRecv/MobileFile/note.jpg|700|345||>

  \ 

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
    <associate|(1)|<tuple|5|4>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|4.1.2|7>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|2.1|1>>
    <associate|auto-4|<tuple|2.2|2>>
    <associate|auto-5|<tuple|3|3>>
    <associate|auto-6|<tuple|3.1|5>>
    <associate|auto-7|<tuple|4|5>>
    <associate|auto-8|<tuple|4.1|7>>
    <associate|auto-9|<tuple|4.1.1|7>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Basic
      Tools> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>CGA
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Finite Markov Chains
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Markov
      Chain Analysis of Genetic Algorithms>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Little Change to make
      convergence <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Discussion
      of results with respect to the schema theorem>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc>Analysis the bounds for the
      probabilities of losing and generating the optimal solution
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|2tab>|4.1.1<space|2spc>The Optimal Solution Gets
      Lost <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|2tab>|4.1.2<space|2spc>The Optimal Solution
      Genrating <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>
    </associate>
  </collection>
</auxiliary>