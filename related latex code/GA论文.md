\documentclass[12pt,letter]{amsart}
\usepackage[
    top=2.5cm, bottom=2.5cm, inner=2.5cm, outer=2.5cm,
    marginparwidth=2cm %necessary to avoid breaking fixme notes.
    ]{geometry}

\usepackage{amssymb,latexsym, amsmath, amsxtra, mathrsfs, bm}

\usepackage[dvips]{graphics}
\usepackage{xypic,xcolor}
\usepackage{subcaption}

\usepackage{tikz}
\usetikzlibrary{shapes.geometric} % This library is for the ellipse shape
\usepackage{amsmath, amssymb, amsthm}

% Define theorem environments
\newtheorem{theorem}{Theorem}
\newtheorem{definition}{Definition}

\usepackage{verbatim}
\usepackage[abs]{overpic}
\usepackage{hyperref}
\usepackage{mathtools}
\usepackage{tikz}
\usetikzlibrary{arrows.meta, bending, positioning}
\usepackage[colorinlistoftodos, textsize=small]{todonotes}


%\usepackage{refcheck}

%\usepackage[notref,notcite]{showkeys}
%\renewcommand*\showkeyslabelformat[1]{%
%  \fbox{\parbox[t]{\marginparwidth}{\raggedright\path{#1}}}}

\DeclareMathAlphabet{\mathbbold}{U}{bbold}{m}{n}



\allowdisplaybreaks[3]


% selbstdefinierte theoremumgebungen
\theoremstyle{plain}
        % \newtheorem{theorem}{Theorem}[section]
        \newtheorem*{theorem*}{Theorem}
        \newtheorem*{conj*}{Conjecture}
        \newtheorem{lemma}[theorem]{Lemma}
        \newtheorem{prop}[theorem]{Proposition}
        \newtheorem{cor}[theorem]{Corollary}
%         \newtheorem{prob}[theorem]{Problem}
        \newtheorem{prob}{Problem}
\theoremstyle{definition}
        % \newtheorem{definition}[theorem]{Definition}
        \newtheorem{rem}[theorem]{Remark}
         \newtheorem{rems}[theorem]{Remarks}
         \newtheorem{ex}[theorem]{Example}
         \newtheorem*{assumptions}{The Assumptions}

\theoremstyle{remark}
        \newtheorem*{remark}{Remark}
        \newtheorem*{remarks}{Remarks}
        \newtheorem*{notation}{Notation}
        \newtheorem{question}{Question}
        \newtheorem*{acknowledgments}{Acknowledgments}
        \newtheorem*{example}{Example}
        \newtheorem*{claim}{Claim}
        \newtheorem*{claim1}{Claim 1}
        \newtheorem*{claim2}{Claim 2}
        \newtheorem*{claim3}{Claim 3}
        \newtheorem*{case}{Case}
        \newtheorem*{case1}{Case 1}
        \newtheorem*{case2}{Case 2}


\numberwithin{equation}{section}
\numberwithin{theorem}{section}
\numberwithin{table}{section}
\numberwithin{figure}{section}


% new defined terms in italics
\providecommand{\defn}[1]{\emph{#1}}

% counter to break up numbered list
\newcounter{mylistnum}

% file with general definitions
%\include{definitions}
% operators
\newcommand{\dist}{\operatorname{dist}}
\newcommand{\Hdist}{\operatorname{Hdist}}
\newcommand{\length}{\operatorname{length}}
\newcommand{\const}{\operatorname{const}}
\newcommand{\var}  {\operatorname{var}}
\newcommand{\diam}  {\operatorname{diam}}
\newcommand{\area}  {\operatorname{area}}
\newcommand{\clos}  {\operatorname{clos}}
\newcommand{\inte}  {\operatorname{inte}}
\newcommand{\inter}  {\operatorname{int}}
\newcommand{\capa} {\operatorname{cap}}
\newcommand{\grad} {\operatorname{grad}}
\newcommand{\Div} {\operatorname{div}}
\newcommand{\id} {\operatorname{id}}
\newcommand{\acts}{\curvearrowright}
\newcommand{\RE} {\operatorname{Re}}
\newcommand{\card} {\operatorname{card}}
\newcommand{\supp}{\operatorname{supp}}
%

% sets
\newcommand{\ve}{\varepsilon}
\newcommand{\R}{\mathbb{R}}
\newcommand{\B}{\mathbb{B}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\Pillow}{\mathbb{P}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\Z}{\mathbb{Z}}
%\newcommand{\T}{\mathbb{T}}      % Torus
\newcommand{\Halb}{\mathbb{H}}
\newcommand{\Ho}{\mathbb{H}^+}
\newcommand{\Hu}{\mathbb{H}^-}
\newcommand{\Hob}{\clos{\mathbb{H}}^+}
\newcommand{\Om}{\Omega}
\newcommand{\Hub}{\clos{\mathbb{H}}^-}
\newcommand{\CDach}{\widehat{\mathbb{C}}}
\newcommand{\RDach}{\widehat{\mathbb{R}}}
\newcommand{\D}{\mathbb{D}}
\newcommand{\Dbar}{\overline{\mathbb{D}}}
\renewcommand{\H}{\mathbb{H}}
%
%
% commands
\providecommand{\abs}[1]{\lvert#1\rvert}
% \providecommand{\Abs}[1]{\left|#1\right|}
\providecommand{\Absbig}[1]{\bigl|#1\bigr|}
\providecommand{\Absbigg}[1]{\biggl|#1\biggr|}
\providecommand{\AbsBig}[1]{\Bigl|#1\Bigr|}
\providecommand{\AbsBigg}[1]{\Biggl|#1\Biggr|}
\providecommand{\norm}[1]{\|#1\|}
% \providecommand{\Norm}[1]{\left\|#1\right\|}
\providecommand{\Normbig}[1]{\bigl\|#1\bigr\|}
\providecommand{\Normbigg}[1]{\biggl\|#1\biggr\|}
\providecommand{\NormBig}[1]{\Bigl\|#1\Bigr\|}
\providecommand{\NormBigg}[1]{\Biggl\|#1\Biggr\|}
\renewcommand{\:}{\colon}

\def\({\left(}
\def\({\right)}
\def\[{\left[}
\def\]{\right]}

\def \mm #1#2#3#4{\begin{pmatrix} #1 & #2 \cr #3 & #4 \end{pmatrix}}

\newcommand{\ontop}[2]{\genfrac{}{}{0pt}{}{#1}{#2}}

% definitions specific to this paper

% the 2-sphere
%\newcommand{\Sp}{S^2}


% colors
\renewcommand{\b}{\mathfrak{b}}
\newcommand{\w}{\mathfrak{w}}
\renewcommand{\c}{\mathfrak{c}}


% imaginary unit i
% \newcommand{\I}{\mathbf{i}}
%\newcommand{\I}{\mathbf{i}\!\>}


% critical and postcritical set
\newcommand{\crit}{\operatorname{crit}}
\newcommand{\post}{\operatorname{post}}

% Lipschitz constant
\newcommand{\LIP}{\operatorname{LIP}}

% lower pointwise Lipschitz constant
\newcommand{\lip}{\operatorname{lip}}

% meshsize
\newcommand{\mesh}{\operatorname{mesh}}

% the curve dividing S^2 into X_1 and X_2
\newcommand{\CC}{\mathcal{C}}

% the fractal sphere generated by f
\newcommand{\Sf}{\mathcal{S}}
 \newcommand{\DD}{\mathbf{D}}

% the collection of pairs of white and black tiles
\newcommand{\PP}{\mathbf{P}}

% set of cylinders
\newcommand{\X} {\mathbf{X}}

% set of edges
\newcommand{\E} {\mathbf{E}}

% set of vertices
\newcommand{\V} {\mathbf{V}}

% set of flowers
\newcommand{\W} {\mathbf{W}}

% metrical properties with respect to the n-tiles

\newcommand{\Width}{\operatorname{Width}}

% set of continuous functions

\newcommand{\CCC}{C}

% set of Borel probability measures

\newcommand{\PPP}{\mathcal{P}}

% set of invariant Borel probability measures

\newcommand{\MMM}{\mathcal{M}}

% Borel \sigma-algebra

\newcommand{\BB}{\mathcal{B}}

% set of H\"{o}lder continuous functons
\newcommand{\Holder}[1] {\CCC^{0,#1}}

% H\"{o}lder seminorm
\newcommand{\Hseminorm}[2] {\Abs{#2}_{#1}}

% H\"{o}lder seminorm
\newcommand{\Hseminormbig}[2] {\Absbig{#2}_{#1}}

% H\"{o}lder seminorm
\newcommand{\Hseminormbigg}[2] {\Absbigg{#2}_{#1}}

% H\"{o}lder seminorm
\newcommand{\HseminormBig}[2] {\AbsBig{#2}_{#1}}

% H\"{o}lder seminorm
\newcommand{\HseminormBigg}[2] {\AbsBigg{#2}_{#1}}


% H\"{o}lder norm
\newcommand{\Hnorm}[3] {\Norm{#2}_{\Holder{#1}{#3}}}

% H\"{o}lder norm
\newcommand{\Hnormbig}[3] {\Normbig{#2}_{\Holder{#1}{#3}}}

% H\"{o}lder norm
\newcommand{\Hnormbigg}[3] {\Normbigg{#2}_{\Holder{#1}{#3}}}

% H\"{o}lder norm
\newcommand{\HnormBig}[3] {\NormBig{#2}_{\Holder{#1}{#3}}}

% H\"{o}lder norm
\newcommand{\HnormBigg}[3] {\NormBigg{#2}_{\Holder{#1}{#3}}}


% Normalized H\"{o}lder norm
\newcommand{\NHnorm}[4] {\Norm{#3}^{[#2]}_{\Holder{#1}{#4}}}

% Normalized H\"{o}lder norm
\newcommand{\NHnormbig}[4] {\Normbig{#3}^{[#2]}_{\Holder{#1}{#4}}}

% Normalized H\"{o}lder norm
\newcommand{\NHnormbigg}[4] {\Normbigg{#3}^{[#2]}_{\Holder{#1}{#4}}}

% Normalized H\"{o}lder norm
\newcommand{\NHnormBig}[4] {\NormBig{#3}^{[#2]}_{\Holder{#1}{#4}}}

% Normalized H\"{o}lder norm
\newcommand{\NHnormBigg}[4] {\NormBigg{#3}^{[#2]}_{\Holder{#1}{#4}}}


% H\"{o}lder seminorm for piecewise functions
\newcommand{\HseminormD}[2] {\Abs{#2}_{#1}}

% H\"{o}lder seminorm for piecewise functions
\newcommand{\HseminormDbig}[2] {\Absbig{#2}_{#1}}

% H\"{o}lder seminorm for piecewise functions
\newcommand{\HseminormDbigg}[2] {\Absbigg{#2}_{#1}}

% H\"{o}lder seminorm for piecewise functions
\newcommand{\HseminormDBig}[2] {\AbsBig{#2}_{#1}}

% H\"{o}lder seminorm for piecewise functions
\newcommand{\HseminormDBigg}[2] {\AbsBigg{#2}_{#1}}


% H\"{o}lder norm for piecewise functions
\newcommand{\HnormD}[2] {\Norm{#2}_{#1}}

% H\"{o}lder norm for piecewise functions
\newcommand{\HnormDbig}[2] {\Normbig{#2}_{#1}}

% H\"{o}lder norm for piecewise functions
\newcommand{\HnormDbigg}[2] {\Normbigg{#2}_{#1}}

% H\"{o}lder norm for piecewise functions
\newcommand{\HnormDBig}[2] {\NormBig{#2}_{#1}}

% H\"{o}lder norm for piecewise functions
\newcommand{\HnormDBigg}[2] {\NormBigg{#2}_{#1}}


% Normalized H\"{o}lder norm for piecewise functions
\newcommand{\NHnormD}[3] {\Norm{#3}^{[#2]}_{#1}}

% Normalized H\"{o}lder norm for piecewise functions
\newcommand{\NHnormDbig}[3] {\Normbig{#3}^{[#2]}_{#1}}

% Normalized H\"{o}lder norm for piecewise functions
\newcommand{\NHnormDbigg}[3] {\Normbigg{#3}^{[#2]}_{#1}}

% Normalized H\"{o}lder norm for piecewise functions
\newcommand{\NHnormDBig}[3] {\NormBig{#3}^{[#2]}_{#1}}

% Normalized H\"{o}lder norm for piecewise functions
\newcommand{\NHnormDBigg}[3] {\NormBigg{#3}^{[#2]}_{#1}}


% Define |||.|||
\newcommand{\vertiii}[1]{{\left\vert\kern-0.25ex\left\vert\kern-0.25ex\left\vert #1
    \right\vert\kern-0.25ex\right\vert\kern-0.25ex\right\vert}}



% H\"{o}lder operator norm for piecewise functions
\newcommand{\OpHnormD}[2] {\vertiii{#2}_{#1}}

% Normalized H\"{o}lder operator norm for piecewise functions
\newcommand{\NOpHnormD}[3] {\vertiii{#3}^{[#2]}_{#1}}

% Ruelle operator
\newcommand{\RR}{\mathcal{L}}

% Split Ruelle operator
\newcommand{\RRR}{\mathbbm{L}}

% Dolgopyat operator
\newcommand{\MM}{\mathbbm{M}}


\newcommand{\lcm}{\operatorname{lcm}}

\newcommand{\XX}{\mathbb{X}}

% Normalized potential
\newcommand{\wt}[1]{\widetilde{#1}}

% Argument
\newcommand{\Arg}{\operatorname{Arg}}

% sub(sup)script minus sign
\newcommand{\minus}{\scalebox{0.6}[0.6]{$-\!\!\;$}}

% sub(sup)script plus sign
\newcommand{\plussmallest}{\scalebox{0.4}[0.4]{$+$}}
\newcommand{\plussmaller}{\scalebox{0.5}[0.5]{$+$}}
\newcommand{\plussmall}{\scalebox{0.6}[0.6]{$+$}}

% sub(sup)script circ
\newcommand{\circsmall}{\scalebox{0.6}[0.6]{$\circ$}}

% sub(sup)script '
\newcommand{\primesmall}{\scalebox{0.6}[0.6]{$\prime$}}



% Set of periodic orbits
\newcommand{\Orb}{\mathfrak{P}}

% subscript for single tile
\newcommand{\ti}{\vartriangle}

% subscript for double e
\newcommand{\ee}{\boldsymbol{\shortparallel}}

% subscript for single e
\newcommand{\e}{\boldsymbol{\shortmid}}

% superscript
\newcommand{\po}{\bullet}


% superscript p and np
\newcommand{\p}{\operatorname{p}}
\newcommand{\np}{\operatorname{np}}

% Dynamical Dirichlet series
\newcommand{\DS}{\mathfrak{D}}

% Inverse branches of branched covering map on X
\newcommand{\Inv}{\operatorname{Inv}}

% big O notation
\newcommand{\bigO}{\mathcal{O}}

% coloneqq
\renewcommand{\=}{\coloneqq}

% orbit
\renewcommand{\O}{\mathcal{O}}

% set of maximizing measures
\newcommand{\Mmax}{\MMM_{\operatorname{max}}}

% widehat
\newcommand{\wh}{\widehat}


%
%%% Fonts
%


\newcommand{\cA}{\mathcal{A}}
\newcommand{\cB}{\mathcal{B}}
\newcommand{\cC}{\mathcal{C}}
\renewcommand{\cD}{\mathcal{D}}
\newcommand{\cE}{\mathcal{E}}
\newcommand{\cF}{\mathcal{F}}
\newcommand{\cG}{\mathcal{G}}
\renewcommand{\cH}{\mathcal{H}}
\newcommand{\cI}{\mathcal{I}}
\newcommand{\cJ}{\mathcal{J}}
\newcommand{\cK}{\mathcal{K}}
\renewcommand{\cL}{\mathcal{L}}
\newcommand{\cM}{\mathcal{M}}
\newcommand{\cN}{\mathcal{N}}
\newcommand{\cO}{\mathcal{O}}
\newcommand{\cP}{\mathcal{P}}
\newcommand{\cQ}{\mathcal{Q}}
\renewcommand{\cR}{\mathcal{R}}
\newcommand{\cS}{\mathcal{S}}
\newcommand{\cT}{\mathcal{T}}
\newcommand{\cU}{\mathcal{U}}
\newcommand{\cV}{\mathcal{V}}
\newcommand{\cW}{\mathcal{W}}
\newcommand{\cX}{\mathcal{X}}
\newcommand{\cY}{\mathcal{Y}}
\newcommand{\cZ}{\mathcal{Z}}

\newcommand{\fA}{\mathfrak{A}}
\newcommand{\fB}{\mathfrak{B}}
\newcommand{\fC}{\mathfrak{C}}
\newcommand{\fD}{\mathfrak{D}}
\newcommand{\fE}{\mathfrak{E}}
\newcommand{\fF}{\mathfrak{F}}
\newcommand{\fG}{\mathfrak{G}}
\newcommand{\fH}{\mathfrak{H}}
\newcommand{\fI}{\mathfrak{I}}
\newcommand{\fJ}{\mathfrak{J}}
\newcommand{\fK}{\mathfrak{K}}
\newcommand{\fL}{\mathfrak{L}}
\newcommand{\fM}{\mathfrak{M}}
\newcommand{\fN}{\mathfrak{N}}
\newcommand{\fO}{\mathfrak{O}}
\newcommand{\fP}{\mathfrak{P}}
\newcommand{\fQ}{\mathfrak{Q}}
\newcommand{\fR}{\mathfrak{R}}
\newcommand{\fS}{\mathfrak{S}}
\newcommand{\fT}{\mathfrak{T}}
\newcommand{\fU}{\mathfrak{U}}
\newcommand{\fV}{\mathfrak{V}}
\newcommand{\fW}{\mathfrak{W}}
\newcommand{\fX}{\mathfrak{X}}
\newcommand{\fY}{\mathfrak{Y}}
\newcommand{\fZ}{\mathfrak{Z}}

\newcommand{\sA}{\mathscr{A}}
\newcommand{\sB}{\mathscr{B}}
\newcommand{\sC}{\mathscr{C}}
\newcommand{\sD}{\mathscr{D}}
\newcommand{\sE}{\mathscr{E}}
\newcommand{\sF}{\mathscr{F}}
\newcommand{\sG}{\mathscr{G}}
\newcommand{\sH}{\mathscr{H}}
\newcommand{\sI}{\mathscr{I}}
\newcommand{\sJ}{\mathscr{J}}
\newcommand{\sK}{\mathscr{K}}
\newcommand{\sL}{\mathscr{L}}
\newcommand{\sM}{\mathscr{M}}
\newcommand{\sN}{\mathscr{N}}
\newcommand{\sO}{\mathscr{O}}
\newcommand{\sP}{\mathscr{P}}
\newcommand{\sQ}{\mathscr{Q}}
\newcommand{\sR}{\mathscr{R}}
\newcommand{\sS}{\mathscr{S}}
\newcommand{\sT}{\mathscr{T}}
\newcommand{\sU}{\mathscr{U}}
\newcommand{\sV}{\mathscr{V}}
\newcommand{\sW}{\mathscr{W}}
\newcommand{\sX}{\mathscr{X}}
\newcommand{\sY}{\mathscr{Y}}
\newcommand{\sZ}{\mathscr{Z}}

%
%%% Letters with symbols.
%

\newcommand{\hA}{\widehat{A}}
\newcommand{\hB}{\widehat{B}}
\newcommand{\hC}{\widehat{C}}
\newcommand{\hD}{\widehat{D}}
\newcommand{\hE}{\widehat{E}}
\newcommand{\hF}{\widehat{F}}
\newcommand{\hG}{\widehat{G}}
\newcommand{\hH}{\widehat{H}}
\newcommand{\hI}{\widehat{I}}
\newcommand{\hJ}{\widehat{J}}
\newcommand{\hK}{\widehat{K}}
\newcommand{\hL}{\widehat{L}}
\newcommand{\hM}{\widehat{M}}
\newcommand{\hN}{\widehat{N}}
\newcommand{\hO}{\widehat{O}}
\newcommand{\hP}{\widehat{P}}
\newcommand{\hQ}{\widehat{Q}}
\newcommand{\hR}{\widehat{R}}
\newcommand{\hS}{\widehat{S}}
\newcommand{\hT}{\widehat{T}}
\newcommand{\hU}{\widehat{U}}
\newcommand{\hV}{\widehat{V}}
\newcommand{\hW}{\widehat{W}}
\newcommand{\hX}{\widehat{X}}
\newcommand{\hY}{\widehat{Y}}
\newcommand{\hZ}{\widehat{Z}}

\newcommand{\halpha}{\widehat{\alpha}}
\newcommand{\hbeta}{\widehat{\beta}}
\newcommand{\hgamma}{\widehat{\gamma}}
\newcommand{\hGamma}{\widehat{\Gamma}}
\newcommand{\hdelta}{\widehat{\delta}}
\newcommand{\hDelta}{\widehat{\Delta}}
\newcommand{\hepsilon}{\widehat{\epsilon}}
\newcommand{\hvarepsilon}{\widehat{\varepsilon}}
\newcommand{\hzeta}{\widehat{\zeta}}
\newcommand{\heta}{\widehat{\eta}}
\newcommand{\htheta}{\widehat{\theta}}
\newcommand{\hvartheta}{\widehat{\vartheta}}
\newcommand{\hTheta}{\widehat{\Theta}}
\newcommand{\hiota}{\widehat{\iota}}
\newcommand{\hkappa}{\widehat{\kappa}}
\newcommand{\hlambda}{\widehat{\lambda}}
\newcommand{\hLambda}{\widehat{\Lambda}}
\newcommand{\hmu}{\widehat{\mu}}
\newcommand{\hnu}{\widehat{\nu}}
\newcommand{\hxi}{\widehat{\xi}}
\newcommand{\hXi}{\widehat{\Xi}}
%\newcommand{\homicron}{\widehat{\omicron}} just use the usual "o"
\newcommand{\hpi}{\widehat{\pi}}
\newcommand{\hvarpi}{\widehat{\varpi}}
\newcommand{\hPi}{\widehat{\Pi}}
\newcommand{\hrho}{\widehat{\rho}}
\newcommand{\hvarrho}{\widehat{\varrho}}
\newcommand{\hsigma}{\widehat{\sigma}}
\newcommand{\hvarsigma}{\widehat{\varsigma}}
\newcommand{\hSigma}{\widehat{\Sigma}}
\newcommand{\htau}{\widehat{\tau}}
\newcommand{\hupsilon}{\widehat{\upsilon}}
\newcommand{\hUpsilon}{\widehat{\Upsilon}}
\newcommand{\hphi}{\widehat{\phi}}
\newcommand{\hvarphi}{\widehat{\varphi}}
\newcommand{\hPhi}{\widehat{\Phi}}
\newcommand{\hchi}{\widehat{\chi}}
\newcommand{\hpsi}{\widehat{\psi}}
\newcommand{\hPsi}{\widehat{\Psi}}
\newcommand{\homega}{\widehat{\omega}}
\newcommand{\hOmega}{\widehat{\Omega}}



\newcommand{\oA}{\overline{A}}
\newcommand{\oB}{\overline{B}}
\newcommand{\oC}{\overline{C}}
\newcommand{\oD}{\overline{D}}
\newcommand{\oE}{\overline{E}}
\newcommand{\oF}{\overline{F}}
\newcommand{\oG}{\overline{G}}
\newcommand{\oH}{\overline{H}}
\newcommand{\oI}{\overline{I}}
\newcommand{\oJ}{\overline{J}}
\newcommand{\oK}{\overline{K}}
\newcommand{\oL}{\overline{L}}
\newcommand{\oM}{\overline{M}}
\newcommand{\oN}{\overline{N}}
\newcommand{\oO}{\overline{O}}
\newcommand{\oP}{\overline{P}}
\newcommand{\oQ}{\overline{Q}}
\newcommand{\oR}{\overline{R}}
\newcommand{\oS}{\overline{S}}
\newcommand{\oT}{\overline{T}}
\newcommand{\oU}{\overline{U}}
\newcommand{\oV}{\overline{V}}
\newcommand{\oW}{\overline{W}}
\newcommand{\oX}{\overline{X}}
\newcommand{\oY}{\overline{Y}}
\newcommand{\oZ}{\overline{Z}}


\newcommand{\oa}{\overline{a}}
\newcommand{\ob}{\overline{b}}
\newcommand{\oc}{\overline{c}}
\newcommand{\od}{\overline{d}}
\newcommand{\oee}{\overline{e}}
\newcommand{\of}{\overline{f}}
\newcommand{\og}{\overline{g}}
\newcommand{\oh}{\overline{h}}
\newcommand{\oi}{\overline{i}}
\newcommand{\oj}{\overline{j}}
\newcommand{\ok}{\overline{k}}
\newcommand{\ol}{\overline{l}}
\newcommand{\om}{\overline{m}}
\newcommand{\on}{\overline{n}}
\newcommand{\oo}{\overline{o}}
\newcommand{\op}{\overline{p}}
\newcommand{\oq}{\overline{q}}
\newcommand{\orr}{\overline{r}}
\newcommand{\os}{\overline{s}}
\newcommand{\ot}{\overline{t}}
\newcommand{\ou}{\overline{u}}
\newcommand{\ov}{\overline{v}}
\newcommand{\ow}{\overline{w}}
\newcommand{\ox}{\overline{x}}
\newcommand{\oy}{\overline{y}}
\newcommand{\oz}{\overline{z}}



\newcommand{\tA}{\widetilde{A}}
\newcommand{\tB}{\widetilde{B}}
\newcommand{\tC}{\widetilde{C}}
\newcommand{\tD}{\widetilde{D}}
\newcommand{\tE}{\widetilde{E}}
\newcommand{\tF}{\widetilde{F}}
\newcommand{\tG}{\widetilde{G}}
\newcommand{\tH}{\widetilde{H}}
\newcommand{\tI}{\widetilde{I}}
\newcommand{\tJ}{\widetilde{J}}
\newcommand{\tK}{\widetilde{K}}
\newcommand{\tL}{\widetilde{L}}
\newcommand{\tM}{\widetilde{M}}
\newcommand{\tN}{\widetilde{N}}
\newcommand{\tO}{\widetilde{O}}
\newcommand{\tP}{\widetilde{P}}
\newcommand{\tQ}{\widetilde{Q}}
\newcommand{\tR}{\widetilde{R}}
\newcommand{\tS}{\widetilde{S}}
\newcommand{\tT}{\widetilde{T}}
\newcommand{\tU}{\widetilde{U}}
\newcommand{\tV}{\widetilde{V}}
\newcommand{\tW}{\widetilde{W}}
\newcommand{\tX}{\widetilde{X}}
\newcommand{\tY}{\widetilde{Y}}
\newcommand{\tZ}{\widetilde{Z}}

\newcommand{\ta}{\widetilde{a}}
\newcommand{\tb}{\widetilde{b}}
\newcommand{\tc}{\widetilde{c}}
\newcommand{\td}{\widetilde{d}}
\newcommand{\te}{\widetilde{e}}
\newcommand{\tf}{\widetilde{f}}
\newcommand{\tg}{\widetilde{g}}
\renewcommand{\th}{\widetilde{h}}
%\newcommand{\ti}{\widetilde{i}}
\newcommand{\tj}{\widetilde{j}}
\newcommand{\tk}{\widetilde{k}}
\newcommand{\tl}{\widetilde{l}}
\newcommand{\tm}{\widetilde{m}}
\newcommand{\tn}{\widetilde{n}}
\newcommand{\too}{\widetilde{o}}
\newcommand{\tp}{\widetilde{p}}
\newcommand{\tq}{\widetilde{q}}
\newcommand{\tr}{\widetilde{r}}
\newcommand{\ts}{\widetilde{s}}
\renewcommand{\tt}{\widetilde{t}}
\newcommand{\tu}{\widetilde{u}}
\newcommand{\tv}{\widetilde{v}}
\newcommand{\tw}{\widetilde{w}}
\newcommand{\tx}{\widetilde{x}}
\newcommand{\ty}{\widetilde{y}}
\newcommand{\tz}{\widetilde{z}}

\newcommand{\talpha}{\widetilde{\alpha}}
\newcommand{\tbeta}{\widetilde{\beta}}
\newcommand{\tgamma}{\widetilde{\gamma}}
\newcommand{\tGamma}{\widetilde{\Gamma}}
\newcommand{\tdelta}{\widetilde{\delta}}
\newcommand{\tDelta}{\widetilde{\Delta}}
\newcommand{\tepsilon}{\tilde{\epsilon}}
\newcommand{\tvarepsilon}{\widetilde{\varepsilon}}
\newcommand{\tzeta}{\widetilde{\zeta}}
\newcommand{\teta}{\widetilde{\eta}}
\newcommand{\ttheta}{\widetilde{\theta}}
\newcommand{\tvartheta}{\widetilde{\vartheta}}
\newcommand{\tTheta}{\widetilde{\Theta}}
\newcommand{\tiota}{\widetilde{\iota}}
\newcommand{\tkappa}{\widetilde{\kappa}}
\newcommand{\tlambda}{\widetilde{\lambda}}
\newcommand{\tLambda}{\widetilde{\Lambda}}
\newcommand{\tmu}{\widetilde{\mu}}
\newcommand{\tnu}{\widetilde{\nu}}
\newcommand{\txi}{\widetilde{\xi}}
\newcommand{\tXi}{\widetilde{\Xi}}
%\newcommand{\tomicron}{\widetilde{\omicron}} just use the usual "o"
\newcommand{\tpi}{\widetilde{\pi}}
\newcommand{\tvarpi}{\widetilde{\varpi}}
\newcommand{\tPi}{\widetilde{\Pi}}
\newcommand{\trho}{\widetilde{\rho}}
\newcommand{\tvarrho}{\widetilde{\varrho}}
\newcommand{\tsigma}{\widetilde{\sigma}}
\newcommand{\tvarsigma}{\widetilde{\varsigma}}
\newcommand{\tSigma}{\widetilde{\Sigma}}
\newcommand{\ttau}{\widetilde{\tau}}
\newcommand{\tupsilon}{\widetilde{\upsilon}}
\newcommand{\tUpsilon}{\widetilde{\Upsilon}}
\newcommand{\tphi}{\widetilde{\phi}}
\newcommand{\tvarphi}{\widetilde{\varphi}}
\newcommand{\tPhi}{\widetilde{\Phi}}
\newcommand{\tchi}{\widetilde{\chi}}
\newcommand{\tpsi}{\widetilde{\psi}}
\newcommand{\tPsi}{\widetilde{\Psi}}
\newcommand{\tomega}{\widetilde{\omega}}
\newcommand{\tOmega}{\widetilde{\Omega}}



\begin{document}
\title[THE CONVERGENCE BEHAVIOR OF COOPERATIVE COEVOLUTION BASED ON RANDOM GROUPING STRATEGY USING EGA]{THE CONVERGENCE BEHAVIOR OF COOPERATIVE COEVOLUTION BASED ON RANDOM GROUPING STRATEGY USING EGA}
\author{Hao~Wang, Tingyu~Zhang}
%\address{Zhiqiang~Li, School of Mathematical Sciences \& Beijing International Center for Mathematical Research, Peking University, Beijing 100871, China}
%\email{zli@math.pku.edu.cn}
%\address{Yiwei~Zhang, School of Mathematics and Statistics, Center for Mathematical Sciences, Hubei Key Laboratory of Engineering Modeling and Scientific Computing, Huazhong University of Science and Technology, Wuhan 430074, China}
%\email{yiweizhang@hust.edu.cn}
%\thanks{}

\date{\today}



\subjclass[2010]{Primary: 37F10; Secondary: 37D99, 37A99, 37C30, 37D35, 37F15}

\keywords{ergodic optimization, ground state, maximizing measure, expanding Thurston map, Latt\`{e}s map, rational map, Bousch operator.}



\begin{abstract}
We show a convergence behavior about high-dimensional functions using cooprative coevolution with the strategy of random grouping. To be more precise, we show that if the random grouping procedure indeed make the function be sub-separable w.r.t. every group's sub-components, then using cooperative coevolution with elitist genetic algorithms as its sub-optimizer will convergence to a global optimizer in a "weak convergence" sense created by Rudolph. Our result is a generalization of the Rudolph's result when using grouping strategy to deal with the high-dimensional functions.
\end{abstract}

\maketitle

\tableofcontents

\section{Introduction}     \label{sct_Introduction}
Evolution Algorithms(EAs) as introduced in [1] are often used to deal with static optimization problems of the type:

\begin{center}
    $\max\{f(b)\}|b\in\mathbb{B}^{n}\}$,
\end{center}

\noindent with $\mathbb{B}^{n}=\{0,1\}^{n}$,$f:\{0,1\}^n\to\mathbb{R}_{++}$ , $f(b)\in(0,+\infty)$ for $\forall b\in\mathbb{B}^{n}$ and $f(b)\neq const$.

When the dimension n is small, most kinds of EAs
behave well in solve this problem. However, as mention in [2], EAs often lose their effectiveness and advantages when dealing with high-dimension problems.

It is also mentioned in [2] that cooperative coevolution(CC) is a good way to solve these high-dimension problems, but the grouping strategy, which is the key of CC, have limitations overall. For example, the one-dimensional-based method makes unrealistic assumption of that f is totally separable, while for other methods like splitting-in-half strategy, it is unclear how inter-dependencies be captured. Thus [2] proposed a new grouping strategy, which is called dynamically random-grouping strategy. The strategy makes CC behave well, and now we want to proof the convergence behavior of such random-grouping strategy of CC. Since we only focus on the convergence behavior, but not the convergence rate, in our discussion, the sub-optimizer of each group of components is chosen as Elitist Genetic Algorithm (EGA), which is mentioned in [1], one of the Evolutionary Algorithms that is of good convergence behavior proved by Rudolph.

The idea behind their new algorithm is to optimize a group of interacting variables together (as a sub-component), rather than splitting them into different sub-components. Ideally, each sub-component should consist of tightly interacting variables while the interaction among sub-components should be weak.

To measure the degree of correlation between variables, we proposed a definition of a completely separable function:
    
\begin{definition}
    $f (x)$ is called a separable function if $\forall k \in \{1, n\}$ and
    \begin{equation}
    \left. 
    \begin{array}{l}
    x \in S, x = (x_1, \ldots, x_k, \ldots, x_n)\\
    x^{'} \in S , x^{'} = (x_1, \ldots, x^{'}_k, \ldots, x_n)
    \end{array} \right\} \rightarrow f (x) < f (x^{'})
    \end{equation}
    implies
    \begin{equation}
    \left. \begin{array}{l}
    \forall y \in S, y = (y_1, \ldots, x_k, \ldots, y_n)\\
    \forall y^{'} \in S , y^{'} = (y_1, \ldots, x^{'}_k, \ldots, y_n)
    \end{array} \right\} \rightarrow f (y) < f (y^{'})
    \end{equation}
\end{definition}


\noindent\textbf {Stage 1: $ f $ is separable.}
Intuitively, $f(x) = f_1(x_1) + f_2(x_2) + \dots + f_n(x_n)$,
thus the sequential EGA would definitely do well in optimizing separable $ f $. 
(Since totally separable functions are of "dimension 1" in fact.)

If we try to generalize a bigger class, we consider the random grouping strategy. The function would be optimized with dividing its variables into groups, the dimention of domain $\mathbb{B}^n$, i.e. $n = m \times s$ , where m is the number of sub-components, and s is the length of every sub-component.

To meet the requirement that each subcomponent should consist of tightly 
interacting variables, while the interaction among sub-components should be weak, 
with the definition of separable is indeed one expression of the "weak-interaction" 
between variables, we want to extend the notion of separable to mathematically 
define one kind of "weak-interaction" among different sub-components.

We know given a non-separable function, if all of its variables are highly interdependent of each other, no CC algorithms would perform well on such an extreme case. Thus the random grouping strategy is likely to make the variables into a "sub-separable" manner as defined below.

\noindent\textbf {Stage 2: $f$ is sub-separable.} 
The conditions may be relaxed as defined to the sub-component function below:

\begin{definition}
         $f (x)$ is called a sub-separable function if for $\forall k \in \{1,2,\dots,n\}$ and
        for $i \in \{0,1,\dots,m-1\}$, with $x \in S, x' \in S$, $f(x)<f(x')$ and $x'$ and $x$ only differ at $[i\cdot s+1, (i+1)\cdot s]$'th components implies:

\begin{equation}
\left.
\begin{array}{l}
    \forall y \in S \text{ with } y \text{ agrees with } x \text{ at } [i \cdot s+1, (i+1) \cdot s]\text{th components} \\
    \forall y' \in S \text{ with } y' \text{ agrees with } x' \text{ at } [i \cdot s+1, (i+1) \cdot s]\text{th components} \\
    y\text{ and }y'\text{ coincide except }[i \cdot s+1, (i+1) \cdot s]\text{'th components}
\end{array}\right\}\Rightarrow f(y) < f(y') 
\end{equation}
\end{definition}



It is clear that a separable function is surely sub-separable.
On the other hand, it is not hard to see $ f(x) = x_1 \cdot x_2 \dots x_{s} + x_{s + 1} \cdot x_{s+2} \dots x_{2s} + \dots +  x_{(m-1)s+1} \cdot x_{(m-1)s+2} \dots x_n $
is an example of a sub-separable function, while $ f $ itself is not separable.

Here is a graph to show the relation between separable function and sub-separable function with function class:
\begin{tikzpicture}
  % Draw the largest ellipse for "all functions"
  \node[ellipse, draw, minimum width=9cm, minimum height=6cm, align=center] (allfunctions) {};
  % Label for "all functions"
  \node at (allfunctions.center) [yshift=-2cm] {All function};
  
  % Draw the middle ellipse for "sub-separable functions"
  \node[ellipse, draw, minimum width=7cm, minimum height=3.6cm, align=center] at (allfunctions.center) (subseparable) {};
  % Label for "sub-separable functions"
  \node at (subseparable.center) [yshift=-1cm] {Sub-separable function};
  
  % Draw the smallest ellipse for "separable functions"
  \node[ellipse, draw, minimum width=4cm, minimum height=1.5cm, align=center] at (subseparable.center) (separable) {};
  % Label for "separable functions"
  \node at (separable.center) {Separable function};
\end{tikzpicture}

If $f$ is sub-separable, the interdependencies between every sub-component is very low (actually they are totally independent), then we hope the sequential EGA would also behave well on optimizing f. That is the theorem need to be proved:
\begin{theorem}\label{thm:maintheoremconvergence}
If $f$ is sub-separable, then the sequential EGA would converge to the global optimum in the sense of Rudolph.
\end{theorem}

Since dynamically random-grouping is possible to reorder the variables into a manner such that $f$ is sub-separable with respect to the reordered $f(x_{i_1}, \ldots, x_{i_n})$, this strategy makes sense.
    
For Rudolph's work, he translates the genetic algorithm into the setting of Markov Chain.

Define state $i$ for the population $i \in \{0, 1\}^{Np\cdot n}$, $i :=$ string $i_1$; string $i_2$; \ldots; string $Np$.
We denote by $\pi_k(i)$ the $k$-th string of statement $i$.
Thus \#(the total state space) = $2^{Np\cdot n}$ is finite. Thus we could use matrix $C, M, S \in \mathcal{M}_{2^{Np\cdot n}}(\mathbb{R})$ to represent the crossover, mutation and selection respectively.
He gives a useful definition of convergence of genetic algorithms as follows:

\begin{definition}
  Let $Z_t = \max \{ f (\pi_k^{(t)} (i) \mid k = 1, \ldots, n) \}$ be a
  sequence of random variables representing the best fitness within a
  population represented by state i at step t. A genetic algorithm converges
  to the global optimum, if and only if
  \begin{equation}
    \underset{t \rightarrow \infty}{\lim} P \{ Z_t = f^{\ast} \} = 1,
  \end{equation}
\end{definition}

And in fact, we would prove the convergence behavior of sub-separable f with sequential EGA exactly in this sense of "weak-convergence".

In fact, as illustrated in Figure , our proof is decomposed into three steps, each elucidating further properties of the underlying function f. The progression from translating into Markov chain, adding super-individuals for EGA, gaining limit behavior of the EGA procedure, considering sequential EGA to show the convergence.

\begin{figure}
  \centering
  \includegraphics[width=1\textwidth]{figure/procedure.jpg} %
  \caption{The Mind Map}
  \label{fig:example}
\end{figure}

\begin{itemize}
\item Step 1:

\item Step 2:

\item Step 3:

\item Step 4:

\end{itemize}


\textbf{Structure of the paper.}

\subsection*{Acknowledgements}




\section{Notations and Preliminaries}
We use the covention that $\mathbb{B}^n = \{0,1\}^n$, and to ease the presentation, assume that the problem $\max\{f(b)\}|b\in\mathbb{B}^{n}\}$ has only one global optimizer.

Let $\widehat{x}=\text{argmax}\{f(b)|b\in\mathbb{X}\}$, where $\mathbb{X}$ is the true population that we are doing EGA on. Then since restricted in $\mathbb{X}$, $\widehat{x}$ maximize f, we tends to think every component of $\widehat{x}$ is likely to maximize $f$ globally since we have no other information. Thus when we do EGA on some of components of strings of every individual, i.e. on the $\{i_{1},i_{2},\dots,i_{k}\}$'th components of a length-n string, then the sub-problem reduced to:
\begin{center}
    $\max\{f|^{\widehat{x}}_{\{i_{1},i_{2},\dots,i_{k}\}}(b|_{\{i_{1},i_{2},\dots,i_{k}\}})|b\in\mathbb{B}^{n}\}$
\end{center}
    where $f|^{\widehat{x}}_{\{i_{1},i_{2},\dots,i_{k}\}}:\mathbb{B}^{k}\rightarrow\mathbb{R};$
		
    $f|^{\widehat{x}}_{\{i_{1},i_{2},\dots,i_{k}\}}(*,*,\dots,*) = f(\widehat{x}_{1},\dots,\widehat{x}_{i_{1}-1},*,\widehat{x}_{i_{1}+1},\dots,\widehat{x}_{i_{k}-1},*,\widehat{x}_{i_{k}+1},\dots,\widehat{x}_{n})$, where $\widehat{x}_{j}$ is the $j$'th component of $\widehat{x}$, with $b|_{\{i_{1},i_{2},\dots,i_{k}\}}=(b_{i_{1}},b_{i_{2}},\dots,b_{i_{k}})$.

    By convention, in the remaining part of this paper, for any stage of the population $\mathbb{X}$ (this population is always evolving), $\widehat{x}$ always represents the individual that satisfies $\widehat{x}=\text{argmax}\{f(b)|b\in\mathbb{X}\}$ ($\widehat{x}$ is automatically evolving).


\begin{prop}\label{uniqueoptimizer}
    If f is sub-separable and f has only one global optimizer, then for  
    $\forall i\in[0,m-1], f|^{\widehat{x}}_{[i\cdot s+1,i\cdot s+s]}$ has only one global optimizer.
\end{prop}


\begin{proof}[Proof of Proposition 2.1.]
We use proof by contradiction. WLOG we assume that $f|^{\widehat{x}}_{[1,s]}$ has at least two global optimizer, namely $x_{1}^{*}$ and $x_{2}^{*}$ $\in \{0,1\}^s$. Since by premise that f has only one global optimizer denoted as $x^*$, then if we denote $y = x_1^*x^*|_{[s+1,n]}$, since $x^*$ is the global optimizer of f, we know $f(y)\leqslant f(x^*)$. On the other hand, since $x_1^*$ is the optimizer of $f|^{\widehat{x}}_{[1,s]}$, we know $f|^{\widehat{x}}_{[1,s]}(x^*|_{[1,s]}) \leqslant f(x_1^*)$. By the definition of sub-separable, we know that $f(x^*) \leqslant f(y)$, thus $f(x^*) = f(y)$. Since $x^*$ is the unique optimizer of $f$, we know $x^*=y$, i.e. $x^*|_{[1,s]} = x_1^*$. Similarly, we could prove $x^*|_{[1,s]} = x_2^*$, contradicted! Thus for  
    $\forall i\in[0,m-1], f|^{\widehat{x}}_{[i\cdot s+1,i\cdot s+s]}$ has only one global optimizer.
\end{proof}

\begin{cor}
    Denote by the global optimizer of $f$ $x^*$, then for $\forall b\in\mathbb{B}^n$, $\forall i\in[0,m-1]$, $x^*|_{[i\cdot s+1,i\cdot s+s]}=\text{argmax}\{f|^b_{[i\cdot s+1,i\cdot s+s]}|x\in\mathbb{B}^s\}$
\end{cor}

\begin{proof}
    Since the proof in Proposition \ref{uniqueoptimizer} shows that $x^*|_{[1,s]} = x_1^*$, where $x^*_1=\text{argmax}\{f^{\widehat{x}}_{[1,s]}(b)|b\in\mathbb{B}^s\}$, we note that the proof process remains unaffected when we replace all $\widehat{x}$ with $b$ in \ref{uniqueoptimizer}.
\end{proof}

Here are some definition about stochatic martix.

\begin{definition}
  A square matrix $A \in \mathcal{M}_n (K) $is said to be
  
  (a) nonnegative ($A \geq 0$), if $a_{ij} \geqslant 0$ for all $i, j \in \{ 1, \ldots, n \}$
  
  (b) positive ($A > 0$), if $a_{ij} > 0$ for all $i, j
  \in \{ 1, \ldots, n \}$
  
  A nonnegative matrix $A \in \mathcal{M}_n (K)$ is said to be
  
  (c) stochastic, if $\sum_{j = 1}^n a_{ij} = 1$(summation of the row of matrix)  $\forall i\in \{ 1, \ldots, n \}$
  
  A stochastic matrix $A \in \mathcal{M}_n (K)$ is said to be stable, if it has identical rows.
\end{definition}

Besides, we need some acknowledge of "the commutativity property between matrix limits and matrix multiplication."


\begin{prop}
    If $A,P,Q\in \mathcal{M}_n$, with $A,P,Q$ are all stochastic martices and $\lim_{n \to \infty}A^n$ exists, then we have $\lim_{n \to \infty}PA^nQ = P\lim_{n \to \infty}A^nQ.$
\end{prop}



\begin{proof}[Proof of Proposition 2.3.]
    Now we consider the function $F: \mathbb{R}^{n\times n} \rightarrow \mathbb{R}^{n\times n}, \quad F(X) = PXQ$. With the norm of $\mathbb{R}^{n\times n}$ be defined as the induced $\infty$ norm. We could prove that F is a continuous map w.r.t. induced $\mathbb{L}_{\infty}$ norm, that is $\|A\|_{\infty}=\max_{\|x\|_{\infty}=1}\|Ax\|_{\infty}=\max_{1\leqslant i\leqslant n}\sum_{j=1}^n \abs{a_{ij}}$. Thus we would know $\lim_{n \to \infty}F(A^n)=F(\lim_{n\to\infty}(A^n))$.

    Assume $\lim_{n \to \infty}A^n = \mathbb{A}$, then by definition we know $\lim_{n \to \infty}\|A^n-\mathbb{A}\|_{\infty}\to 0$, by the property that $\forall M,N \in \mathbb{R}^{n\times n}$, $\|MN\|_{\infty}\leqslant \|M\|_{\infty}\cdot\|N\|_{\infty}$, and for stochastic matrix $M$, $\|M\|_{\infty} = 1$, we know that $\|PA^nQ-P\mathbb{A}Q\|_{\infty}=\|P(A^n-\mathbb{A})Q\|\leqslant\|P\|_{\infty}\|A^n-\mathbb{A}\|_{\infty}\|Q\|_{\infty}=\|A^n-\mathbb{A}\|_{\infty}$, we know $\lim_{n\to\infty}\|PA^nQ-P\mathbb{A}Q\|_{\infty}\leqslant\lim_{n\to\infty}\|A^n-\mathbb{A}\|_{\infty}\to 0$, thus by definition, $\lim_{n\to\infty}PA^nQ=P\mathbb{A}Q=P\lim_{n \to \infty}A^nQ$.
\end{proof}

All in all, we need consider the limit behavior of some special kind of reducible stochastic matrix.

\begin{prop}
    Let P be a reducible stochastic matrix, where $C \in \mathcal{M}_m (K)$ is a
  primitive stochastic matrix and $R, T \neq 0$. Then
  \begin{equation}
    P^{\infty} = \underset{k \rightarrow \infty}{\lim P^k} = \underset{k
    \rightarrow \infty}{\lim} \left(\begin{array}{c}
      C^k \hspace{5em} O\\
      \sum^{k - 1}_{i = 0} T^i R C^{k - i - 1} T^k
    \end{array}\right) = \left(\begin{array}{c}
      C^\infty O\\
      R_{\infty} O
    \end{array}\right)
  \end{equation}
\end{prop}


\begin{proof}[Proof of Proposition 2.3.]
    
\end{proof}
    

\section{PROOF OF THEOREM 1.1}
In this section, we aim to prove Theorem \ref{thm:maintheoremconvergence}.

The proof of Theorem \ref{thm:maintheoremconvergence} is divided into three subsections, namely Subsection \ref{translate}, \ref{super-individual} and \ref{sequentialEGA}. Each subsection corresponds to a distinct step illustrated in Figure .\todo[color=yellow]{which figure}

For simplicity, in subsection \ref{translate} and \ref{super-individual}, we only consider the behavior when we do EGA on the first sub-component which consists of every individuals first s components. Since the latter $(m-1)$ sub-components' procedure is almost the same. Proof of Theorem \ref{thm:maintheoremconvergence} will be given at the end of Subsection .

\subsection{Using Markov Chain to Translate the Statement into Rudolph's Setting}\label{translate}
In Rudolph's paper, since the GA are for all components, translations can occur between any states. Thus $P:=CMS$ is positive.

When doing EGA on the population's first s components as the first sub-component, for example, when $n = 2$, $Np = 2$, $m = 2$, $s = 1$. In this circumstance, we list four states:


\begin{center}
$\begin{array}{c}
\textcircled{1} \quad \underline{1} \quad 1 \quad \underline{0} \quad 1 \\
\textcircled{2} \quad \underline{1} \quad 1 \quad \underline{1} \quad 0 \\
\textcircled{3} \quad \underline{1} \quad 1 \quad \underline{0} \quad 1 \\
\textcircled{4} \quad \underline{1} \quad 1 \quad \underline{0} \quad 0 
\end{array}$
\end{center}

when we do CGA only on the first component of every individual, we simply observed that:

\begin{center}
    \begin{tikzpicture}[node distance=1.5cm,
  mynode/.style={circle, draw, thick, minimum size=1cm},
  myarrow/.style={-{Latex[length=3mm]}, thick},
  myarrowred/.style={-{Latex[length=3mm]}, thick, dashed, red}
]

% Nodes
\node[mynode] (1) {1};
\node[mynode] (4) [below=of 1] {4};
\node[mynode] (3) [right=of 1] {3};
\node[mynode] (2) [right=of 4] {2};

% Paths
\draw[myarrow] (1) to[bend left] (3);
\draw[myarrow] (3) to[bend left] (1);
\draw[myarrow] (4) to[bend left] (2);
\draw[myarrow] (2) to[bend left] (4);

% Red dashed arrow
\draw[myarrowred] (1) to[bend right] node[midway,above,sloped,red] {x} (4);
\end{tikzpicture}
\end{center}

From this example we find state i could be transformed into state j if and only if $i$ and $j$'s every sub-component's $[s+1,n]$'th components coincide respectively.

Thus, if we denote by i and j belongs to the same group $i \sim j$, we may group all states w.r.t. the rule: $i \sim j \Leftrightarrow \forall k \in [1,Np]$, $\pi_k(i)$ and $\pi_k(j)$ agree on $[s+1,n]$'th components. We will gain $2^{Np(n-s)}$ different groups, and each group has the size $2^{Np\cdot s}$.

Now reorder all states w.r.t. groups (the inner-order follows the dictionary-order), then the crossover, mutation and selection operations restricted in each group would be:



Thus, we know $P=CMS$ is positive, with



i.e. we've translate the s sub-component EGA into Rudolph's setting.

\subsection{Add Super-individuals as Preparation for EGA}\label{super-individual}
To furrther elitist selection, we add super-individual into every state i, i.e. from now on, every state is of the form i: $\pi_0(i)\pi_1(i)\dots\pi_{Np}(i)$ where $\pi_0(i)$ represents the super-individual we just add.

For all elements of $\{0,1\}$, we order them as $(b_1,b_2,\dots,b_{2^n})$ in a descending manner w.r.t. the function $f|^{\widehat{x}}_{[1,s]}$, i.e. $\forall i,j \in [1,2^n]$, if $i<j$, then $f|^{\widehat{x}}_{[1,s]}(b_{i}|_{[1,s]}) \geqslant f|^{\widehat{x}}_{[1,s]}(b_{j}|_{[1,s]})$. We note that since we only consider the first one sub-component, there are (n-s) degrees of freedom for each $b_i$, thus this order is definitely not unique, but it doesn't matter, since we can just choose any of them for latter use.

Now we order all $2^{(Np+1)n}$ states first w.r.t. $\{b_i\}$ as the super-individual and the inner-order coincides with the order we've predefined for $(\pi_1(i) \sim \pi_{Np}(i))$, thus there would be $2^n$ copy of $\mathcal{P}$. Define $\mathbb{P}$ as:

Now for this ordering with $\mathbb{P}$, we consider the upgrade strategy (i.e. to find the upgrade matrix $\mathbb{U}$.
	
For $\forall i \in [1, 2^{({Np} + 1)\cdot n}]$, let $b =
	\text{argmax} \{f|^{\widehat{x}}_{[1, s]} (\pi_k (i) |_{[1, s]}) |k \in [1, {Np}] \}
	.$
	
if $f|^{\widehat{x}}_{[1, s]} (\pi_0 (i) |_{[1, s]}) < f|^{\widehat{x}}_{[1,s]} (b|_{[1, s]})$, then let $u_{ij} = 1$, with state $$j = ((b|_{[1, s]} \pi_{0 [s + 1, n]}), \pi_1(i), \dots, \pi_{Np} (i)),$$ otherwise, let $u_{ii} = 1$.(Thus there is exactly one entry in each row.) We know if $i<j$, then by our construction of ordering we know $f|^{\widehat{x}}_{[1, s]} (\pi_0 (i) |_{[1, s]}) \geqslant f|^{\widehat{x}}_{[1,s]} (b|_{[1, s]})$. Thus by our strategy $u_{ij} = 0$ whenever $i < j$ , i.e. $U$ is a lower-triangular matrix.
	
Morever, Since for $f (\pi_0 (i)) = \max \{ f (b) |b \in\mathbb{B}^n \}$ for $\forall i \in [1,2^{{Np} \cdot n}\cdot 2^{n-s}]$$ \Rightarrow u_{ii} = 1$ for $\forall i \in [1,2^{{Np} \cdot n}\cdot 2^{n-s}] .$
	
 Since $\mathbb{U}$ is lower-triangular, we may write $\mathbb{U}$ in a manner that every block is of the size $2^{{Np} \cdot s} \times 2^{{Np} \cdot s}$.

 Thus the operation of EGA is:

 $\mathbb{P}_{+}:=\mathbb{P}\mathbb{U}=$

 \subsection{Using sub-separability to Gain the Limit Behavior of $\mathbb{P}_+$}\label{limitEGAforP+}
 
 
 





\subsection{Using the Permutation Matrices to Consider the Sequential EGA}\label{sequentialEGA}
Now we will deal with the general case. Now we denote by the $\mathbb{P}_{+}$ in \ref{super-individual} $\mathbb{P}_{+}^{(1)}$. In a similar manner, when not considering the super-individual, we reordering all $2^{Np\cdot n}$ states for the corresponding grouping rule w.r.t. the $j$'th sub-component. After add the super-individual, ordering the $2^n$ super-individual w.r.t. $f|^{\widehat{x}}_{[j\cdot s+1,j\cdot s + s]}$. With similar upgrade strategy, we gain $\mathbb{P}_{+}^{(j)}$.

Now we define the initial order of all states when considering super-individual is in such an order that the super-individual is ordered in a descending manner w.r.t. f. The inner order is just the dictionary order of $2^{Np\cdot n}$ states.

Denote by the permutation matrix to gain a inner grouping order of $i$'th sub-component not considering the super-individual $\mathcal{E}_i$, when considering the super-individual, the permutation matrix $\mathbb{E}_i$ is just $2^n$ copies of $\mathcal{E}_i$ as the diagonal elements. Besides, denote by the permutation matrix to gain the order of $2^n$ super-individuals permutation matrix $\mathbb{F}_i$ consists of $2^n$ identity matrix $I_{2^{Np\cdot s}}$.

Assume for the i'th sub-component, the EGA will iterate $k_i$ times, then the sequential Markov Chain procedure is right multiplication by:
\begin{center}
    $\mathbb{O}:=(\mathbb{E}_1\mathbb{F}_1(\mathbb{P}_{+}^{(1)})^{k_1}\mathbb{F}_1^{-1}\mathbb{E}_1^{-1})(\mathbb{E}_2\mathbb{F}_2(\mathbb{P}_{+}^{(2)})^{k_2}\mathbb{F}_2^{-1}\mathbb{E}_2^{-1})\dots(\mathbb{E}_m\mathbb{F}_m(\mathbb{P}_{+}^{(m)})^{k_m}\mathbb{F}_m^{-1}\mathbb{E}_m^{-1})$ = $\prod_{i=1}^{m} (\mathbb{E}_i\mathbb{F}_i(\mathbb{P}_{+}^{(i)})^{k_i}\mathbb{F}_i^{-1}\mathbb{E}_i^{-1})$

\end{center}

Now we consider the limit behavior of this operation matrix. Concretely, we let $k_i\to\infty$ sequentially. First when $k_1\to\infty$, by ,

$\lim_{k_1 \to \infty} \mathbb{O} = (\mathbb{E}_1\mathbb{F}_1(\lim_{k_1\to\infty}(\mathbb{P}_{+}^{(1)})^{k_1})\mathbb{F}_1^{-1}\mathbb{E}_1^{-1})(\mathbb{E}_2\mathbb{F}_2(\mathbb{P}_{+}^{(2)})^{k_2}\mathbb{F}_2^{-1}\mathbb{E}_2^{-1})\dots(\mathbb{E}_m\mathbb{F}_m(\mathbb{P}_{+}^{(m)})^{k_m}\mathbb{F}_m^{-1}\mathbb{E}_m^{-1})$

By \ref{super-individual}, we know that $\lim_{k_1\to\infty}(\mathbb{P}_{+}^{(1)})^{k_1} = (\mathbb{P}_{+}^{(1)})^{\infty}$

Similarly, we gain do $k_i \to \infty$ sequentially, again by , we know:

\begin{center}
    $\mathbb{O}^{(\infty)}:=\lim_{k_m \to \infty}\dots \lim_{k_2 \to \infty}\lim_{k_1 \to \infty} \mathbb{O} = (\mathbb{E}_1\mathbb{F}_1(\lim_{k_1\to\infty}(\mathbb{P}_{+}^{(1)})^{k_1})\mathbb{F}_1^{-1}\mathbb{E}_1^{-1})(\mathbb{E}_2\mathbb{F}_2(\lim_{k_2\to\infty}(\mathbb{P}_{+}^{(2)})^{k_2})\mathbb{F}_2^{-1}\mathbb{E}_2^{-1})\dots(\mathbb{E}_m\mathbb{F}_m(\lim_{k_m\to\infty}(\mathbb{P}_{+}^{(m)})^{k_m})\mathbb{F}_m^{-1}\mathbb{E}_m^{-1})=(\mathbb{E}_1\mathbb{F}_1(\mathbb{P}_{+}^{(1)})^{\infty}\mathbb{F}_1^{-1}\mathbb{E}_1^{-1})(\mathbb{E}_2\mathbb{F}_2(\mathbb{P}_{+}^{(2)})^{\infty}\mathbb{F}_2^{-1}\mathbb{E}_2^{-1})\dots(\mathbb{E}_m\mathbb{F}_m(\mathbb{P}_{+}^{(m)})^{\infty}\mathbb{F}_m^{-1}\mathbb{E}_m^{-1})$
\end{center}

We know that $(\mathbb{P}_{+}^{(i)})^{\infty}$ is of the form:

Where the zero columns represents the states that couldn't make $f|^{\widehat{x}}_{[i\cdot s+1,i\cdot s+s]}$ attain its maximum. Since we know the row permutation would preserve the zero columns, the column permutation would change the zero columns' position, but they still represents the states that couldn't make $f|^{\widehat{x}}_{[i\cdot s+1,i\cdot s+s]}$ attain its maximum respectively. We observe that for $\forall M,N\in \mathcal{M}_n$, if $N$'s $i$th column is a zero column, then the product $MN$'s $i$th column is also a zero column. Thus we know:

The columns of index i $\mathbb{O}^{(\infty)}$ which represents the states i that "$\exists k\in[1,m]$, s.t. $\pi_0(i)|_{[k\cdot s+1,k\cdot s+s]}$ is not the maximizer of $f|^{\widehat{x}}_{[k\cdot s+1,k\cdot s+s]}$", would be zero column by the previous argumentation, thus the only columns that are not zero column corresponds to those states i that $\pi_0(i)$ is the unique maximizer of f, that is the setting of Rudolph's convergence.


\section{Further discussions(optional)}



\begin{thebibliography}{99}

\end{thebibliography}


\end{document}
