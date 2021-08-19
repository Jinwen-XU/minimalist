DIR="$( cd "$( dirname "$0" )" && pwd )"
cd $DIR

latex minimalist.ins
latex minimalist-doc.ins

cd ./minimalist
latexmk -xelatex -silent minimalist-doc.tex

cd ../einfart
latexmk -xelatex -silent einfart-doc-cn.tex
latexmk -xelatex -silent einfart-doc-en.tex
latexmk -xelatex -silent einfart-doc-fr.tex

cd ../simplivre
latexmk -xelatex -silent simplivre-doc-cn.tex
latexmk -xelatex -silent simplivre-doc-en.tex
latexmk -xelatex -silent simplivre-doc-fr.tex
