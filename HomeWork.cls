%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% HomeWork.cls - 李奕则作业模板类文件
% 注意：使用 XeLaTeX 编译！尤其在 Overleaf 中请设置编译器！
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ========== 基础定义与包加载（不建议修改） ==========
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{HomeWork}[by LiYiBei]

\LoadClass[12pt]{article}

% 版式与功能支持
\RequirePackage[margin=1in]{geometry}
\RequirePackage{amsmath, amssymb, amsthm, amsfonts}
\RequirePackage{xcolor, graphicx, float, zhnumber, subcaption, booktabs, bm}
\RequirePackage{fancyhdr}
\RequirePackage{mdframed, tikz}
\RequirePackage{hyperref}
\RequirePackage{enumitem}
\RequirePackage{ctex}
\RequirePackage[style=numeric]{biblatex}
\RequirePackage{listings, titling, tabularx, multirow}

% ========== SPSS 代码高亮设置 ==========
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{PineGreen}{rgb}{0,0.47,0.45}
\definecolor{NavyBlue}{rgb}{0,0,0.5}

\lstdefinelanguage{SPSS}{
    morekeywords={
        COMPUTE, FREQUENCIES, DESCRIPTIVES, CROSSTABS, VARIABLE, LABELS, VALUE, LABEL, IF,
        ELSE, LOOP, END, RECODE, EXECUTE, FORMATS, DATASET, DISPLAY, BEGIN, END, DO,
        DOIF, ELSEIF, ENDIF, SELECT, TEMPORARY, MATCH FILES, ADD FILES, SAVE, GET,
        FILE, DATA, LIST, USE, T-TEST, ANOVA, REGRESSION, CORRELATIONS, FACTOR, RELIABILITY,
        GRAPH, EXAMINE, OMS, OMSEND, OUTPUT, SHOW, TITLE, SUBTITLE
    },
    sensitive=true,
    morecomment=[l]{*-},      % 使用 "*-" 开头作为注释
    morestring=[b]"           % 使用双引号作为字符串符号
}

\lstset{
    language=SPSS,
    tabsize=4,
    captionpos=b,
    numbers=left,
    numbersep=1em,
    frame=shadowbox,
    breaklines=true,
    keepspaces=true,
    showtabs=false,
    showspaces=false,
    showstringspaces=false,
    breakatwhitespace=false,
    keywordstyle=\color{NavyBlue}\bfseries,
    commentstyle=\color{codegreen},
    stringstyle=\color{PineGreen!90!black},
    numberstyle=\color{gray},
    rulesepcolor=\color{red!20!green!20!blue!20},
    basicstyle=\ttfamily\small
}

% ========== 超链接设置 ==========
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    filecolor=magenta,
    urlcolor=blue
}

% ========== 页眉页脚设置 ==========
\pagestyle{fancy}

% ========== 自定义环境（问题、解答、笔记） ==========
\newenvironment{note}{
  \begin{mdframed}[
    backgroundcolor=blue!10,
    linecolor=blue!70,
    linewidth=1pt,
    roundcorner=10pt,
    innertopmargin=6pt, innerbottommargin=6pt,
    innerleftmargin=10pt, innerrightmargin=10pt,
    skipabove=10pt, skipbelow=10pt
  ]
  \noindent
  \tikz[baseline=-0.5ex]{
    \filldraw[fill=blue!70, draw=blue!90, line width=0.7pt, rounded corners=2pt]
      (0,0) rectangle (1.2em,1.2em);
    \node[text=white, font=\bfseries] at (0.6em,0.6em) {笔};
  }\hspace{0.6em}
  \textbf{\large 笔记}\par\vspace{4pt}
}{
  \end{mdframed}
}

\newenvironment{prb}{
  \begin{mdframed}[
    backgroundcolor=red!10,
    linecolor=red!70,
    linewidth=1pt,
    roundcorner=10pt,
    innertopmargin=6pt, innerbottommargin=6pt,
    innerleftmargin=10pt, innerrightmargin=10pt,
    skipabove=12pt, skipbelow=6pt
  ]
  \noindent
  \tikz[baseline=-0.5ex]{
    \filldraw[fill=red!70, draw=red!90, line width=0.7pt, rounded corners=2pt]
      (0,0) rectangle (1.2em,1.2em);
    \node[text=white, font=\bfseries] at (0.6em,0.6em) {问};
  }\hspace{0.6em}
  \textbf{\large 问题：}\par\vspace{4pt}
}{
  \end{mdframed}
}

\newenvironment{soln}{
  \begin{mdframed}[
    backgroundcolor=blue!10,
    linecolor=blue!70,
    linewidth=1pt,
    roundcorner=10pt,
    innertopmargin=6pt, innerbottommargin=6pt,
    innerleftmargin=10pt, innerrightmargin=10pt,
    skipabove=6pt, skipbelow=12pt
  ]
  \noindent
  \tikz[baseline=-0.5ex]{
    \filldraw[fill=blue!70, draw=blue!90, line width=0.7pt, rounded corners=2pt]
      (0,0) rectangle (1.2em,1.2em);
    \node[text=white, font=\bfseries] at (0.6em,0.6em) {解};
  }\hspace{0.6em}
  \textbf{\large 解决思路：}\par\vspace{4pt}
}{
  \end{mdframed}
}

% ========== 小节编号格式切换 ==========
\makeatletter
\newcommand{\subsectionWithoutSectionNum}{%
  \renewcommand\thesubsection{\arabic{subsection}}%
}
\newcommand{\subsectionWithSectionNum}{%
  \renewcommand\thesubsection{\thesection.\arabic{subsection}}%
}
\makeatother

% ========== 以下为用户自定义常用命令 ==========

% 数学符号简写
\renewcommand{\epsilon}{\varepsilon}
\newcommand\pa\partial
\newcommand{\del}{\Delta}
\newcommand{\ol}[1]{\overline{#1}}

% 累乘上下标
\newcommand{\mlp}[2]{\underset{#1}{\overset{#2}{\varPi}}}

% 罗马数字输出（大写）
\newcommand{\bigroman}[1]{\uppercase\expandafter{\romannumeral#1}}

% 常用集合
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\N}{\mathbb{N}}

% 枚举序号样式
\setlist[enumerate]{label=(\arabic*)}
\newcommand{\prenum}[1]{\setcounter{enumi}{#1}}

% 图片插入简化命令
\newcommand{\pic}[3]{%
  \begin{figure}[H]
    \centering
    \includegraphics[width=#3\textwidth]{pic/#1.png}
    \caption{#2}
  \end{figure}
}

% ========= fancyhdr 页眉高度修正 =========
\setlength{\headheight}{15pt}
\addtolength{\topmargin}{-3pt}