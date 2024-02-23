DIR="$( cd "$( dirname "$0" )" && pwd )"
cd $DIR

latex simplivre-demo.ins

latexmk -lualatex -silent simplivre-demo-style-default.tex
latexmk -lualatex -silent simplivre-demo-style-classical.tex
latexmk -lualatex -silent simplivre-demo-style-classicthesis.tex
latexmk -lualatex -silent simplivre-demo-style-flow.tex
latexmk -lualatex -silent simplivre-demo-style-plain.tex
latexmk -lualatex -silent simplivre-demo-style-stream.tex
