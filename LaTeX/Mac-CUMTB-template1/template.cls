% vim:filetype=tex:tabstop=2
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{template}
% 将文档类参数全部传递给 ctexbook 文档类。
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax
% 此文档类以 ctexbook 为基础，设定页面尺寸为 A4，默认字号为小四号。
% CJKfntef 宏包提供了 \maketitle 中用到的 \CJKunderline 命令。
% fancyhdr 宏包提供了方便使用的命令用于设置页眉、页脚。
\LoadClass{ctexart}
% 此宏包提供图形支持。

\textwidth=165mm
 \textheight 242mm
\hoffset=-12mm
\voffset -17mm
\usepackage[thmmarks]{ntheorem}
\usepackage{fancyhdr}
 \pagestyle{plain}
\pagestyle{fancy}
\cfoot{\thepage}
\rhead{}
\lhead{}
\usepackage{amsfonts}
\usepackage{amssymb}
\usepackage{longtable}
\usepackage{mathrsfs}
\usepackage{array}
\usepackage{multirow}
\usepackage{booktabs}
\usepackage{multirow}
\usepackage[all,pdf]{xy}
\usepackage{setspace}
\usepackage{everb}
\usepackage{graphicx}
\usepackage{framed}
\usepackage{cprotect}
\usepackage{tabularx}
\usepackage{float}
\usepackage{listings}
\usepackage{pdfpages}
\usepackage{amsmath}
\usepackage{mathtools}
\usepackage{multirow,makecell}
\usepackage{longtable}
\usepackage{tocloft}
\usepackage{cases}
\usepackage{makeidx}
\usepackage[numbers,super,sort&compress,square]{natbib}
\usepackage{natbibspacing}
\usepackage{pifont}
\usepackage{booktabs}
\usepackage{cmap}
\usepackage{times}
\usepackage{titlesec}%调整标题段落
\usepackage{indentfirst}%首段缩进
\usepackage[T1]{fontenc}
\usepackage[pdfstartview=FitH,
CJKbookmarks=true,
bookmarksnumbered=true,
bookmarksopen=true,
colorlinks,
pdfborder=001,
linkcolor=blue,
anchorcolor=blue,
citecolor=blue,
]{hyperref}%去掉参考文献上的链接
\hypersetup{hidelinks}

\setCJKfamilyfont{zhHeiti}{Heiti SC}        %设置CJK字体黑体（需要在自己的电脑中找到黑体字体名来替换“SimHei”）
 \setCJKfamilyfont{zhSontii}{Songti SC}    %设置CJK字体宋体（需要在自己的电脑中找到宋体字体名来替换“SimSun”）

\newcommand*{\Heiti}{\CJKfamily{zhHeiti}} %使用黑体
\newcommand*{\Songti}{\CJKfamily{zhSongti}} 

\newcommand\tref[1]{定理\textup{\ref{#1}}}
\newcommand\cref[1]{推论\textup{\ref{#1}}}
\newcommand\lref[1]{引理\textup{\ref{#1}}}
\newcommand\turef[1]{图\textup{\ref{#1}}}
\allowdisplaybreaks[2]
\numberwithin{equation}{section}

\newtheorem{thm}{定理}[section]
\newtheorem{definition}{定义}[section]
\newtheorem{exmp}{例}
\newtheorem{lemma}{引理}[section]
\newtheorem{cor}{推论}[section]
\newtheorem*{solution}{\hspace{2em}解:}
{\theoremsymbol{\mbox{$\Box$}}
\newtheorem*{proof}{证明}}
\CTEXsetup[name={附录},number=\arabic{section}\hspace{-0.6cm}]{appendix}
\renewcommand\contentsname{\centerline{\Heiti\zihao{-3}目\quad\quad 录}}
\renewcommand\cftparskip{-5pt}

\titleformat*{\section}{\centering\bfseries\fontsize{15pt}{25pt}\Heiti\sffamily}%设置章节名字体
\titlespacing*{\section} {0pt}{25pt}{12.5pt}%设置章节的左距离、段前距、段间距
\titleformat*{\subsection}{\fontsize{14pt}{25pt}\Heiti\sffamily}
\titlespacing*{\subsection} {0pt}{12.5pt}{0pt}%调整子章节间距，教务处要求的实际上最后一个括号应为12.5pt,但给的样例是0pt
\titleformat*{\subsubsection}{\bfseries\fontsize{12pt}{25pt}\Songti\sffamily}
\titlespacing*{\subsubsection} {0pt}{0pt}{0pt}


\renewcommand\refname{
\vspace{25pt}
\begin{flushleft}
{\bfseries{\fontsize{15pt}{25pt}{\Heiti 参考文献}}}
\vspace{-40pt}
\end{flushleft}
}
\renewcommand\bibnumfmt[1]{\hspace{-0.1cm}［#1］\hspace{-0.1cm}}
 \bibliographystyle{chinesebst}
\endinput