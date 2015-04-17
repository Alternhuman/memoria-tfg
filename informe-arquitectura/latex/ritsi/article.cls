\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ritsi/article}[2013/04/22 RITSI Article]

\PassOptionsToClass{a4paper,11pt}{scrartcl}

\DeclareOption*{%
   \PassOptionsToClass{\CurrentOption}{scrartcl}%
}

\ProcessOptions\relax

\LoadClass{scrartcl}

\RequirePackage{ritsi/ritsi}

\fancypagestyle{plain}{
   \fancyhf{}
   \fancyhead[R]{\color{rojoritsi}\emph{\@title}}
   \fancyfoot[L]{\color{rojoritsi}Reunión de Estudiantes de Ingenierías Técnicas y Superiores en Informática}
   \fancyfoot[R]{\color{rojoritsi}Página \thepage\ de \lastpageref*{LastPage}}
   \renewcommand{\headrulewidth}{0pt}
   \renewcommand{\footrulewidth}{0pt}
}

\fancypagestyle{firstpage}{
   \fancyhf{}
   \fancyhead[L]{\includegraphics[height=19mm]{img/cabecera-documento}}
   \fancyhead[R]{\color{rojoritsi}\textbf{\@title}\\\@author}
   \fancyfoot[L]{\color{rojoritsi}Reunión de Estudiantes de Ingenierías Técnicas y Superiores en Informática}
   \fancyfoot[R]{\color{rojoritsi}Página \thepage\ de \lastpageref*{LastPage}}
   \renewcommand{\headrulewidth}{0pt}
   \renewcommand{\footrulewidth}{0pt}
}

\AtBeginDocument{
   \thispagestyle{firstpage}
   \pagenumbering{arabic}
}

\pagestyle{plain}
