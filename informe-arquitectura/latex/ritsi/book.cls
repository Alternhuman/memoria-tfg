\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ritsi/book}

\PassOptionsToClass{a4paper,12pt}{book}

\DeclareOption*{%
   \PassOptionsToClass{\CurrentOption}{book}%
}

\ProcessOptions\relax

\LoadClass{book}

\RequirePackage{ritsi/ritsi}
\RequirePackage[extendedfeature=title]{scrextend}
\RequirePackage{wallpaper}
\RequirePackage{float}

\newlength{\ritsiheight}
\setlength{\ritsiheight}{\baselineskip}
\addtolength{\ritsiheight}{1em}

\fancypagestyle{plain}{
   \fancyhf{}
   \fancyhead[RE,LO]{\color{rojoritsi}\emph{\@title}}
   \fancyhead[RO]{
      \begin{minipage}{0.5\textwidth}
      \begin{flushright}
      \color{rojoritsi}Reunión de Estudiantes de Ingenierías \\
      Técnicas y Superiores en Informática
      \ignorespacesafterend
      \end{flushright}
      \end{minipage}
      \begin{minipage}{1.3\ritsiheight}
      \vspace{-1em}
      \includegraphics[width=\textwidth]{img/ritsi-logo}
      \end{minipage}
   }
   \fancyhead[LE]{
      \begin{minipage}{1.3\ritsiheight}
      \includegraphics[width=\textwidth]{img/ritsi-logo}
      \end{minipage}
      \begin{minipage}{0.5\textwidth}
      \color{rojoritsi}Reunión de Estudiantes de Ingenierías \\
      Técnicas y Superiores en Informática
      \end{minipage}
   }
   \fancyfoot[LE,RO]{\color{rojoritsi}Página \thepage\ de \lastpageref*{pagesLTS.arabic.1}}
   \renewcommand{\headrulewidth}{0pt}
   \renewcommand{\footrulewidth}{0pt}
}

\AtBeginDocument{
   %\pagenumbering{arabic}
   \frontmatter
   \pagestyle{empty}
   \begin{titlepage}
      \ThisCenterWallPaper{1}{img/portada}
      \vspace*{6cm}
      \hspace*{67mm}
      %\makebox[0mm][c]{\color{white}\Huge\@title \\* \large\@author}
      \parbox{80mm}{\centering\color{white}\Huge\textbf{\@title} \\* \vspace{5mm} \emph{\LARGE\@author}}
   \end{titlepage}

   \mainmatter
   \thispagestyle{plain}
   \tableofcontents
   \cleardoublepage
   \pagestyle{plain}
   %\setcounter{page}{1}

}

\pagestyle{fancy}
