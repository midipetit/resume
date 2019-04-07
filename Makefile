all: pdf

pdf: prepare
	@echo "Creating pdf output ..."
	@pwd
	@pandoc -s -f https://github.com/csakou/resume/blob/master/_config.yml -o resume.pdf --template=template.tex --pdf-engine=xelatex

prepare:
	@echo "Preparing ..."
