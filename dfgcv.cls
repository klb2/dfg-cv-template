\NeedsTeXFormat{LaTeX2e}%[1999/12/01]
\ProvidesClass{dfgcv}[2024/04/02 v0.1 class for creating the curriculum vitae for research grant proposals to DFG]
% author: Karl-Ludwig Besser
% email: karl.besser@princeton.edu

\RequirePackage{kvoptions}
\RequirePackage{etoolbox}

\SetupKeyvalOptions{family=cv,prefix=cv@}
\DeclareBoolOption[false]{firsttime}
\ProcessKeyvalOptions{cv}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\ProcessOptions\relax

\PassOptionsToClass{notitlepage,a4paper,11pt,parskip=half}{scrartcl}
\LoadClass{scrartcl}


%%% LANGUAGE %%%
\RequirePackage{babel}
\RequirePackage[babel]{microtype}
\RequirePackage{translations}


%%% FONTS %%%
\RequirePackage{helvet}
\setkomafont{section}{\normalsize\bfseries}
\setkomafont{subsection}{\normalsize\bfseries}
\renewcommand{\familydefault}{\sfdefault}
\renewcommand{\headfont}{\sffamily\footnotesize}


%%% MISC PACKAGES %%%
\RequirePackage[svgnames,dvipsnames]{xcolor}


%%% LAYOUT AND GEOMETRY %%%
\setcounter{secnumdepth}{\partnumdepth}
\RequirePackage{geometry}
\RequirePackage{scrlayer-scrpage}
\RequirePackage{lastpage}

\RedeclareSectionCommand[afterskip=.5em plus .5em minus .5em]{section}
\RedeclareSectionCommand[afterskip=.5em plus .5em minus .5em]{subsection}

\geometry{headheight=28pt, tmargin=70pt, lmargin=55pt, rmargin=55pt, bmargin=70pt}

\renewcommand*{\pagemark}{\GetTranslation{page}~\thepage~\GetTranslation{of}~\pageref{LastPage}} %\pageref{LastPage}

\ohead*{\pagemark}
\cfoot*{}
\chead{}

\renewcommand*{\arraystretch}{1.25}


%%% COMMANDS %%%
\newcommand*{\hint}[1]{\textcolor{gray}{\textit{#1}}}
\newcommand*{\important}[1]{\textcolor{red}{\textit{#1}}}


\renewcommand*{\maketitle}{\textbf{Curriculum Vitae}\par\medskip}