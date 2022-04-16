%----------------------------------------------------------------------------------------
%	CLASS OPTIONS AND REQUIRED PACKAGES
%----------------------------------------------------------------------------------------

\ProvidesClass{deedy-resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\usepackage[hmargin=1.25cm, vmargin=0cm]{geometry} % Specifies horizontal and vertical page margins
\usepackage[hidelinks]{hyperref} % Required for links

\usepackage{enumitem}

\setitemize{noitemsep,parsep=0pt,partopsep=0pt}

%----------------------------------------------------------------------------------------
%	COLOURS
%----------------------------------------------------------------------------------------

\usepackage[usenames,dvipsnames]{xcolor} % Required for custom colors

\definecolor{primary}{HTML}{2b2b2b} % The primary document color for content text
\definecolor{headings}{HTML}{6A6A6A} % The color of the large sections
\definecolor{subheadings}{HTML}{333333} % The color of subsections and places worked/studied
\definecolor{date}{HTML}{666666} % The color used for the Last Updated text at the top right

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------

\usepackage{fontspec} % Required for specifying custom fonts in XeLaTeX

\setmainfont[Color=primary, Numbers=OldStyle]{TeX Gyre Pagella} % The primary font for content text; defines bold, italic and bold-italic as well

\setsansfont[Numbers=OldStyle]{TeX Gyre Pagella}

\setlist[tightitemize]{leftmargin=*}

%----------------------------------------------------------------------------------------
%	LAST UPDATED COMMAND
%----------------------------------------------------------------------------------------

\usepackage[absolute]{textpos} % Required for positioning the Last Updated text at the top right of the page
\usepackage[UKenglish]{isodate} % Prints the Last Updated date in UK English format

\setlength{\TPHorizModule}{0.01\paperwidth} % Sets the units for the horizontal position used in the \begin{textblock} argument
\setlength{\TPVertModule}{0.01\paperwidth} % Sets the units for the vertical position used in the \begin{textblock} argument
\newcommand{\lastupdated}{ % Create a new command for printing the Last Updated text
\begin{textblock}{25}(75,2) % The position of the Last Updated text on the page (75% of the page across, 2% down)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont % Text styling of the text
References available on request
\end{textblock}}

%----------------------------------------------------------------------------------------
%	MAIN HEADING COMMAND
%----------------------------------------------------------------------------------------
\newcommand\mybox[3][c]{\setbox0\hbox{#2}\fbox{\makebox[\the\wd0][#1]{#3}}}
\definecolor{color1bg}{HTML}{000080}
\usepackage[scale=0.75]{geometry}
\usepackage{tikz}
\usetikzlibrary{tikzmark}
\newcommand{\namesection}[3]{ 
  \begin{textblock}{25}(75,2) % The position of the Last Updated text on the page (75% of the page across, 2% down)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont % Text styling of the text
References available on request
\end{textblock}
    \begin{tikzpicture}[remember picture,overlay]
        \fill[color1bg]
          (current page.north west) rectangle ([yshift=-2.5cm]current page.east|-{pic cs:end});
        \end{tikzpicture}    

% Defines the command for the main heading
\centering{
\color{white} % Center the name
\fontsize{30pt}{50pt} % Font size
\fontspec[Numbers=OldStyle]{TeX Gyre Pagella}\selectfont #1 % First name font
\fontspec[Numbers=OldStyle]{TeX Gyre Pagella}\selectfont #2 % Last name font
} \\[5pt] % Whitespace between the name and contact information
\centering{
\color{white} % Center the name
 % Center the contact information
\fontspec[Numbers=OldStyle]{TeX Gyre Pagella}\fontsize{11pt}{14pt}\selectfont #3} % Contact information font
\vspace{5pt} % Reduce whitespace after the rule slightly
\color{black} % Center the name
}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\usepackage{titlesec} % Required for customizing section/subsection/etc titles

\titlespacing{\section}{0pt}{0pt}{0pt} % Removes the spacing around the main section titles
\titlespacing{\subsection}{0pt}{0pt}{0pt} % Removes the spacing around the subsections
\newcommand{\sectionspace}{\vspace{8pt}} % Defines a command to add a set amount of space after sections and subsections

\titleformat{\section}{ % Customize the large section titles
\color{black}\scshape\fontspec[Numbers=OldStyle]{TeX Gyre Pagella}\fontsize{14pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

\titleformat{\subsection}{ % Customize the subsections and places worked/studied titles
\color{subheadings}\fontspec[Numbers=OldStyle]{TeX Gyre Pagella}\fontsize{10pt}{10pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{ % Used for creating subsections where a description is required on the same line
\color{subheadings}\fontspec[Numbers=OldStyle]{TeX Gyre Pagella}\fontsize{10pt}{10pt}\selectfont\bfseries\uppercase {#1} \normalfont}

\newcommand{\descript}[1]{ % Used for describing the subsection either on the same line or underneath
\color{subheadings}\raggedright\scshape\fontspec[Numbers=OldStyle]{TeX Gyre Pagella}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

\newcommand{\location}[1]{ % Used for specifying a duration and/or location under a subsection
\color{headings}\raggedright\fontspec[Numbers=OldStyle]{TeX Gyre Pagella}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\newenvironment{tightitemize} % Defines the tightitemize environment which modifies the itemize environment to be more compact
{\vspace{-\topsep}\begin{itemize}\itemsep1pt \listparindent0pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

