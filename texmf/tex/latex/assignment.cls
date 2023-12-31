\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{assignment}[2023/08/21 v1.0 Assignment class]

\LoadClass{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{cancel}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{mathtools}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{bm}
\RequirePackage{thmtools}
\RequirePackage{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage[framemethod=TikZ]{mdframed}

\newcommand\N{\ensuremath{\mathbb{N}}}
\newcommand\R{\ensuremath{\mathbb{R}}}
\newcommand\Z{\ensuremath{\mathbb{Z}}}
\renewcommand\O{\ensuremath{\emptyset}}
\newcommand\Q{\ensuremath{\mathbb{Q}}}
\newcommand\C{\ensuremath{\mathbb{C}}}

\let\implies\Rightarrow
\let\impliedby\Leftarrow
\let\iff\Leftrightarrow

\definecolor{catblue}{RGB}{30, 102, 245}
\definecolor{catlav}{RGB}{114, 135, 253}
\definecolor{catmauve}{RGB}{136, 57, 239}
\definecolor{catsapp}{RGB}{32, 159, 181}
\definecolor{catpeach}{RGB}{254, 100, 11}
\definecolor{catmaroon}{RGB}{230, 69, 83}

\mdfsetup{skipabove=1em,skipbelow=0em}

\colorlet{thmcolor}{catmauve}
\declaretheoremstyle[
    headfont=\sffamily\bfseries\color{thmcolor!80!black},
    mdframed={
        linewidth=2pt,
        rightline=false, topline=false, bottomline=false,
        linecolor=thmcolor, backgroundcolor=thmcolor!10,
    }
]{thmsty}

\colorlet{excolor}{catlav}
\declaretheoremstyle[
    headfont=\sffamily\bfseries\color{excolor!80!black},
    mdframed={
        linewidth=2pt,
        rightline=false, topline=false, bottomline=false,
        linecolor=excolor, backgroundcolor=excolor!10,
    }
]{exsty}

\colorlet{lemcolor}{catsapp}
\declaretheoremstyle[
    headfont=\sffamily\bfseries\color{lemcolor!80!black},
    mdframed={
        linewidth=2pt,
        rightline=false, topline=false, bottomline=false,
        linecolor=lemcolor, backgroundcolor=lemcolor!10,
    }
]{lemsty}

\colorlet{defcolor}{catpeach}
\declaretheoremstyle[
    headfont=\sffamily\bfseries\color{defcolor!80!black},
    mdframed={
        linewidth=2pt,
        rightline=false, topline=false, bottomline=false,
        linecolor=defcolor, backgroundcolor=defcolor!10,
    }
]{defsty}

\colorlet{propcolor}{catmaroon}
\declaretheoremstyle[
    headfont=\sffamily\bfseries\color{propcolor!80!black},
    mdframed={
        linewidth=2pt,
        rightline=false, topline=false, bottomline=false,
        linecolor=propcolor, backgroundcolor=propcolor!10,
    }
]{propsty}

\colorlet{remcolor}{catblue}
\declaretheoremstyle[
    headfont=\sffamily\bfseries\color{remcolor!80!black},
    mdframed={
        linewidth=2pt,
        rightline=false, topline=false, bottomline=false,
        linecolor=remcolor,
    }
]{remsty}

\newcommand\defprf[1]{
\declaretheoremstyle[
    headfont=\sffamily\bfseries\color{#1color!80!black},
    mdframed={
        linewidth=2pt,
        rightline=false, topline=false, bottomline=false,
        linecolor=#1color, backgroundcolor=#1color!3,
    }, qed=\qedsymbol
]{prf#1}
\declaretheorem[style=prf#1,title=Proof,numbered=no]{proof#1}
}

\declaretheorem[style=remark]{case}
\declaretheorem[style=remsty,numbered=no]{remark}
\declaretheorem[style=thmsty,title=Theorem]{theoremenv}
\declaretheorem[style=exsty,title=Example]{exampleenv}
\declaretheorem[style=lemsty,title=Lemma]{lemmaenv}
\declaretheorem[style=defsty,title=Defintion]{definitionenv}
\declaretheorem[style=propsty,title=Proposition]{propositionenv}

\newcommand\defblock[2]{
    \newenvironment{#1}{\gdef\lastenv{#2}\begin{#1env}}{\end{#1env}}
    \defprf{#2}
}

\defblock{theorem}{thm}
\defblock{lemma}{lem}
\defblock{example}{ex}
\defblock{definition}{def}
\defblock{proposition}{prop}

\renewenvironment{proof}[1][\proofname]{\vspace{-10pt}\begin{proof\lastenv}}{\end{proof\lastenv}}

\pagestyle{fancy}

\makeatletter
\newcommand*{\student}[1]{\gdef\@student{#1}%
}
\newcommand*{\@student}{(STUDENT)}
\newcommand*{\teacher}[1]{\gdef\@teacher{#1}%
}
\newcommand*{\@teacher}{(TEACHER)}
\newcommand*{\course}[1]{\gdef\@course{#1}%
}
\newcommand*{\@course}{(COURSE)}
\newcommand*{\homeworkcount}[1]{\gdef\@homeworkcount{#1}%
}
\newcommand*{\@homeworkcount}{(N)}
\newcommand*{\duedate}[1]{\gdef\@duedate{#1}%
}
\newcommand*{\@duedate}{(DUE DATE)}
\newcommand*{\homeworktype}[1]{\gdef\@homeworktype{#1}%
}
\newcommand*{\@homeworktype}{(HOMEWORK TYPE)}

\rhead{ {\@course\unskip\strut}\ {\@homeworktype\unskip\strut}\ {\@homeworkcount\unskip\strut}\ --- {\@duedate\unskip\strut} }
\lhead{\thepage\ {\@student\unskip\strut} }
\title{ {E\&M\unskip\strut}\ {Problem Set\unskip\strut}\ {2\unskip\strut} }
\title{ {\@course\unskip\strut}\ {\@homeworktype\unskip\strut}\ {\@homeworkcount\unskip\strut} }
\author{ {\@teacher\unskip\strut}\\ {\@student\unskip\strut} }
% \date{ {\@duedate\unskip\strut} }
\makeatother

