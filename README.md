# MD to PDF

Generate a _pdf_ file from _markdown_ using _pandoc_ and compiling with _pdftex_.

## Requirements

- Make: GNU make utility to maintain groups of programs
- Pandoc: General markup converter
- Pdftex: PDF output from TeX

## Structure

```
$ tree
.
├── Makefile
├── tcc.md
└── tex
    ├── beg.tex
    ├── bibliografia.bib
    ├── commands.tex
    ├── document_class.tex
    ├── end.tex
    ├── Makefile
    └── packages.tex

1 directory, 9 files
```

## Features

- [x] Cite
- [x] Code (listings)
- [x] Font bold
- [x] Font italic
- [x] Footnote
- [x] Math equations
- [ ] Images

