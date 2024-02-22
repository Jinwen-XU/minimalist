DIR="$( cd "$( dirname "$0" )" && pwd )"
cd $DIR

latex einfart-demo.ins

latexmk -lualatex -silent einfart-demo-style-default.tex
latexmk -lualatex -silent einfart-demo-style-classical.tex
latexmk -lualatex -silent einfart-demo-style-flow.tex
latexmk -lualatex -silent einfart-demo-style-plain.tex
latexmk -lualatex -silent einfart-demo-style-stream.tex
