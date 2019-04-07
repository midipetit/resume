all: pdf

pdf: prepare
	@echo "Creating pdf output ..."
	@pwd
	@pandoc _config.yml -o resume.pdf --template=template.tex --pdf-engine=xelatex

prepare:
	@echo "Preparing ..."
