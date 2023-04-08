# CV template in Latex

Compile with `./Makefile` which will automatically run the command `xelatex -shell-escape CV.tex` 

Styling is stored in `joe-resume.cls` and content is in `CV.tex` as well as `LeftHandColumn.tex` and `RightHandColumn.tex`

To run please install `xelatex` which can be done with the following command. 

```
sudo apt-get install texlive-xetex
```

On Mac `texlive` can be installed through the `hombrew` packet manager using,

```
brew install texlive
```

`pdflatex` won't work for this template since the fonts it uses require `xelatex`, which is also part of the `texlive` package so should be installed automatically alongside `pdflatex`

To skip the warnings when building set the interaction to `nonstopmode` using:

```
xelatex -shell-escape -interaction=nonstopmode CV.tex
```

Remove `-interaction=nonstopmode` to see any warnings prduced.

If you cannot run `Makefile` by defualt on a Mac, use `chmod +x ./Makefile` to make it an executable. It can then be run with `./Makefile`
