
# LaTeX Template for any basic scientific paper / thesis

## Prerequisites

### LaTeX / BiTeX

Arch:
```bash 
sudo pacman -S texlive latexmk biber
```

Fedora:
```bash
sudo dnf install latexmk texlive-scheme-medium biber
```

Debian:
```bash
sudo apt install latexmk texlive-latex-recommended texlive-latex-extra texlive-bibtex-extra biber
```

### Extra (pdf viewer, change make watch to remove)

```bash 
sudo pacman -S zathura
```

## Usage

First create a out:

```bash 
mkdir out
```

### Compile main.tex into a PDF:

```bash
make all
```

### Compile and watch for changes, then recompile

```bash
make watch
```

### Clean the out dir

```bash
make clean
```



