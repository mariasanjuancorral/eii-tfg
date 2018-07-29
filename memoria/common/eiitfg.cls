% -*- coding: utf-8 -*-
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cedvamazon}[2015/07/03 modified book class for CEDV]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\PassOptionsToClass{11pt,twoside,titlepage,openright,a4paper}{book}
\ProcessOptions\relax
\LoadClass{book}

\makeatletter

\setlength{\unitlength}{1mm}

% https://tug.org/pipermail/pstricks/2011/009122.html
\usepackage{etex}

% Codificación UTF8
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage[spanish, es-tabla]{babel}

% Hipervínculos dentro del documento
\usepackage{hyperref}
\usepackage{bookmark}

% Ubicaciones absolutas
\usepackage{float}

\usepackage{caption}
\captionsetup{
  margin=0pt,
  font={footnotesize,stretch=.85},
  labelfont=bf}

\usepackage{datetime2}
\usepackage{graphicx}
\usepackage{multirow}
\usepackage{subfigure}
\usepackage[numbers]{natbib}
\usepackage{appendix}
\usepackage{listings}
\usepackage{longtable}
\usepackage{minted}
\usepackage[export]{adjustbox}
\usepackage{emptypage}
\usepackage{setspace}
\usepackage{times}
\usepackage{xcolor}
\usepackage{enumerate}
\usepackage{textcomp}
\usepackage[nottoc,numbib]{tocbibind}

\usepackage[
  paperwidth=210mm,
  paperheight=297mm,
  left=35mm,right=30mm,
  top=25mm, bottom=25mm,
  marginparwidth=1cm, marginparsep=1cm]{geometry}

\definecolor{gris30}{gray}{0.30}
\definecolor{gris85}{gray}{0.85}
\definecolor{gris20}{gray}{0.20}
\definecolor{gris50}{gray}{0.50}

\setlength{\parskip}{4pt}

\usepackage{common/metadata}
\usepackage{common/code}
\usepackage{common/portada}
\usepackage{common/entornos}
\usepackage{common/indices}
\usepackage{common/admonition}

\pagestyle{headings}
\renewcommand{\bibname}{Referencias}
\bibliographystyle{abbrvnat}
\renewcommand{\appendixname}{Anexo}
\renewcommand{\appendixtocname}{Anexo}
\renewcommand{\appendixpagename}{Anexo}

\graphicspath{{fig/}{doc/fig/}{memoria/doc/fig/}}
% Añado doc/ a la ruta de input, para que dentro de doc no sea
% necesario poner \input{doc/parte.tex}
\makeatletter
\providecommand*{\input@path}{}
\g@addto@macro\input@path{{doc/}{memoria/doc/}}
\makeatother
