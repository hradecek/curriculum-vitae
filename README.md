# Hradecek's Curriculum Vitae
Dependencies:
 - XeTeX, transitive dependency, required due to underlying template compilation,
 - [FontAwesome](https://fontawesome.com/),
 - [Okular](https://okular.kde.org/), document viewer (*optional*),
 - [Pandoc](https://pandoc.org), markup language transformation utility (*optional*).

All optional dependencies can be easily adjusted in [Makefile](https://github.com/hradecek/curriculum-vitae/Makefile).

## Compile
Supported document formats:
 - PDF (default),
 - Markdown.

See all `make` tasks in [Makefile](https://github.com/hradecek/curriculum-vitae/Makefile).

### PDF
Run:
```
$ make
```
as a default task or alternatively,
```
$ make pdf
```

### Markdown
Run:
```
$ make markdown
```
Note, that compiled/transpiled markdown file has to be **modified** in order to achieve markdown valid file and great look as the transformation process is not perfect.

## Clean
Run:
```
$ make clean
```
in order to remove all generated files including logs, pdfs, ...

## External data
File `variables.sty` contains defintions of some exeternal data, suchc as constants or publicly sensitive data.

## Third party
Curriculum vitae is build upon [Deedy-Resume](https://github.com/deedy/Deedy-Resume) template published under [Apache License 2.0](https://github.com/deedy/Deedy-Resume/blob/master/LICENSE).

Template consits of:
 - `deedy-resume` - class file,
 - `fonts/` - directory, with all needed fonts.
