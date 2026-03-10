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

A `.qmd` file is composed of a `YAML` header and a `markdown` body. The former contains `keys` that set parameters applying to your body and metadata (author name, published date, etc.). Most keys used in this template are annotated, so you can easily adjust them to your needs. The body of a Quarto document is written in a slightly [modified markdown version](https://quarto.org/docs/authoring/markdown-basics.html).

### Abstract section

In published papers and reports, the abstract is often placed right after the title and prior to the table of contents (toc) and introduction. In a Quarto document, the `toc` appears before any other heading (abstract, introduction, etc.). In order to place the abstract before the `toc`, you can comment out (remove the pound/hash sign) `abstract-section` from the `filters` key in the YAML header. Upon recompilation, your abstract will appear before your `toc`.

_TODO_: Better describe how to use this format (typst files, etc.).
