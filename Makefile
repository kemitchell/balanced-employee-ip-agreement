basename=Balanced_Employee_IP_Agreement
formats=md docx odt pdf

all: $(foreach format,$(formats),$(addsuffix .$(format),$(basename)))

%.docx: %.md
	pandoc --smart -f commonmark $< -o $@

%.odt: %.md
	pandoc --smart -f commonmark $< -o $@

%.pdf: %.md
	pandoc --latex-engine=xelatex --smart -f commonmark $< -o $@
