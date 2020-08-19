\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{systems-doc}[2017/03/20 by Carlos]

\LoadClass[12pt,a4paper]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage{times}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage[top=2.5cm,left=2cm,bottom=3.5cm,right=1.5cm,foot=10pt]{geometry}
\RequirePackage{tikz}
\RequirePackage{systems-doc}

\usepackage{tabu}
\usepackage{array}
\usepackage{subfiles}
\usepackage{calc}
\usepackage{lipsum}
\usepackage[absolute]{textpos}
\usetikzlibrary{calc}
\usepackage[T1]{fontenc}
\usepackage{lastpage}
\usepackage{multicol}
\usepackage{color}
\usepackage{adjustbox}

\setlength{\columnseprule}{1pt}

\newcommand{\sede}{Sede: Av. dos Astronautas, 1758, 12227-010 São José dos Campos (SP) Brasil tel + 55-12-32086000}
\newcommand{\crn}{CRN: }

\DeclareOption{nanosatcbr2}{
\newcommand{\id}{NCBR2}
}
\DeclareOption{labvvsis}{
\newcommand{\id}{LabV\&VSis}
}
\ProcessOptions\relax

\newcommand{\nbr}[1]{#1}

\newcommand{\doc}{\the\day /\the\month /\the\year}%{\nbr~/~\the\year~--~\id}

\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\pagestyle{fancy}
\renewcommand{\headrulewidth}{0.5pt}

\setlength\headheight{33pt}
\fancyheadoffset{\oddsidemargin +0.0cm}
%\lhead{}
\lhead{
    NANOSATC-BR2
}
\rhead{
    Ver.0.1\\
    Data: \today
}
\fancyfoot{}
\setlength\footskip{15pt}
\definecolor{footcolor}{rgb}{0,0,255}
\cfoot{}
\rfoot{\thepage/\pageref{LastPage}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\fancypagestyle{frente}{
    \renewcommand{\headrulewidth}{0.5pt}
    \setlength\headheight{33pt}
    \fancyheadoffset{\oddsidemargin +0.0cm}
    \lhead{}
    \lhead{NANOSATC-BR2}
    \rhead{Ver.0.1 \\ \today}
    \fancyfoot{}
    \setlength\footskip{15pt}
    \definecolor{footcolor}{rgb}{0,0,255}
    \cfoot{\\INSTITUTO NACIONAL DE PESQUISAS ESPACIAIS - INPE/MCTIC\\        São José dos Campos -- SP, Brasil}
    \rfoot{}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand*{\maketitle}{%
\begin{titlepage}
    \thispagestyle{frente}
    {\centering\includegraphics[width=3cm]{logo_inpe/inpe_logo.png}\par}
	\vspace{1cm}
	\centering
{\scshape\LARGE CubeDesign \par}
\vspace{1cm}
{\scshape\Large\@project\unskip\strut\par}
\vspace{1.5cm}
{\huge\bfseries\@title\unskip\strut\par}
\vspace{10cm}
\begin{tabular}{p{0.3\textwidth}|p{0.65\textwidth}}
    \textbf{Criado por:} & \@author \\ \hline
    \textbf{Revisado por:} & \@verif\\ \hline
    \textbf{Autorizado por:} & \@app\\
\end{tabular}
\vfill

\vfill

\end{titlepage}
}

\endinput