\NeedsTeXFormat{LaTeX2e}[1994/12/01]
\ProvidesClass{CNUthesisX}[2013/04/12 CNU bachelor thesis document class, version 1.0.0 by WanHoo]

%%打印排印信息： Typeset by \LaTeX{} with Package \texttt{CNUthesisX}}
\newif\ifcnu@typesetinfo\cnu@typesetinfofalse
\DeclareOption{typesetinfo}{\cnu@typesetinfotrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions
\LoadClass[12pt,a4paper,fancyhdr,fntef]{ctexbook}
%% config file
\AtEndOfPackage{\makeatletter\input{CNUthesisX.cfg}\makeatother}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%装载用到的宏包%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage[integrals]{wasysym}
\RequirePackage[sort,numbers]{natbib}
\bibliographystyle{unsrtnat}%plainnat
\RequirePackage{tabularx}
\RequirePackage{longtable}
%%它定义了三条划线命令：\toprule、\midrule 和\bottomrule，可分别对表格顶部、中部和底部使用不同粗细的水平线
\RequirePackage{booktabs}
\RequirePackage{amsthm}
\RequirePackage{bbm}
\RequirePackage{bm}
\RequirePackage{indentfirst}
\RequirePackage{ifthen}
\RequirePackage{caption}
\RequirePackage{hyperref}
\RequirePackage{array}
\RequirePackage{subfigure}
\RequirePackage{color}
\RequirePackage{xcolor}
\RequirePackage{colortbl}
\RequirePackage{graphicx}
\RequirePackage{multicol}
\RequirePackage{multirow}
\RequirePackage{titletoc}
\RequirePackage{pifont}%%和下面的宏包一起来实现带圈脚标
\RequirePackage[perpage,symbol*]{footmisc}
\RequirePackage{setspace}
%\RequirePackage[chapter,notlot,notlof,nottoc,notbib]{tocbibind}
%\RequirePackage[subfigure]{tocloft}
\RequirePackage{xpatch}%%
%%enumitem宏包做一个首行空两格，第二行顶格的列表环境
%%http://bbs.chinatex.org/forum.php?mod=viewthread&tid=7219
\RequirePackage{enumitem}
\setenumerate{fullwidth,itemindent=2em,itemsep=0ex,partopsep=0pt,parsep=0ex}
\setmainfont[Ligatures=TeX]{Times New Roman}%%英文使用Times New Roman字体

%% 使用华文中宋作为加粗宋体（PS：直接加粗太丑了……）
\setCJKfamilyfont{cusong}{STZhongsong}
\newcommand{\cusong}{\CJKfamily{cusong}} 

%%图表连续编号，与章节无关
\RequirePackage{remreset}
\@removefromreset{table}{chapter}
\@removefromreset{figure}{chapter}
\renewcommand{\thetable}{\arabic{table}}
\renewcommand{\thefigure}{\arabic{figure}}
\captionsetup{labelsep=space}
\renewcommand\captionfont{\wuhao}

%%在正文中无论是否在图形环境中，用 \figcaption 均可得到图形标题
%%同样，无论是否在表格环境中，用 \tabcaption 均可得到表格标题。
\newcommand\figcaption{\def\@captype{figure}\caption} 
\newcommand\tabcaption{\def\@captype{table}\caption}

%%提供表格环境下p{width}加强版命令，使用L{width}等可以在指定宽度的同时指定对齐方式。
\newcommand{\PreserveBackslash}[1]{\let\temp=\\#1\let\\=\temp} 
\newcolumntype{C}[1]{>{\PreserveBackslash\centering}p{#1}} 
\newcolumntype{R}[1]{>{\PreserveBackslash\raggedleft}p{#1}} 
\newcolumntype{L}[1]{>{\PreserveBackslash\raggedright}p{#1}} 

%%Superscript reference
\newcommand{\scite}[1]{\textsuperscript{\cite{#1}}}

%%手动调整:调整字间距，使之和模版一致
\renewcommand{\CJKglue}{\hskip 0pt minus 0.01\baselineskip} 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%中文%%%%%%%%%%%%%%%%%%%%%%%%%%%
%autoref option of hyperref
\def\equationautorefname{式}%
\def\footnoteautorefname{脚注}%
\def\itemautorefname{项}%
\def\figureautorefname{图}%
\def\subfigureautorefname{图}%
\def\tableautorefname{表}%
\def\partautorefname{篇}%
\def\appendixautorefname{附录}%
\def\chapterautorefname{章}%
\def\sectionautorefname{节}%
\def\subsectionautorefname{小节}%
\def\theoremautorefname{定理}%
\def\assumptionautorefname{假设}
\def\propertyautorefname{性质}%

%theorems 
\newtheorem{theorem}{\textbf{\hspace{0.7pt}定理}}[section] 
\newtheorem{lemma}{\textbf{\hspace{0.7pt}引理}}[section] 
\newtheorem{example}{\textbf{\hspace{0.7pt}例}}[section]             
\newtheorem{algorithm}{\textbf{\hspace{0.7pt}算法}}[section] 
\newtheorem{definition}{\textbf{\hspace{0.7pt}定义}}[section] 
\newtheorem{axiom}{\textbf{\hspace{0.7pt}公理}}[section] 
\newtheorem{property}{\textbf{\hspace{0.7pt}性质}}[section] 
\newtheorem{proposition}{\textbf{\hspace{0.7pt}命题}}[section] 
\newtheorem{corollary}{\textbf{\hspace{0.7pt}推论}}[section] 
\newtheorem{remark}{\textbf{\hspace{0.7pt}注解}}[section] 
\newtheorem{condition}{\textbf{\hspace{0.7pt}条件}}[section] 
\newtheorem{conclusion}{\textbf{\hspace{0.7pt}结论}}[section] 
\newtheorem{assumption}{\textbf{\hspace{0.7pt}假设}}[section] 
\newtheorem{prove}{\textbf{\hspace{0.7pt}证明}}[section]
\renewcommand\appendixname{附录} 
\renewcommand{\proofname}{证明}

%upStand Greek Letters
\DeclareMathSymbol{\upGamma}{\mathord}{operators}{0}
\DeclareMathSymbol{\upDelta}{\mathord}{operators}{1}
\DeclareMathSymbol{\upTheta}{\mathord}{operators}{2}
\DeclareMathSymbol{\upLambda}{\mathord}{operators}{3}
\DeclareMathSymbol{\upXi}{\mathord}{operators}{4}
\DeclareMathSymbol{\upPi}{\mathord}{operators}{5}
\DeclareMathSymbol{\upSigma}{\mathord}{operators}{6}
\DeclareMathSymbol{\upUpsilon}{\mathord}{operators}{7}
\DeclareMathSymbol{\upPhi}{\mathord}{operators}{8}
\DeclareMathSymbol{\upPsi}{\mathord}{operators}{9}
\DeclareMathSymbol{\upOmega}{\mathord}{operators}{10}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%字体设置%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%文档正文主字体为宋体,支持 CJK 常用的六种中文字体
%定义了几种常用的字号：一号、二号、小二号、三号、小三号、四号、小四号五号和小五号等
%小一号可以直接使用CTEX里面的\zihao{-1}
%正文小四号，1.25倍行距
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%常用中文字号
\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36pt}{\baselineskip}\selectfont}
\newcommand{\yihao}{\fontsize{28pt}{\baselineskip}\selectfont}
\newcommand{\erhao}{\fontsize{21pt}{\baselineskip}\selectfont}
\newcommand{\xiaoerhao}{\fontsize{18pt}{\baselineskip}\selectfont}
\newcommand{\sanhao}{\fontsize{15.75pt}{\baselineskip}\selectfont}
\newcommand{\xiaosanhao}{\fontsize{15pt}{\baselineskip}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}
\newcommand{\xiaowuhao}{\fontsize{9pt}{\baselineskip}\selectfont}
\newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont}
\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}
%%%
\newcommand{\xiaoyihao}{\fontsize{24pt}{\baselineskip}\selectfont}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%页面设置%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%页面设置
\RequirePackage[
  top=2.5cm, 
  bottom=2.5cm,
  left=3.0cm,%%2.5+0.5cm：装订线装订线(T)：0.5 cm 装订线位置(T)：左
  right=2.0cm,
  headheight=1.5cm,
  footskip=1.75cm
]{geometry}

%%页眉和页脚设置
\pagestyle{fancy}
\fancyhf{}
\fancyhead[C]{\includegraphics[height=0.98cm,width=4.13cm]{cnux.eps}}
\fancyhead[L,R]{}
\fancyfoot[LE,RO]{-~\thepage~-}
\let\ps@plain\ps@fancy

%常见距离设置
\setlength{\parindent}{2\ccwd}
\setlength{\parskip}{3pt plus1pt minus2pt}
\setlength{\baselineskip}{22pt plus1pt minus1pt}
%%下面到底是多少倍也说不清，网上说法也不一致，Latex和Word关于行距的概念不一致
%%采用多倍行距，行距设置值为 1.25
\linespread{1.25}%\renewcommand{\baselinestretch}{1.2}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setcounter{secnumdepth}{4}
%%下面代码消除不同章节图表在目录中产生空行
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \if@mainmatter
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}#1}%
                       \else
                         \addcontentsline{toc}{chapter}{#1}%
                       \fi
                    \else
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}		

\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\thispagestyle{empty}%
\hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}

%\captionfont{\xiaosihao\rm}
\def\rmd{\mathrm{d}}
\def\rmi{\mathrm{i}}
\def\rme{\mathrm{e}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%目录设置%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%重新定义生成目录
\renewcommand\contentsname{目\hspace{1em}录}
\renewcommand\tableofcontents{%
\newpage
\pdfbookmark[1]{目录}{tableofcontents}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \centerline{{\erhao\bfseries\heiti\contentsname}
        \@mkboth{%
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    \cleardoublepage}
%% 用titletoc宏包提供的命令可以方便地设置目录的格式
\titlecontents{chapter}[0pt]{\vspace{0pt}\sanhao\cusong}
    {第 \thecontentslabel 章\ }{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{section}[2em]{\vspace{0pt}\xiaosanhao\songti}
    {\thecontentslabel\ }{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{subsection}[4em]{\vspace{0pt}\sihao\songti}
    {\thecontentslabel\ }{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{subsubsection}[4em]{\vspace{0pt}\xiaosihao\songti}
    {\thecontentslabel\ }{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
	
%%图表目录


\xpatchcmd{\@chapter}{\addtocontents{lof}{\protect\addvspace{10\p@}}}{\addtocontents{lof}{\protect\addvspace{10\p@}}\addtocontents{laf}{\protect\addvspace{10\p@}}}{}{}

\xpatchcmd{\@chapter}{\addtocontents{lof}{\protect\addvspace{10\p@}}}{\addtocontents{lof}{\protect\addvspace{10\p@}}\addtocontents{lat}{\protect\addvspace{10\p@}}}{}{}

	
\renewcommand\listfigurename{图\hspace{1em}目\hspace{1em}录}
\renewcommand\listoffigures{%
\newpage
\pdfbookmark[1]{图目录}{listoffigures}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \section*{\centerline{\erhao\bfseries\heiti\listfigurename}
      \@mkboth{%
          \MakeUppercase\listfigurename}{\MakeUppercase\listfigurename}}%
    \@starttoc{lof}%
	\vskip.2in
    \@starttoc{laf}%
    \if@restonecol\twocolumn\fi
    \cleardoublepage}
\titlecontents{figure}[0pt]{\songti \sihao}
    {\makebox[3.5em][l]{图~\thecontentslabel\quad}}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\renewcommand\listtablename{表\hspace{1em}目\hspace{1em}录}
\renewcommand\listoftables{%
\pdfbookmark[1]{表目录}{listoftables}
\newpage
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \section*{\centerline{\erhao\bfseries\heiti\listtablename}
      \@mkboth{%
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}%
    \@starttoc{lot}%
	\vskip.2in
    \@starttoc{lat}%
    \if@restonecol\twocolumn\fi
   }	
\titlecontents{table}[0pt]{\songti \sihao}
    {\makebox[3.5em][l]{表~\thecontentslabel\quad}}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%标题页设置%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%页面中的距离主要是使用Adobe Acrobat测量得到，使用命令空多行不方便
%%学校提供的论文写作规范和提供的模版有出入
%%Ⅰ.论文编码：使用小四号楷体字，置顶，居右放置。（PS：模版中加粗，但并未要求）
%%Ⅲ.论文题名：居中，隔一行，排印在论文文头下，使用小一号宋体字，加粗。（PS：模版中
%%给出的英文标题示例并未要求）
%%Ⅳ.论文副题名：居中排印在论文题名下，使用小二号宋体字，加粗，副题名前加特殊符号中
%%的“长划线”。（PS：模版中未给示例）
%%Ⅴ.院(系)、专业等距左端空 7 格，但模版中却要求居中放置。
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\classification#1{\def\@classification{#1}} % 中图分类号/论文编码
\newcommand*{\tutor}[1]{\gdef\@tutor{#1}}
\newcommand*{\titles}[1]{\gdef\@titles{#1}}%%职称
\newcommand*{\entitle}[1]{\gdef\@entitle{#1}}
\newcommand*{\cntime}[1]{\gdef\@cntime{#1}}
\global\let\@entitle\@empty
\global\let\@tutor\@empty
\global\let\@titles\@empty
\global\let\@cntime\@empty
\newcommand*{\subtitle}[1]{\gdef\@subtitle{#1}}
\newcommand*{\ensubtitle}[1]{\gdef\@ensubtitle{#1}}
\newcommand*{\department}[1]{\gdef\@department{#1}}
\newcommand*{\major}[1]{\gdef\@major{#1}}
\newcommand*{\grade}[1]{\gdef\@grade{#1}}
\newcommand*{\No}[1]{\gdef\@No{#1}}
\newcommand*{\remarkinfo}[1]{\gdef\@remarkinfo{#1}}%承诺书中的备注
\newcommand*{\duration}[1]{\gdef\@duration{#1}}
\global\let\@subtitle\@empty
\global\let\@ensubtitle\@empty
\global\let\@department\@empty
\global\let\@major\@empty
\global\let\@grade\@empty
\global\let\@No\@empty
\global\let\@remarkinfo\@empty
\global\let\@duration\@empty

%%定义破折号（中文特殊字符“长划线”）
%\newcommand{\pozhehao}{\kern-0.5ex\rule[0.5ex]{1em}{1.1pt}\kern0.5ex}
\newcommand{\pozhehao}{\kern0.3ex\rule[0.8ex]{2em}{0.1ex}\kern0.3ex}

\renewcommand\maketitle{%
  \newpage
\pdfbookmark[1]{封面}{titlepage}
  \thispagestyle{empty}
   {\hfill\xiaosihao\kaishu 论文编码：\@classification}\hspace*{1cm}%	
	\vskip0.7in
  \begin{center}\leavevmode%
  \let \footnote \thanks
    {{\yihao \cusong 首都师范大学\hfil\par
	\vskip.5em
	本科生毕业论文（设计）\hfil}}%
	\par
	\vskip0.78in
	{\zihao{-1}\cusong\@title\ifx\@subtitle\@empty\else{\vskip.5em\xiaoerhao\cusong\pozhehao\@subtitle}\fi}
    \par
	\vskip0.07in
    {{\begin{spacing}{1.20}\spaceskip.5em\zihao{-1}\bfseries\@entitle
		\ifx\@ensubtitle\@empty\else{\par\xiaoerhao\pozhehao\@ensubtitle}\fi
	  \end{spacing}}}
    {
		\ifx\@subtitle\@empty\else{\vskip-0.17in}\fi
		\vskip1.0in
      {
      \renewcommand\arraystretch{1.15}
		\sanhao\cusong%\hspace*{7em}如果要按照格式要求昨天空七格，则把居中环境去掉，换成这个
       \begin{tabular}[t]{cl}%
{院\hspace*{2em}系}&\underline{\makebox[10.5em][c]{\@department}}\tabularnewline
		{专\hspace*{2em}业}&\underline{\makebox[10.5em][c]{\@major}}\tabularnewline
		{年\hspace*{2em}级}&\underline{\makebox[10.5em][c]{\@grade}}\tabularnewline
		{学\hspace*{2em}号}&\underline{\makebox[10.5em][c]{\@No}}\tabularnewline
		{指导教师}&\underline{\makebox[10.5em][c]{\@tutor\quad\@titles}}\tabularnewline
        {论文作者}&\underline{\makebox[10.5em][c]{\@author}}\tabularnewline
	    {完成日期}&\underline{\makebox[10.5em][c]{\@cntime}}
      \end{tabular}}}%
  \end{center}
  \newpage\thispagestyle{empty}

 \ifcnu@typesetinfo%排印信息

	{	\vspace*{55em}
     Typeset by \LaTeX{} with Package \texttt{CNUthesisX}}
   \fi%

\renewcommand\arraystretch{1.0}
  \cleardoublepage}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%原创性承诺书%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\cnu@declaretext}{%
\renewcommand\arraystretch{1.0}
\sihao
承诺内容：
\begin{enumerate}
\item 本毕业论文（设计）是学生\underline{\makebox[5em][c]{\@author}}在导师\underline{\makebox[5em][c]{\@tutor}}的指导下独立完成，凡涉及其他作者的观点和材料，均作了注释，如出现抄袭及侵犯他人知识产权的情况，愿按学校有关规定接受处理，并承担相应责任。
\item 学校有权保留并向上级有关部门送交本毕业论文(设计)的复印件和磁盘。
\end{enumerate}\par
\CTEXindent 备注：\@remarkinfo\par
}

\newcommand\makeauthorization{%
\linespread{1.25}%\renewcommand{\baselinestretch}{1.2}
\renewcommand\arraystretch{1.0}
 % \pdfbookmark{原创与授权声明}{authorization}
  \cleardoublepage
  \thispagestyle{empty}
	\null
	{\xiaoerhao\vspace*{1em}}
  \begin{center}\xiaoerhao\cusong{首都师范大学本科生毕业论文（设计）原创性承诺书}\end{center}
	{\xiaoerhao\vspace*{1em}}
 \begin{center}
\sihao
\begin{tabular*}{\textwidth}{*{28}{|c}|}\hline
 \multicolumn{8}{|c|}{论文（设计）题目} & \multicolumn{20}{c|}{\@title}\\ \hline
	 \multicolumn{6}{|c|}{学生姓名}&\multicolumn{5}{c|}{\@author}&\multicolumn{5}{c|}{专业}&\multicolumn{12}{c|}{\@major}\\\hline
 	\multicolumn{6}{|c|}{学号}&\multicolumn{5}{c|}{\@No}&\multicolumn{5}{c|}{完成时间}&\multicolumn{12}{c|}{{\@duration}}\\\hline
 \multicolumn{8}{|c|}{指导教师姓名} & \multicolumn{6}{c|}{\hspace{1em}\@tutor\hspace{1em}}&\multicolumn{5}{c|}{职$\hspace{2em}$称}&\multicolumn{9}{c|}{\@titles}\\ \hline
	\multicolumn{28}{|p{0.97\textwidth}|}{\cnu@declaretext \vskip4cm
  {\begin{tabular}{p{17em}c}
   &学生签名：$\qquad$\\
   &时\hspace{2em}间：$\qquad$
  \end{tabular}}
	\vskip1em
} \\\hline
\end{tabular*}
\end{center}
{\sihao 说明：学生毕业论文（设计）如有保密等要求，请在备注中明确，承诺内容第2条即以备注为准。}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}

%%%%%%%%%%%%%%%%%%%%%%%%%定义摘要环境%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%cnabstract:中文摘要环境，cnkeywords：中文关键词
%%abstract:英文摘要环境，keywords：英文关键词
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%重新定义quotation，适合摘要的格式要求
\renewenvironment{quotation}
               {\xiaosihao\songti
			   \list{}{\listparindent 2\ccwd
						\leftmargin		0pt
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}

\newcommand*{\keywords}[1]{\gdef\@keywords{#1}}
\newcommand*{\cnkeywords}[1]{\gdef\@cnkeywords{#1}}
\global\let\@keywords\@empty
\global\let\@cnkeywords\@empty
\newcommand{\abstractname}{Abstract}
\newcommand{\cnabstractname}{中文提要}
\newcommand{\thankspagename}{致$\quad$谢}
 \newenvironment{cnabstract}{%
\newpage
      \if@twocolumn
        \section*{\cnabstractname}%
      \else
        \small
        \chapter*{~~~}
             \vspace{-1em}
        \begin{center}%
		  \pdfbookmark[1]{中文提要}{cnabstract}
          {\bfseries\heiti\xiaoerhao \cnabstractname\vspace{.5em}\vspace{\z@}}%
        \end{center}%
        \quotation
      \fi}
      {\if@twocolumn\else\endquotation{\heiti\sihao 关键词：}\@cnkeywords\cleardoublepage\fi}
	  
  \newenvironment{abstract}{%
	\newpage
      \if@twocolumn
        \section*{\abstractname}%
      \else
        \small
        \chapter*{~~}
       \vspace{-1em}
        \begin{center}%
          %\phantomsection
          %\addcontentsline{toc}{chapter}{Abstract}
		     \pdfbookmark[1]{Abstract}{abstract}
          {\bfseries\xiaoerhao \abstractname\vspace{.5em}\vspace{\z@}}%
        \end{center}%
        \quotation
      \fi}
      {\if@twocolumn\else\endquotation {\bfseries\sihao Keywords:}\@keywords\cleardoublepage\fi}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%正文设置%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%章节标题：最多四级
%%段落缩进：2个中文字符
%%脚注：以带圈阿拉伯数字编号，按页编号
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%对章标签及标题字号的设置用format一并设置不起作用, 要用titleformat, nameformat分别设置
\CTEXsetup[nameformat={{\centering\sanhao\cusong}}]{chapter}%\bfseries\songti
\CTEXsetup[titleformat={{\centering\sanhao\cusong}}]{chapter}%\bfseries\songti
\CTEXsetup[number={\arabic{chapter}}]{chapter}
\CTEXsetup[beforeskip={-2em},afterskip={0em}]{chapter}
\CTEXsetup[format={{\flushleft\xiaosanhao\cusong}}]{section}
\CTEXsetup[format={{\flushleft\sihao\cusong}}]{subsection}
\CTEXsetup[format={{\flushleft\xiaosihao\cusong}}]{subsubsection}
%%带圈脚注
\DefineFNsymbols{circled}{{\ding{192}}{\ding{193}}{\ding{194}}{\ding{195}}{\ding{196}}{\ding{197}}{\ding{198}}{\ding{199}}{\ding{200}}{\ding{201}}}
\setfnsymbol{circled}
\let\temp\footnote
\renewcommand \footnote[1]{\temp{\xiaowuhao #1}}
%Misc Customization
\renewcommand{\theequation}{式 \arabic{chapter}-\arabic{equation}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%参考文献设置%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\CTEXoptions[bibname={\xiaoerhao\heiti\textbf{参考文献}}]
\renewcommand{\bibfont}{\wuhao}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%致谢和附录设置%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%附录：
%%致谢环境：
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%定义附录
\renewcommand{\appendix}{\par
		\newpage
		\setcounter{section}{0}  
		\setcounter{figure}{0} 
  		\setcounter{table}{0} 
  		\setcounter{equation}{0}
		\setcounter{chapter}{0}  
		\setcounter{theorem}{0}  
		\setcounter{algorithm}{0}  

		%\CTEXoptions[figurename={附图}]
		%\CTEXoptions[tablename={附表}]
		\renewcommand{\theequation}{式\arabic{equation}}
		\renewcommand{\thealgorithm}{\arabic{algorithm}}
		\renewcommand{\thetheorem}{\arabic{theorem}}
	\CTEXsetup[format={{\centering\bfseries\heiti\xiaoerhao}}]{chapter}
		\renewcommand\thesection{附录~\arabic{section}~} 
}
%%定义致谢环境
  \newenvironment{thankspage}{%
	\newpage
      \if@twocolumn
        \section*{\thankspagename}%
      \else
        \small
        \chapter*{~}
        \vspace{-1em}
        \begin{center}%
          \phantomsection
          \addcontentsline{toc}{chapter}{\texorpdfstring{致$\quad$谢}{致谢}}
          {\bfseries\heiti\xiaoerhao \thankspagename\vspace{-.5em}\vspace{\z@}}%
        \end{center}%
        \quotation
      \fi}
      {\if@twocolumn\else\endquotation\cleardoublepage\fi}

\renewcommand\frontmatter{%
    \if@openright\cleardoublepage\else\clearpage\fi
    \@mainmatterfalse
    \pagenumbering{arabic}
   % \pagestyle{fancy}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 设置一些 pdf 文档信息，依赖于 \pkg{hyperref} 宏包。
\renewcommand\@pdfauthor{\@author}
\renewcommand\@pdftitle{\@title\ifx\@subtitle\@empty\else\@subtitle\fi}
\renewcommand\@pdfsubject{首都师范大学本科生毕业论文（设计）}
\hypersetup{%
pdfstartview = FitH,}

%table setup, by Heavenseven
\newcolumntype{I}{!{\vrule width 1pt}}
\newlength\savedwidth
\newcommand\whline{\noalign{\global\savedwidth\arrayrulewidth
                            \global\arrayrulewidth 1pt}%
                   \hline
                   \noalign{\global\arrayrulewidth\savedwidth}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%code environment, from ctex-faq
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\definecolor{example@bkcolor}{gray}{.875}
%
\newwrite\example@out
\def\example@start{%
  \begingroup% Lets Keep the Changes Local
  \@bsphack
  \immediate\openout \example@out \jobname.exa
  \let\do\@makeother\dospecials\catcode`\^^M\active
  \def\verbatim@processline{%
    \immediate\write\example@out{\the\verbatim@line}}%
  \verbatim@start}
\def\example@finish{\immediate\closeout\example@out\@esphack\endgroup}
\def\example@code#1#2{%
  \colorbox{#1}{%
    \begin{minipage}[c]{#2}%
      \small\verbatiminput{\jobname.exa}%
    \end{minipage}%
  }%
}
\def\example@output#1{%
  \let\savefboxrule\fboxrule%
  \let\savefboxsep\fboxsep%
  \setlength{\fboxrule}{0.1pt}%
  \setlength{\fboxsep}{3mm}%
  \fbox{%
    \begin{minipage}[c]{#1}%
      \setlength{\fboxrule}{\savefboxrule}%
      \setlength{\fboxsep}{\savefboxsep}%
      \setlength{\parskip}{1ex plus 0.4ex minus 0.2ex}%
      \begin{trivlist}\item\small\input{\jobname.exa}\end{trivlist}
    \end{minipage}
  }%
}
\newenvironment{code}%
  {\example@start}%
  {\example@finish%
   \list{}{\itemindent-\leftmargin}\item\relax%
   \makebox[\textwidth][c]{%
     \example@code{example@bkcolor}{0.96\textwidth}%
   }%
   \endlist}