\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\usepackage{enumitem}
\usepackage[hidelinks]{hyperref}
\usepackage[hmargin=1.25cm, vmargin=0cm]{geometry}

\setitemize{noitemsep,parsep=0pt,partopsep=0pt}

\usepackage[usenames,dvipsnames]{xcolor}

\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A} 
\definecolor{subheadings}{HTML}{333333} 
\definecolor{date}{HTML}{666666}

\usepackage{fontspec} 
\setmainfont[Color=primary, Numbers=OldStyle]{TeX Gyre Pagella}
\setsansfont[Numbers=OldStyle]{TeX Gyre Pagella}
\setlist[tightitemize]{leftmargin=*}

\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}

\setlength{\TPHorizModule}{0.01\paperwidth}
\setlength{\TPVertModule}{0.01\paperwidth}
\newcommand{\lastupdated}{
  \begin{textblock}{25}(75,2)
  \color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont
  References available on request
  \end{textblock}
}

% MAIN HEADING:
\newcommand\mybox[3][c]{\setbox0\hbox{#2}\fbox{\makebox[\the\wd0][#1]{#3}}}
\definecolor{color1bg}{HTML}{000080}
\usepackage[scale=0.75]{geometry}
\usepackage{tikz}
\usetikzlibrary{tikzmark}
\newcommand{\namesection}[3]{ 
  \begin{textblock}{25}(75,2)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont
References available on request
\end{textblock}
    \begin{tikzpicture}[remember picture,overlay]
        \fill[color1bg]
          (current page.north west) rectangle ([yshift=-2.5cm]current page.east|-{pic cs:end});
        \end{tikzpicture}    

% Main heading command:
\centering{ % Name
  \color{white}
  \fontsize{30pt}{50pt}
  \fontspec[Numbers=OldStyle]{TeX Gyre Pagella}\selectfont #1
  \fontspec[Numbers=OldStyle]{TeX Gyre Pagella}\selectfont #2
} \\[5pt]
\centering{ % Contact info
  \color{white}
  \fontspec[Numbers=OldStyle]{TeX Gyre Pagella}\fontsize{11pt}{14pt}\selectfont #3}
  \vspace{5pt} 
  \color{black}
}

\usepackage{titlesec}

\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionspace}{\vspace{8pt}}

\titleformat{\section}{
  \color{black}\scshape\fontspec[Numbers=OldStyle]{TeX Gyre Pagella}\fontsize{14pt}{24pt}\selectfont \raggedright\uppercase
}{}{0em}{}

\titleformat{\subsection}{
  \color{subheadings}\fontspec[Numbers=OldStyle]{TeX Gyre Pagella}\fontsize{10pt}{10pt}\selectfont\bfseries\uppercase
}{}{0em}{}

\newcommand{\runsubsection}[1]{
  \color{subheadings}\fontspec[Numbers=OldStyle]{TeX Gyre Pagella}\fontsize{10pt}{10pt}\selectfont\bfseries\uppercase {#1} \normalfont
}

\newcommand{\descript}[1]{
  \color{subheadings}\raggedright\scshape\fontspec[Numbers=OldStyle]{TeX Gyre Pagella}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont
}

\newcommand{\location}[1]{
  \color{headings}\raggedright\fontspec[Numbers=OldStyle]{TeX Gyre Pagella}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont
}

\newenvironment{tightitemize}
{\vspace{-\topsep}\begin{itemize}\itemsep1pt \listparindent0pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}