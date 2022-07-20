
# rrquartofmt

<!-- badges: start -->
<!-- badges: end -->

The **rrquartofmt** extension provides custom [Quarto](https://quarto.org) HTML and PDF/LaTeX formats that I use for literate, interactive worksheets and assignments in my *Quantitative Methods in Biological Anthropology* course that I teach at the CUNY Graduate Center. 

## Installation

Install from github with:

``` bash
quarto install extension ryanraaum/rrquartofmt
```

## Usage

There are two different document types:

1. A more aggressively styled worksheet document with matching HTML and PDF/LaTeX formatters (`rrworksheet-html` and `rrworksheet-pdf`).
2. A more basically styled assignment document with only a PDF/LaTeX formatter (`rrassignment-pdf`).

To use any of these, assign to `format` in the Quarto YAML header. For example,

```yaml
---
title: "Worksheet"
course: "Course Name"
author: "Ryan Raaum"
output: rrworksheet-html
---
```

## Credit to

- [Modifying R Markdown's LaTeX styles](https://www.gerkelab.com/blog/2019/04/manipulating-latex-in-rmd/) by Travis Gerke for convincing me that it shouldn't be too hard.
- [Wandmalfarbe/pandoc-latex-template](https://github.com/Wandmalfarbe/pandoc-latex-template) for an example of a good way to modify the stock pandoc template. 
