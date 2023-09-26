<!-- Copyright (C) 2021-2023 by Jinwen XU -->

# `simplivre` : write you books in a simple and clear way

> **New documentations are still being written. For now, only the core code is included in TeX Live 2023 (old documentations have been removed from the distribution).**

`simplivre` is a LaTeX class for typesetting books, which has a simple and clear design.

Currently, it has native support to Chinese (simplified and traditional), English, French, German, Italian, Japanese, Portuguese (European and Brazilian), Russian and Spanish typesetting. And it may compile with either XeLaTeX or LuaLaTeX.

This is part of the `minimalist` class series.

## Features

Compared with usual document classes, it has the following features:

- Several carefully designed styles.
- Native multilingual support: Chinese (simplified and traditional), English, French, German, Italian, Japanese, Portuguese (European and Brazilian), Russian and Spanish.
    > In particular, for simplified Chinese, traditional Chinese and Japanese, the fonts of the corresponding glyphs can be automatically switched.
- Ready-to-use theorem-type environments, with clever referencing supported.
- Support both the standard and the AMS writing fashion.
- ... and much more...

## Required fonts

The current document class requires the following open-source fonts that are not included in the standard TeX collection:

- The Source Han font series at [Adobe Fonts](https://github.com/adobe-fonts). More specifically:
  - Source Han Serif, [go to its Release page](https://github.com/adobe-fonts/source-han-serif/releases).
  - Source Han Sans, [go to its Release page](https://github.com/adobe-fonts/source-han-sans/releases).
  - Source Han Mono, [go to its Release page](https://github.com/adobe-fonts/source-han-mono/releases).
  > It is recommended to download the Super-OTC version, so that the download size would be smaller.

## Improvements to the current font configuration

> The code in this section is rather experimental and may constantly get changed. The author uses these lines of code in his daily documents, but since it involves non-free fonts and/or uses complex Lua patches, the code below cannot be integrated into the published version.

If you are willing to use LuaLaTeX, then the following aspects may help you further improve the current font configuration.

- If you have the font `Palatino Linotype` installed, then replacing the default `TeXGyrePagellaX` using the following code gives you slightly better result:
    ```latex
    \directlua
      {
        fonts.handlers.otf.addfeature
          {
            name = "palatino-linotype-fix",
            type = "kern",
            data =
              {
                ["r"] = { ["ê"] = 120 },
                ["v"] = { ["ê"] = 180 },
                ["w"] = { ["ê"] = 180 },
                ["y"] = { ["ê"] = 180 },
              },
          }
      }
    \setmainfont{Palatino Linotype}
      [
        Numbers = OldStyle ,
        RawFeature = +palatino-linotype-fix
      ]
    ```
- If you have the font `Palatino Sans LT Pro` installed, then replacing the default `mathsf` font with this gives more pleasant visual effect:
  ```latex
  \setmathsf{Palatino Sans LT Pro}
  \setmathfont{PalatinoSansLTPro-LightIta}[range=sfit]
  ```
- The default configuration for math fonts has some imperfections. The following code helps to improve it. But for this you need to modify the `.cls` file itself and then maintain your local version of it. Here is how:
  - First, add this definition at the beginning of the font configuration.
    ```latex
    \ExplSyntaxOff
    % https://tex.stackexchange.com/a/505003
    \def\mathkern@fix@for@lua
      {
        \directlua
          {
            local mathkerns = {
              ["Asana-Math"] = {
                [0x1D447] = {% T
                  bottomright = {
                    {height=0,kern=-120},
                  },
                },
                [0x1D449] = {% V
                  bottomright = {
                    {height=0,kern=-120},
                  },
                },
                [0x1D44A] = {% W
                  bottomright = {
                    {height=0,kern=-30},
                  },
                },
                [0x1D453] = {% f
                  bottomright = {
                    {height=0,kern=-135},
                  },
                },
                [0x1D44F] = {% b
                  topright = {
                    {height=0,kern=75},
                  },
                },
              },
              ["KpMath-Regular"] = {
                [0x1D6FD] = {% \beta
                  bottomright = {
                    {height=0,kern=30},
                  },
                },
                [0x1D6FF] = {% \delta
                  bottomright = {
                    {height=0,kern=30},
                  },
                },
                [0x1D702] = {% \eta
                  bottomright = {
                    {height=0,kern=30},
                  },
                },
                [0x1D703] = {% \theta
                  bottomright = {
                    {height=0,kern=10},
                  },
                },
                [0x1D714] = {% \omega
                  bottomright = {
                    {height=0,kern=30},
                  },
                },
              },
            }
            local function initmathkern(tfmdata)
              local values = mathkerns[tfmdata.properties.psname]
              if not values then return end
              for cp, value in next, values do
                local tcp = type(cp)
                if tcp == 'string' then
                  cp = tfmdata.resources.unicodes[cp]
                end
                local char = tfmdata.characters[cp]
                if char then
                  local mathkern = char.mathkerns
                  if not mathkern then
                    mathkern = {}
                    char.mathkerns = mathkern
                  end
                  for corner, v in next, value do
                    mathkern[corner] = v
                  end
                end
              end
            end
            fonts.constructors.newfeatures'otf'.register{
              name = 'mathkern',
              description = 'Overwrite mathkern values',
              initializers = {
                base = initmathkern,
              },
            }
          }
      }
    \ExplSyntaxOn
    ```
  - Then, just before `\RequirePackage { unicode-math }`, add these lines:
    ```latex
    \sys_if_engine_luatex:T
      {
        \mathkern@fix@for@lua
      }
    ```
  - Finally, replace `\setmathfont { KpMath-Regular.otf }` with `\setmathfont [ RawFeature = mathkern ] { KpMath-Regular.otf }`, and replace
    ```latex
    \setmathfont { texgyrepagella-math.otf }
      [
        range = { it / { Latin, latin }, bfit / { Latin, latin }, up / num, bfup / num }
      ]
    ```
    with
    ```latex
    \setmathfont [ RawFeature = mathkern ] { Asana-Math.otf }
      [
        range = { it / { Latin, latin }, bfit / { Latin, latin }, up / num, bfup / num }
      ]
    ```

# License

This work is released under the LaTeX Project Public License, v1.3c or later.
