# CV settings
CV_NAME=hradek_cv
SOURCE_FILE=$(CV_NAME).tex
OUTPUT_FILE_MD=$(CV_NAME).md
OUTPUT_FILE_PDF=$(CV_NAME).pdf

# Tools
PDF_VIEWER=/usr/bin/okular
XELATEX=/usr/bin/xelatex
PANDOC=/usr/bin/pandoc

# Tasks
.DEFAULT_GOAL=pdf

show: $(OUTPUT_FILE_PDF)
	$(PDF_VIEWER) $(OUTPUT_FILE_PDF)

markdown $(OUTPUT_FILE_MD): pandoc-exists
	$(PANDOC) -s $(SOURCE_FILE) -o $(OUTPUT_FILE_MD)
pandoc-exists: ; @which $(PANDOC) >/dev/null

pdf $(OUTPUT_FILE_PDF):
	$(XELATEX) $(SOURCE_FILE)

# POSIX-way, due to except README.md part of the command
clean:
	find . \( \
		-name '*.aux' -o \
		-name '*.log' -o \
		-name '*.md'  -o \
		-name '*.out' -o \
		-name '*.pdf'    \
	\) -a ! -name 'README.md' -exec rm -rf {} \;

.PHONY: clean pandoc-exists show
