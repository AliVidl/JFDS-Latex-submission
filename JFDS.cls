
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jpm}[2025/08/18 JPM Format Class]

\LoadClass[12pt]{article}

\usepackage[margin=1in]{geometry}
\usepackage{titlesec}
\usepackage{fancyhdr}
\usepackage{setspace}
\usepackage{graphicx}
\usepackage{caption}
\usepackage{authblk}
\usepackage{datetime}
\usepackage{natbib}
\usepackage{etoolbox}
\usepackage{tikz}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage[normalem]{ulem}

% Page number at bottom center
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyfoot[C]{\thepage}

% Single spacing
\renewcommand{\baselinestretch}{1.0}

% Section formatting - no numbering

\titleformat{\section}[block]{\normalfont\bfseries\MakeUppercase}{}{0pt}{}

\titleformat{\subsection}[block]{\normalfont\bfseries}{\thesubsection}{0pt}{\uline}

\titleformat{\subsubsection}[runin]{\normalfont\itshape}{}{0pt}{}[:]

\titlespacing*{\section}{0pt}{1.5ex plus .2ex minus .2ex}{1ex plus .2ex}
\titlespacing*{\subsection}{0pt}{1.25ex plus .2ex minus .2ex}{0.5ex plus .2ex}
\setcounter{secnumdepth}{0}

% Exhibit instead of Figure/Table
\renewcommand{\figurename}{Exhibit}
\renewcommand{\tablename}{Exhibit}

% Abstract formatting

\renewenvironment{abstract}{%
  \vspace{1ex}
  \begin{center}Abstract\end{center}
}{}

% Custom command for key findings
\newenvironment{keyfindings}{%
  \vspace{1ex}\noindent THREE KEY FINDINGS\begin{enumerate}
}{\end{enumerate}}

% Command for author bios
% \newcommand{\authorbio}[2]{%
%   \vspace{1ex}\noindent #1\\\texttt{#2}\par
% }

\newcommand{\authorbio}[4]{%
  \vspace{1ex}\noindent #1\\
  \uline{#2}\\
  #3\\
  #4\par
}

% No epigraphs or section numbers
\AtBeginDocument{%
  \let\epigraph\relax
}

% % Acknowledgment section
% \newcommand{\acknowledgments}{
%   \section*{Acknowledgments}
% }

\newenvironment{acknowledgments}{
  \section*{Acknowledgments}
}{}

% No paragraph indentation
\setlength{\parindent}{0pt}
\setlength{\parskip}{1ex plus 0.5ex minus 0.2ex}


% Centered, all-caps, bold, and 12pt \title formatting
\makeatletter
\renewcommand{\maketitle}{%
  \begin{center}
    {\bfseries \normalsize \MakeUppercase{\@title} \par}
    \vspace{1ex}
    {\normalsize \@date \par}
    \vspace{2ex}
    {\normalsize \@author \par}
  \end{center}
}
\makeatother


\makeatletter
\newcommand{\printtitleonly}{%
  \begin{center}
    \normalsize \MakeUppercase{\@title}
  \end{center}
}
\makeatother