<!-- Copyright (C) 2021 by Jinwen XU -->

# `minimalist` bundle: write you documents in a simple and clear way

## Introduction

`minimalist` is a collection of styles and classes that helps you typesetting articles and books
with a simple and clear design. It mainly consists of two parts.

- Main part:
    - `minimalist.sty` : the main style
    - `minimart.cls` : class for typesetting articles
    - `minimbook.cls` : class for typesetting books

    They can be used with any major TeX engine. Currently they have native
    support to English, French, German, Italian, Portuguese
    (European and Brazilian) and Spanish typesetting.


- Derivative part:
    - `einfart.cls` : more advanced class for typesetting articles
    - `simplivre.cls` : more advanced class for typesetting books

    They are similar to the main classes, but have unicode support, thus can
    only be used with either XeLaTeX or LuaLaTeX. Currently they have native
    support to Chinese (simplified and traditional), English, French, German,
    Italian, Japanese, Portuguese (European and Brazilian), Russian and Spanish
    typesetting, and also use more beautiful fonts.

### How to get these files
You can get the `.sty` and `.cls` files mentioned above simply by compiling
`minimalist.ins`:
```
latex minimalist.ins
```
To get the `.tex` source files of the documentation, compile
`minimalist-doc.ins`:
```
latex minimalist-doc.ins
```

## Features

Compared with usual document classes, it has the following features:

- Native multi-language support: Chinese (simplified and traditional), English,
  French, German, Italian, Japanese, Portuguese (European and Brazilian),
  Russian and Spanish
    > In particular, for simplified Chinese, traditional Chinese and Japanese,
    > the fonts of the corresponding glyphs can be automatically switched
- Ready-to-use theorem-like environments, also with multi-language support
- Support both the standard and the AMS writing fashion


# License

This work is released under the LaTeX Project Public License, v1.3c or later.
