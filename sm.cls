\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sm}[2019/03/01 Semana do Matematico Package]
\LoadClass[a4paper,12pt]{article}
\RequirePackage[top=2cm,bottom=2cm,left=2cm,right=2cm]{geometry}
\RequirePackage{helvet}													% Arial like font
\RequirePackage{graphicx}												% Load graphics
\RequirePackage{fancyhdr}												% Fancy header
\pagestyle{fancy}													   

\RequirePackage[explicit]{titlesec}
\titleformat{\section}{\bfseries\itshape\centering}{\MakeUppercase{#1}}{0em}{}[]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DEFINING VARIABLES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\titulo}[1]{\def\@titulo{#1}}
\newcommand{\autores}[1]{\def\@autores{#1}}
\newcommand{\curso}[1]{\def\@curso{#1}}
\newcommand{\orientadores}[1]{\def\@orientadores{#1}}
\newcommand{\evento}[1]{\def\@evento{#1}}
\newcommand{\periodo}[1]{\def\@periodo{#1}}
\newcommand{\cabecalho}[1]{\def\@cabecalho{#1}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PARAGRAPH SETUP
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\familydefault}{\sfdefault}		% Default font to Helvetica (like Arial)
\linespread{1.25}														% Set separation 1.5  (1.2 * 1.25)
\setlength{\parindent}{0pt}									% No identation


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FANCY PAGE SEUPT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Header setup
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\addtolength{\headheight}{6\baselineskip}		% Header spacing
\renewcommand{\headrulewidth}{0.0pt}				% No ruler in header

\fancyhead[L]{\includegraphics[height=3cm,keepaspectratio]{sm.png}}
\fancyhead[C]{%
	\textit{\textbf{\@evento}}\\
	\vspace{0.2cm}
	\textit{\textbf{\@periodo}}\\
	\vspace{\baselineskip}
	\textit{\textbf{\@cabecalho}}
}
\fancyhead[R]{\includegraphics[height=2.5cm,keepaspectratio]{uerj.png}}


% Footer setup
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\textheight}{600pt}
\addtolength{\footskip}{3\baselineskip}			% Footer spacing
\renewcommand{\footrulewidth}{0.0pt}				% No ruler in footer

\fancyfoot[L]{\includegraphics[height=2cm,keepaspectratio]{ime.png}}
\fancyfoot[C]{%
	\includegraphics[height=2cm,keepaspectratio]{gemat.png}
	\hspace{1cm}
	\includegraphics[height=2cm,keepaspectratio]{mategramatica.png}
}
\fancyfoot[R]{\includegraphics[height=2cm,keepaspectratio]{eaem.png}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Redefining some command

\newcommand{\mostratitulo}{%
	\begin{center}
		\textit{\textbf{\MakeUppercase{\@titulo}}}\par
	\end{center}
}

\newcommand{\mostradados}{%
	{\raggedleft
	\textit{\textbf{\@autores}}\par
	\textit{\textbf{\@curso}}\par
	\textit{\textbf{Orientadores: \@orientadores}}\par
	\vspace{\baselineskip}
	}
}


\endinput

