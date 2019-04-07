all: pdf

pdf: prepare
	@echo "Creating pdf output ..."
	@pwd
	@pandoc -s -f _config.yml -o resume.pdf --template=template.tex --pdf-engine=xelatex

prepare:
	@echo "Preparing ..."
