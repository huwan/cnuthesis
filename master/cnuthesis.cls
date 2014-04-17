%%
%% This is file `cnuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% cnuthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2013 by Hoo Wan <imengyingchina@gmail.com>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3a
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3a or later is part of all distributions of LaTeX
%% version 2004/10/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 
%% Any Suggestions : Hoo Wan <imengyingchina@gmail.com>
%% Thanks Xue Ruini <xueruini@gmail.com> for the thuthesis class!
%% Thanks sofoot for the original SCNUThesis,NUDT paper class!
%% 


\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{cnuthesis}

\newif\ifismaster\ismastertrue
\newif\ifisttf\isttftrue
\DeclareOption{master}{\ismastertrue}
\DeclareOption{doctor}{\ismasterfalse}
\newif\ifisanon\isanonfalse
\DeclareOption{anon}{\isanontrue}
\newif\ifistwoside\istwosidefalse
\DeclareOption{twoside}{\istwosidetrue}
\DeclareOption{ttf}{\isttftrue}
\DeclareOption{otf}{\isttffalse}
\newif\ifisvista\isvistafalse
\DeclareOption{vista}{\isvistatrue}
\newif\ifischapter\ischapterfalse
\DeclareOption{chapterhead}{\ischaptertrue}
\DeclareOption*{\PackageWarning{cnuthesis}{Unknown Option '\CurrentOption'}}
\ProcessOptions\relax
\RequirePackage{ifthen,calc}
\ifistwoside
  \LoadClass[a4paper,12pt,openright,twoside]{book}
\else
  \LoadClass[a4paper,12pt,openany]{book}
\fi
\RequirePackage[includeheadfoot]{geometry}
\RequirePackage[center,pagestyles]{titlesec}
\RequirePackage{titletoc}
\RequirePackage{graphicx}
\RequirePackage[config]{subfig}
\RequirePackage{float}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{tabularx}
\RequirePackage{makecell}%自定义下划线
\RequirePackage[normalem]{ulem} % use normalem to protect \emph
\RequirePackage{slashbox}%本模板目录中提供了这个宏包
\RequirePackage{enumerate}%自定义编号样式
\RequirePackage[neverdecrease]{paralist}
\RequirePackage{xcolor}
\RequirePackage{amsmath,amssymb,bm}
\RequirePackage[varg]{txfonts}
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}
\RequirePackage[CJKnumber,no-math,BoldFont,SlantFont]{xeCJK}%CJKtextspaces,CJKmathspaces
\RequirePackage{CJKulem}
\RequirePackage{indentfirst}
\RequirePackage[numbers,sort&compress,square]{natbib}
\RequirePackage[CJKbookmarks=true,pdfborder=0 0 1]{hyperref}
\defaultfontfeatures{Mapping=tex-text}
\xeCJKsetcharclass{"0}{"2E7F}{0}
\xeCJKsetcharclass{"2E80}{"FFFF}{1}
\newcommand\installTTF{%
  \setmainfont{Times New Roman}
  \setsansfont{Arial}
  \setmonofont{Courier New}
  \ifisvista
    \setCJKmainfont[BoldFont={SimHei},ItalicFont={KaiTi}]{SimSun}
    \setCJKmonofont{KaiTi} % Pluto use LiSu Thu use Kaiti, orig is SimSun
    \setCJKfamilyfont{fs}{FangSong}
    \setCJKfamilyfont{kai}{KaiTi}
  \else
    \setCJKmainfont[BoldFont={SimHei},ItalicFont={KaiTi_GB2312}]{SimSun}
    \setCJKmonofont{KaiTi_GB2312} % Pluto use LiSu Thu use Kaiti, orig is SimSun
    \setCJKfamilyfont{fs}{FangSong_GB2312}
    \setCJKfamilyfont{kai}{KaiTi_GB2312}
  \fi
  \setCJKsansfont{SimHei}
  \setCJKfamilyfont{song}{SimSun}
  \setCJKfamilyfont{hei}{SimHei}
  \setCJKfamilyfont{li}{LiSu}
  \setCJKfamilyfont{you}{YouYuan}
}
\newcommand\installOTF{%
  \setmainfont{Times New Roman} % could be changed to "Times New Roman PS Std"
  \setsansfont{Arial}
  \setmonofont{Courier New}
  \setCJKmainfont[BoldFont={Adobe Heiti Std},ItalicFont={Adobe Kaiti Std}]{Adobe Song Std}
  \setCJKsansfont{Adobe Heiti Std}
  \setCJKmonofont{Adobe Kaiti Std}
  \setCJKfamilyfont{song}{Adobe Song Std}
  \setCJKfamilyfont{hei}{Adobe Heiti Std}
  \setCJKfamilyfont{fs}{Adobe Fangsong Std}
  \setCJKfamilyfont{kai}{Adobe Kaiti Std}
  \setCJKfamilyfont{li}{Adobe Kaiti Std}
  \setCJKfamilyfont{you}{Adobe Kaiti Std}
}
\setCJKfamilyfont{cusong}{STZhongsong}
\newcommand{\cusong}{\CJKfamily{cusong}} % 中宋作为加粗宋体
\setCJKfamilyfont{xinwei}{STXinwei}
\newcommand{\xinwei}{\CJKfamily{xinwei}} % 华文新魏，首页标题字体
\ifisttf
  \installTTF
\else
  \installOTF
\fi
\newcommand{\song}{\CJKfamily{song}}    % 宋体
\newcommand{\fs}{\CJKfamily{fs}}        % 仿宋体
\newcommand{\kai}{\CJKfamily{kai}}      % 楷体
\newcommand{\hei}{\CJKfamily{hei}}      % 黑体
\newcommand{\li}{\CJKfamily{li}}        % 隶书
\newcommand{\you}{\CJKfamily{you}}      % 幼圆
\def\songti{\song}
\def\fangsong{\fs}
\def\kaishu{\kai}
\def\heiti{\hei}
\def\lishu{\li}
\def\youyuan{\you}
\newlength\thu@linespace
\newcommand{\thu@choosefont}[2]{%
    \setlength{\thu@linespace}{#2*\real{#1}}%
    \fontsize{#2}{\thu@linespace}\selectfont}
\def\thu@define@fontsize#1#2{%
    \expandafter\newcommand\csname #1\endcsname[1][\baselinestretch]{%
    \thu@choosefont{##1}{#2}}}
\thu@define@fontsize{chuhao}{42bp}
\thu@define@fontsize{xiaochu}{36bp}
\thu@define@fontsize{yihao}{26bp}
\thu@define@fontsize{xiaoyi}{24bp}
\thu@define@fontsize{erhao}{22bp}
\thu@define@fontsize{xiaoer}{18bp}
\thu@define@fontsize{sanhao}{16bp}
\thu@define@fontsize{xiaosan}{15bp}
\thu@define@fontsize{sihao}{14bp}
\thu@define@fontsize{banxiaosi}{13bp}
\thu@define@fontsize{xiaosi}{12bp}
\thu@define@fontsize{dawu}{11bp}
\thu@define@fontsize{wuhao}{10.5bp}
\thu@define@fontsize{xiaowu}{9bp}
\thu@define@fontsize{liuhao}{7.5bp}
\thu@define@fontsize{xiaoliu}{6.5bp}
\thu@define@fontsize{qihao}{5.5bp}
\thu@define@fontsize{bahao}{5bp}
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}} % 上标形式引用
\newcommand{\china}{中华人民共和国}
\def\thuthesis{\textsc{Thu}-\textsc{Thesis}}
\def\nudtpaper{\textsc{Nudt}\textsc{Paper}}
\def\scnuthesis{\textsc{SCNU}\textsc{Thesis}}
\def\cnuthesis{%
  C\hspace{-0.3ex}\raisebox{-0.5ex}{N}\hspace{-0.3ex}U\textsc{Thesis}
}
\newcommand{\pozhehao}{\kern0.3ex\rule[0.8ex]{2em}{0.1ex}\kern0.3ex}
\renewcommand\contentsname{目\hspace{1em}录}
\renewcommand\listfigurename{图\hspace{1em}目\hspace{1em}录}
\renewcommand\listtablename{表\hspace{1em}目\hspace{1em}录}
\newcommand\denotationname{符号列表}
\newcommand\ackname{致\hspace{1em}谢}
\newcommand\resumename{作者攻读学位期间发表的学术论文目录}
\newcommand\listequationname{公式索引}
\newcommand\equationname{公式}
\renewcommand\bibname{参考文献}
\renewcommand\indexname{索引}
\renewcommand\figurename{图}
\renewcommand\tablename{表}
\renewcommand\appendixname{附录}
\def\CJK@today{\the\year 年 \the\month 月}
\newcommand\zhtoday{\CJK@today}
\newcommand\entoday{\today{}}

\geometry{top=25mm,bottom=20mm,left=25mm,right=20mm}


\renewcommand{\chaptermark}[1]{\markboth{\chaptertitlename~\ #1}{}}

\renewpagestyle{plain}{
\setfoot{}{{\songti \wuhao ~\thepage~}}{}%
}
\newpagestyle{mpage}{
\setfoot{}{{\songti \wuhao ~\thepage~}}{}%
}
\newpagestyle{appendixpage}{
\setfoot{}{{\songti \wuhao ~\thepage~}}{}%
}
\newpagestyle{emptypage}{
\setfoot{}{{\songti \wuhao ~\thepage~}}{}%
}
\renewcommand\frontmatter{%
    \if@openright\cleardoublepage\else\clearpage\fi
    \@mainmatterfalse
    \pagenumbering{Roman}
    \pagestyle{plain}
}

\renewcommand\mainmatter{%
    \if@openright\cleardoublepage\else\clearpage\fi
    \@mainmattertrue

    \pagenumbering{arabic}
    \normalsize % normal, 正文开始
    \def\@tabular{\wuhao[1.25]\old@tabular} % 之后表格字体使用5号

  }
\renewcommand\backmatter{%
    \if@openright\cleardoublepage\else\clearpage\fi
    \titleformat{\chapter}{\filcenter \heiti \sanhao}{附录\,\thechapter\,}{1em}{}
    \titlecontents{chapter}[0pt]{\vspace{0.25\baselineskip} \heiti \xiaosi[1.25]}
      {附录\,\thecontentslabel\quad}{}
      {\hspace{.5em}\titlerule*{.}\contentspage}
      \@mainmattertrue
      \thispagestyle{appendixpage}
  }
\renewcommand\cleardoublepage{\clearpage\if@openright \ifodd\c@page
  \else
  \newpage{}
  \thispagestyle{empty}
  \vspace*{\fill}
  \begin{center}
  \end{center}
  \vspace*{\fill}
  \clearpage\fi\fi%
}
%%
\newcommand\cabstractname{摘\hspace{1em}要}
\newcommand\ckeywordsname{{\heiti \sihao 关键词}}
\newcommand\ckeywords[1]{\xiaosi \songti \ckeywordsname: #1}

\newcommand\eabstractname{ABSTRACT}
\newcommand\ekeywordsname{\xiaosi \textbf{KEY WORDS}}
\newcommand\ekeywords[1]{{\xiaosi \ekeywordsname: #1}}
\newenvironment{cabstract}{%
  \titleformat*{\chapter}{\xiaosan \heiti \filcenter}
  \chapter{\cabstractname}
  \xiaosi
  \@afterheading}
{\par\vspace{2em}\par}

\newenvironment{eabstract}{%
  \titleformat*{\chapter}{\sihao \filcenter \bfseries}
  \chapter{\eabstractname}
  \xiaosi
  \@afterheading}
{\par\vspace{2em}\par}
\titlecontents{chapter}[0pt]{\vspace{0.25\baselineskip} \heiti \xiaosi[1.25]}
    {第\CJKnumber{\thecontentslabel}章\quad}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{section}[2em]{\songti \xiaosi[1.25]}
    {\thecontentslabel\quad}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{subsection}[4em]{\songti \xiaosi[1.25]}
    {\thecontentslabel\quad}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{figure}[0pt]{\songti \xiaosi[1.25]}
    {\makebox[3.5em][l]{图~\thecontentslabel\quad}}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{table}[0pt]{\songti \xiaosi[1.25]}
    {\makebox[3.5em][l]{表~\thecontentslabel\quad}}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\cnu@chapter\@schapter}
\def\cnu@chapter[#1]#2{
  \ifnum \c@secnumdepth >\m@ne
    \if@openright\cleardoublepage\else\clearpage\fi
    \phantomsection
    \if@mainmatter
      \refstepcounter{chapter}%
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
  \fi
}
\newcommand{\sectionbreak}{%
\addpenalty{-300}%
\vspace*{0pt}%
}
\setlength{\topskip}{0pt}
\setcounter{secnumdepth}{3}
\titleformat{\chapter}{\filcenter \cusong \sanhao[1.25]}{第\CJKnumber{\thechapter}章\,}{1em}{}
\titleformat{\section}{\cusong \xiaosan[1.25]}{\thesection}{1em}{}
\titleformat{\subsection}{\cusong \sihao[1.25]}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\cusong \xiaosi[1.25]}{\thesubsubsection}{1em}{}
\titlespacing{\chapter}{0pt}{2.4ex-\topskip-\heightof{A}}{2.4ex}
\titlespacing{\section}{0pt}{2ex-\heightof{a}}{2ex}
\titlespacing{\subsection}{2em}{2ex}{2ex}
\titlespacing{\subsubsection}{2em}{1ex}{0ex}
\renewcommand\normalsize{%
  \@setfontsize\normalsize{12bp}{12.87bp}%
  \renewcommand{\baselinestretch}{1.3}%
\setlength\abovedisplayskip{10bp \@plus 2bp \@minus 2bp}%
\setlength\abovedisplayshortskip{10bp \@plus 2bp \@minus 2bp}%
\setlength\belowdisplayskip{\abovedisplayskip}%
\setlength\belowdisplayshortskip{\abovedisplayshortskip}%
}
\setlength{\parindent}{2.5em}
\setlength{\parskip}{0bp \@plus .5bp \@minus .5bp}
\newcommand*{\ziju}[1]{\renewcommand{\CJKglue}{\hskip #1}}
\renewenvironment{thebibliography}[1]{%

  \thispagestyle{emptypage}
  \bibliographystyle{bstutf8}
  \chapter*{\bibname}%

  \addcontentsline{toc}{chapter}{\bibname}

  \list{\@biblabel{\@arabic\c@enumiv}}%
  {\renewcommand{\makelabel}[1]{##1\hfill}
    \settowidth\labelwidth{1.1cm}
    \setlength{\labelsep}{0.4em}
    \setlength{\itemindent}{0pt}
    \setlength{\leftmargin}{\labelwidth+\labelsep}
    \addtolength{\itemsep}{-0.7em}
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \renewcommand\theenumiv{\@arabic\c@enumiv}}%
  \sloppy\frenchspacing
  \clubpenalty4000%
  \@clubpenalty \clubpenalty
  \widowpenalty4000%
  \interlinepenalty4000%
  \sfcode`\.\@m
}
{\def\@noitemerr
  {\@latex@warning{Empty `thebibliography' environment}}%
  \endlist\frenchspacing}

\setlength{\floatsep}{12bp \@plus 2bp \@minus 1bp}
\setlength{\intextsep}{12bp \@plus 2bp \@minus 1bp}
\setlength{\textfloatsep}{12bp \@plus 2bp \@minus 1bp}
\setlength{\@fptop}{0bp \@plus1.0fil}
\setlength{\@fpsep}{12bp \@plus2.0fil}
\setlength{\@fpbot}{0bp \@plus1.0fil}
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.80}
\let\old@tabular\@tabular
\def\thu@tabular{\wuhao[1.25]\old@tabular}
\DeclareCaptionLabelFormat{thu}{{\wuhao[1.25]\song #1~\rmfamily #2}}
\DeclareCaptionLabelSeparator{thu}{\hspace{1em}}
\DeclareCaptionFont{thu}{\wuhao[1.25]}
\captionsetup{labelformat=thu,labelsep=thu,font=thu}
\captionsetup[table]{position=top,belowskip={12bp-\intextsep},aboveskip=6bp}
\captionsetup[figure]{position=bottom,belowskip={9bp-\intextsep},aboveskip=6bp}
\captionsetup[subfloat]
{labelformat=simple,font=thu,captionskip=6bp,nearskip=6bp,farskip=0bp,topadjust=0bp}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\renewcommand{\thesubtable}{(\alph{subtable})}
\let\thu@LT@array\LT@array
\def\LT@array{\thu@LT@array}
\newenvironment{denotation}[1][3cm]{
  \if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{emptypage}
  \chapter*{\denotationname} % no tocline
  %\addcontentsline{toc}{chapter}{\denotationname}%符合列表不加入目录
  \noindent\begin{list}{}%
    {\vskip-30bp\xiaosi[1.6]
      \renewcommand\makelabel[1]{##1\hfil}
      \setlength{\labelwidth}{#1} % 标签盒子宽度
      \setlength{\labelsep}{1cm} % 标签与列表文本距离
      \setlength{\itemindent}{0cm} % 标签缩进量
      \setlength{\leftmargin}{\labelwidth+\labelsep} % 左边界
      \setlength{\rightmargin}{0cm}
      \setlength{\parsep}{0cm} % 段落间距
      \setlength{\itemsep}{0cm} % 标签间距
      \setlength{\listparindent}{0cm} % 段落缩进量
      \setlength{\topsep}{0pt} % 标签与上文的间距
    }
  }{\end{list}}
\newenvironment{ack}{%
  \thispagestyle{emptypage}
  \chapter*{\ackname}%
  \addcontentsline{toc}{chapter}{\ackname}%
  \ifisanon\color{white}\else\relax\fi%
  \xiaosi%
  \@mainmatterfalse
  \@afterheading
}
{\par\vspace{2em}\par}
\newenvironment{resume}{%
  \thispagestyle{emptypage}
  \chapter*{\resumename}
  \addcontentsline{toc}{chapter}{\resumename}
  \ifisanon\color{white}\else\relax\fi%
  \xiaosi
  \@mainmatterfalse
  \@afterheading
}
{\par\vspace{2em}\par}
\renewtheoremstyle{nonumberplain}%
{\item[\hspace*{2em} \theorem@headerfont ##1\ \theorem@separator]}%
{\item[\hspace*{2em} \theorem@headerfont ##1\ (##3)\theorem@separator]}
\theoremstyle{nonumberplain}
\theorembodyfont{\rmfamily}
\theoremheaderfont{\sffamily}
\theoremsymbol{\ensuremath{\blacksquare}}
\theoremseparator{:\,}
\newtheorem{proof}{证明}[chapter]
\newtheorem{assumption}{假设}[chapter]
\newtheorem{definition}{定义}[chapter]

\renewtheoremstyle{plain}%
{\item[\hspace*{2em} \theorem@headerfont ##1\ ##2\theorem@separator]}%
{\item[\hspace*{2em} \theorem@headerfont ##1\ ##2\ (##3)\theorem@separator]}
\theoremstyle{plain}
\theorembodyfont{\kai}
\theoremheaderfont{\hei}
\theoremsymbol{}
\newtheorem{lemma}{引理}[chapter]
\newtheorem{theorem}{定理}[chapter]
\newtheorem{axiom}{公理}[chapter]
\newtheorem{corollary}{推论}[chapter]
\newtheorem{conjecture}{猜想}[chapter]
\newtheorem{proposition}{命题}[chapter]
\newtheorem{exercise}{练习}[section]
\newtheorem{example}{例}[section]
\newtheorem{problem}{问题}[section]
\newtheorem{remark}{注释}[section]
\renewenvironment{split}{%
  \if@display%
    \ifinner%
      \@xp\@xp\@xp\split@aligned%
    \else%
      \ifst@rred \else \global\@eqnswtrue \fi%
    \fi%
  \fi%
  \collect@body\gather@split%
}{%
  \crcr%
  \egroup%
  \egroup%
  \iftagsleft@ \@xp\lendsplit@ \else \@xp\rendsplit@ \fi%
}
\def\classification#1{\def\@classification{#1}} % 中图分类号
\def\serialno#1{\def\@serialno{#1}} % 学号
\def\university#1{\def\@university{#1}} % university号
\def\confidentiality#1{\def\@confidentiality{#1}} % 密级
\def\title#1{\def\@title{#1}} % 中文题目
\newtoks\displaytitle
\def\author#1{\def\@author{#1}}
\def\zhdate#1{\def\@zhdate{#1}} % 中文日期
\def\subject#1{\def\@subject{#1}} % 中文学科
\def\researchfield#1{\def\@researchfield{#1}} % 中文研究方向
\def\supervisor#1{\def\@supervisor{#1}} % 导师
\def\school#1{\def\@school{#1}} % 工学，理学，以同等学历申请工(理)学
\def\entitle#1{\def\@entitle{#1}}

\def\optionpaperclass#1{\def\@optionpaperclass{#1}} % paperclass
\def\optionpaperclassen#1{\def\@optionpaperclassen{#1}} % paperclass english
\def\optionas#1{\def\@optionas{#1}} % Advisor OR Supervisor
\ifismaster
  \optionpaperclass{硕士}
  \optionpaperclassen{Master}
  \optionas{Advisor}
\else
  \optionpaperclass{博士}
  \optionpaperclassen{Doctor}
  \optionas{Supervisor}
\fi
\newcommand\hl{\bgroup\markoverwith
  {\textcolor{white}{\rule[-.5ex]{2pt}{2.5ex}}}\ULon} %白色背景的高亮

\def\maketitle{%
  \def\entry##1##2##3{%
    \multicolumn{##1}{l}{\hl{\hbox to ##2{##3\hfil}}}
    }
  \null
  \ifisanon%
  \author{}%
  \enauthor{}%
  \supervisor{}%
  \cosupervisor{}%
  \ensupervisor{}%
  \encosupervisor{}%
  \else\relax\fi%
  \pagenumbering{alph}% not display, for print only
  \thispagestyle{empty}%
  \begin{center}\leavevmode % 表格环境
  {\cusong \wuhao%
     \begin{tabular}{rlcll}
    分类号：& \entry{1}{3.2cm}{\@classification} & \hspace*{4.8cm}%
     密级：& \entry{1}{3.2cm}{\@confidentiality}\\%
    单位代码：& \entry{1}{3.2cm}{\@university} & \hspace*{4.8cm}
   学号：& \entry{1}{3.2cm}{\@serialno}
    \end{tabular}
  }
  \par
  \vspace*{2.22cm} %插入空白
   {\xinwei\xiaochu 首都师范大学\@optionpaperclass{}学位论文}

  \vspace*{2.6cm}
     {\kai\yihao \@title \par}%\cusong\erhao[1.25]
  \vspace*{2.22cm} %从WORD中得来
  {\song \xiaosan[1.25]
 \begin{tabular}{rl}
研\hspace{0.5em}究\hspace{0.5em}生：& \@author\\
指导教师：& \@supervisor\\
学科专业：& \@subject\\
研究方向：& \@researchfield
    \end{tabular}


  }
  \end{center}%

  \par
 \vspace*{3.33cm}
  {\centering \cusong \xiaosan
    {\@zhdate \par}%
  }
 \vfill
  \cleardoublepage%

\newpage
\thispagestyle{empty}

  {\hei \xiaosi \centering 首都师范大学位论文原创性声明\par}
  %  \renewcommand{\baselinestretch}{1.5}%
  {\song\xiaosi[1.5]%
\indent 本人郑重声明：所呈交的学位论文，是本人在导师的指导下，独立进行研究工作所取
得的成果。除文中已经注明引用的内容外，本论文不含任何其他个人或集体已经发表或撰
写过的作品成果。对本文的研究做出重要贡献的个人和集体，均已在文中以明确方式标明。
本人完全意识到本声明的法律结果由本人承担。\par
\indent \xiaosi[2]学位论文作者签名：\\
 \xiaosi[1.5]\hspace*{24em}日期：\hfill 年\hfill 月 \hfill 日\hspace*{4em}\par}

  \vspace*{4.5em}
  {\hei \xiaosi \centering 首都师范大学位论文授权使用声明\par}
  {\song\xiaosi[1.5]%
\indent 本人完全了解首都师范大学有关保留、使用学位论文的规定，学校有权保留学位论文
并向国家主管部门或其指定机构送交论文的电子版和纸质版。有权将学位论文用于非赢利
目的的少量复制并允许论文进入学校图书馆被查阅。有权将学位论文的内容编入有关数据
库进行检索。有权将学位论文的标题和摘要汇编出版。保密的学位论文在解密后适用本规
定。\par
\indent 学位论文作者签名：\\
 \hspace*{24em}日期：\hfill 年\hfill 月 \hfill 日\hspace*{4em}\par}

}
\endinput
%%
%% End of file `cnuthesis.cls'.
