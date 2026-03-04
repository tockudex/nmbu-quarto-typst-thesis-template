# Quarto/typst thesis template following NMBU's guidelines

> [!Warning]
> This template is an early stage of development, but will be improved over time.

[`Quarto`](https://quarto.org) is the successor of `RMarkdown`, based on the popular `markdown` language, making it a breeze to combine text and code in a single document. `Quarto` allows to combine `python`, `R`, `Julia` and `Observable` into a single document. It can then be rendered into different file formats (`html`, `pdf`, etc.). With the in-built [`typst`](https://typst.app) rendering engine, documents can be compiled into beautiful PDFs.

Based on the [NMBU guidelines](https://www.nmbu.no/en/students/degree-thesis-nmbu) for theses and inspired by the [LATEX template](https://github.com/LRydin/NMBU-Thesis-Template) created by [LRydin](https://github.com/LRydin/NMBU-Thesis-Template), this templates aims to simplify the writing and compiling process for a template at NMBU. 


## Installing

### With RStudio

[`RStudio`](https://posit.co/downloads/) comes pre-installed with Quarto, making it straight forward to work on this template.

1. You can manually download this template or use git/quarto to clone it to your directory of choice.
2. Then open it inside of RStudio.


### With a different IDE/text editor

Alternatively, you can use the IDE/text editor of your choice as described in the [Quarto docs](https://quarto.org/docs/get-started/).

To clone this template and initiate a new Quarto project, use following command:

```bash
quarto use template tockudex/nmbu-quarto-typst-thesis-template
```


## Using

Inside of the template directory, you will find the markdown file `thesis.qmd`, which you can use as a starting place for writing your thesis.

_TODO_: Better describe how to use this format (typst files, etc.).
