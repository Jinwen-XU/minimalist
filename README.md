<!-- Copyright (C) 2021-2024 by Jinwen XU -->

# `minimalist` bundle: write you documents in a simple and clear way

> **New documentations are still being written. For now, only the core code is included in TeX Live 2024 and MiKTeX (old documentations have been removed from the distribution).**

## Introduction

`minimalist` is a collection of styles and classes that helps you to typeset articles and books with a simple and clear design.

> Package dependencies: [`amsfonts`](https://ctan.org/pkg/amsfonts), [`amsthm`](https://ctan.org/pkg/amsthm), [`anyfontsize`](https://ctan.org/pkg/anyfontsize), [`bookmark`](https://ctan.org/pkg/bookmark), [`caption`](https://ctan.org/pkg/caption), [*`draftwatermark`*](https://ctan.org/pkg/draftwatermark), [`embrac`](https://ctan.org/pkg/embrac), [`enumitem`](https://ctan.org/pkg/enumitem), [`extramarks`](https://ctan.org/pkg/extramarks), [`fancyhdr`](https://ctan.org/pkg/fancyhdr), [`float`](https://ctan.org/pkg/float), [*`fontspec`*](https://ctan.org/pkg/fontspec), [`geometry`](https://ctan.org/pkg/geometry), [`graphicx`](https://ctan.org/pkg/graphicx), [`hyperref`](https://ctan.org/pkg/hyperref), [`imakeidx`](https://ctan.org/pkg/imakeidx), [`lineno`](https://ctan.org/pkg/lineno), [*`lua-widow-control`*](https://ctan.org/pkg/lua-widow-control), [`indentfirst`](https://ctan.org/pkg/indentfirst), [*`mathpazo`*](https://ctan.org/pkg/mathpazo), [`mathtools`](https://ctan.org/pkg/mathtools), [*`newpx`*](https://ctan.org/pkg/newpx), [*`nowidow`*](https://ctan.org/pkg/nowidow), [`parskip`](https://ctan.org/pkg/parskip), [`pgf`](https://ctan.org/pkg/pgf), [`projlib`](https://ctan.org/pkg/projlib), [`regexpatch`](https://ctan.org/pkg/regexpatch), [`relsize`](https://ctan.org/pkg/relsize), [`silence`](https://ctan.org/pkg/silence), [`tcolorbox`](https://ctan.org/pkg/tcolorbox), [`tikzpagenodes`](https://ctan.org/pkg/tikzpagenodes), [`titlesec`](https://ctan.org/pkg/titlesec), [`titletoc`](https://ctan.org/pkg/titletoc), [`wrapfig2`](https://ctan.org/pkg/wrapfig2), [`ulem`](https://ctan.org/pkg/ulem).

It mainly consists of two parts.

- Main part:
    - `minimalist.sty` : *interface of the main style*
        - `minimalist-plain.sty` : *the style "plain"*
          - The best choice for formal usage.
        - `minimalist-default.sty` : *the default style*
          - Slightly fancier than the plain style.
        - `minimalist-flow.sty` : *the style "flow"*
          - Suitable for writing course notes: sections and theorems are numbered together to create a storytelling atmosphere; proofs are colored by default.
        - `minimalist-stream.sty` : *the style "stream"*
          - Numbers are placed in the left margin; sections and theorems are numbered together to gain a streamlined feeling.
        - `minimalist-classical.sty` : *the style "classical"*
          - Originated in the typewriter style, now modernized.
        - `minimalist-classicthesis.sty`
          - Use your favorite design of [ClassicThesis](https://ctan.org/pkg/classicthesis) (and its carefully designed styles such as [ArsClassica](https://ctan.org/pkg/arsclassica)), while still have access to the features provided here, such as preconfigured theorem environments, multilingual support, enhanced author info block, etc.
        - ... and more styles to come (currently on schedule: "elegant", "french", "modern", "typewriter")
    - `minimart.cls` : class for typesetting articles
    - `minimbook.cls` : class for typesetting books

    They can be used with any major TeX engine. Currently, they have native
    support to English, French, German, Italian, Portuguese
    (European and Brazilian) and Spanish typesetting.


- Derivative part:
    - `einfart.cls` : more advanced class for typesetting articles
    - `simplivre.cls` : more advanced class for typesetting books

    They are similar to the main classes, but have Unicode support, thus can
    only be used with either XeLaTeX or LuaLaTeX. Currently, they have native
    support to Chinese (simplified and traditional), English, French, German,
    Italian, Japanese, Portuguese (European and Brazilian), Russian and Spanish
    typesetting, and also use more beautiful fonts.

### How to get these files
You can get the `.sty` and `.cls` files mentioned above by compiling
`minimalist.ins`:
```
latex minimalist.ins
```
<!--
To get the `.tex` source files of the documentation, compile
`minimalist-doc.ins`:
```
latex minimalist-doc.ins
```
-->

## Features

Compared with usual document classes, it has the following features:

- Several carefully designed styles.
- Native multilingual support: Chinese (simplified and traditional), English, French, German, Italian, Japanese, Portuguese (European and Brazilian), Russian and Spanish.
    > In particular, for simplified Chinese, traditional Chinese and Japanese, the fonts of the corresponding glyphs can be automatically switched.
- Ready-to-use theorem-type environments, with clever referencing supported.
- Support both the standard and the AMS writing fashion.
- ... and much more...


# License

This work is released under the LaTeX Project Public License, v1.3c or later.
