
// Typst custom formats typically consist of a 'typst-template.typ' (which is
// the source code for a typst template) and a 'typst-show.typ' which calls the
// template's function (forwarding Pandoc metadata values as required)
//
//   - https://typst.app/docs/tutorial/making-a-template/
//   - https://github.com/typst/templates

#show: doc => thesis(

$if(title)$
  title: [$title$],
$endif$

$if(subtitle)$
  subtitle: [$subtitle$],
$endif$

$if(by-author)$
  authors: (
$for(by-author)$
$if(it.name.literal)$
    ( name: [$it.name.literal$],
      affiliation: [$for(it.affiliations)$$it.name$$sep$, $endfor$],
      email: [$it.email$] ),
$endif$
$endfor$
    ),
$endif$

$if(date)$
  date: [$date$],
$endif$

$if(supervisor)$
supervisor: "$supervisor$",
$endif$

$if(university)$
university: "$university$",
$endif$

$if(thanks)$
thanks: [$thanks$],
$endif$

$if(lang)$
  lang: "$lang$",
$endif$

$if(region)$
  region: "$region$",
$endif$

$if(abstract)$
  abstract: [$abstract$],
  abstract-title: "$labels.abstract$",
$endif$

$if(margin)$
  margin: ($for(margin/pairs)$$margin.key$: $margin.value$,$endfor$),
$endif$

$if(papersize)$
  paper: "$papersize$",
$endif$

// font for the body
$if(mainfont)$
  font: ("$mainfont$",),
$elseif(brand.typography.base.family)$
  font: $brand.typography.base.family$,
$endif$

// font size for the body
$if(fontsize)$
  fontsize: $fontsize$,
$elseif(brand.typography.base.size)$
  fontsize: $brand.typography.base.size$,
$endif$

$if(title)$
$if(brand.typography.headings.family)$
  heading-family: $brand.typography.headings.family$,
$endif$

$if(brand.typography.headings.weight)$
  heading-weight: $brand.typography.headings.weight$,
$endif$

$if(brand.typography.headings.style)$
  heading-style: "$brand.typography.headings.style$",
$endif$

$if(brand.typography.headings.color)$
  heading-color: $brand.typography.headings.color$,
$endif$

$if(brand.typography.headings.line-height)$
  heading-line-height: $brand.typography.headings.line-height$,
$endif$
$endif$

$if(section-numbering)$
  sectionnumbering: "$section-numbering$",
$endif$

  pagenumbering: $if(page-numbering)$"$page-numbering$"$else$none$endif$,
$if(toc)$
  toc: $toc$,
$endif$

$if(linkcolor)$
linkcolor: "$linkcolor$",
$endif$

$if(linestrech)$
linestrech: $linestrech$,
$endif$

$if(toc-title)$
  toc_title: [$toc-title$],
$endif$

$if(toc-indent)$
  toc_indent: $toc-indent$,
$endif$
  toc_depth: $toc-depth$,
  cols: $if(columns)$$columns$$else$1$endif$,
  doc,

)
