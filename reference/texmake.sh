#!/bin/bash
# Converts .mmd files to .tex files (if they exist in that format) and reproduces preamble to include in the main file
# NOW DEPRECATED IN FAVOUR OF texify.sh

# Set working environment
preamble="preamble.tex"
main="main.tex"

# Make sure you're in the right place!
if [[ $# -lt "1" ]]; then
  work_dir=$(pwd)
else
  work_dir="$1"
fi

cd "$work_dir"

# Convert .mmd to .tex using multimarkdown CLI

# Write out preamble.tex to the same directory as the .tex files
if [[ ! -e "$preamble" ]]; then
  touch "$preamble"
else
  echo "" > "$preamble"
fi

{
    echo '\documentclass[a4paper,11pt,twoside]{article}';
    echo '\title{TITLE GOES HERE}';
    echo '\author{James C. Prime}';
    echo '\date{DATE GOES HERE}';
    echo ;
    echo '\usepackage[super,sort&compress]{natbib} % Citation settings';
    echo;
    echo '\usepackage[utf8]{inputenc} % Encoding settings';
    echo '\usepackage [english]{babel} % Language settings';
    echo '\usepackage{setspace} % Enables non-unity line-space settings...';
    echo '%\onehalfspacing % ... and sets (LaTeX-specific) 1.5x line spacing (i.e. measuring baseline-to-baseline), using setspace package; NB: also \setstretch{1.5} for more precise spacings, apparently!';
    echo '\spacing{1.55} % ... and sets (Word-specific) 1.5x line spacing';
    echo '%\linespread{1.3} % ... alterative to the above (where 1.3 gives 1.5x and 1.6 gives 2.0x line spacing)';
    echo '%\pagenumbering{arabic} % This is the default page-numbering scheme, but just in case, this is how to set it';
    echo '\usepackage [autostyle, english = american]{csquotes} % No idea why I needed this';
    echo '\MakeOuterQuote{"}';
    echo '%\usepackage{helvet} % Helvetica font add-in';
    echo '%\renewcommand{\familydefault}{\sfdefault} % Sets Helvetica as the sans-serif font favourite';
    echo '\usepackage{textcomp} % Required for comments and degree symbols etc, I think';
    echo '\usepackage[usenames,dvipsnames,svgnames,table]{xcolor}';
    echo ;
    echo '% ============================================';
    echo '% NOTES AND STUFF';
    echo '% ============================================';
    echo '% Select what to do with todonotes:';
    echo '% -----------------------------------------------------------';
    echo '% \usepackage[disable]{todonotes} % Notes not showed';
    echo '% \usepackage[draft]{todonotes}   % Notes showed';
    echo '% -----------------------------------------------------------';
    echo '% Select what to do with command \comment:';
    echo '% -----------------------------------------------------------';
    echo '% \newcommand{\comment}[1]{#1}  % Comment not showed';
    echo '\newcommand{\comment}[1]';
    echo '{{\bfseries \color{blue} #1}} % Comment showed';
    echo '% -----------------------------------------------------------';
    echo ;
    echo '\usepackage[pdftex]{graphicx} % Graphics';
    echo '\graphicspath{INSERT PATH HERE} % Graphics path, shockingly';
    echo ;
    echo '\usepackage[version=3]{mhchem} % For chemical formulae and equations and things';
    echo '\usepackage{amsmath} % For mathematical equations';
    echo ;
    echo '\usepackage{color} % Enables the marking of entries in the tables with colour';
    echo '\usepackage{longtable,tabu,array,adjustbox}';
    echo '\usepackage[pdfborder=000,pdftex=true]{hyperref} % This enables jumping from a reference and table of content in the pdf file to its target';
    echo '\usepackage{booktabs} % Table design tool; has excellent documentation';
    echo '%\usepackage{lscape} % Use this if you want to rotate the table together with the lines around the table';
    echo '\usepackage[a4paper,margin=1in,footskip=.5in]{geometry}';
    echo ;
    echo '% ########### End Preferences, Begin Document ##########';
    echo ;
    echo '%\pagestyle{plain} % Sets no headers or footers on the first page';
    echo '\usepackage{fancyhdr}';
    echo '\setlength{\headheight}{20pt}';
    echo '\pagestyle{fancy}';
    echo '\lhead[EVEN OUTPUT]{ODD OUTPUT}';
    echo '%\chead[EVEN OUTPUT]{ODD OUTPUT}';
    echo '\rhead[EVEN OUTPUT]{ODD OUTPUT}';
    echo '%\lfoot[EVEN OUTPUT]{ODD OUTPUT}';
    echo '\cfoot[\thepage]{\thepage}';
    echo '%\rfoot[EVEN OUTPUT]{ODD OUTPUT}';
    echo ;
} >> "$preamble"

# Write out preamble.tex to the same directory as the .tex files
if [[ ! -e "$main" ]]; then
  touch "$main"
else
  echo "" > "$main"
fi

# This is to go in the main document rather than the preamble actually
{
    echo '\begin{document}';
    echo ;
    echo '\bibliographystyle{unsrtnat}';
    echo '%\renewcommand{\baselinestretch}{1.5}';
    echo '%\setmainfont{Arial}';
    echo ;
} >> "$main"
