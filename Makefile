LaTeX_MAIN_FILE_NAME=rapport_de_projet
# Be sure to change the minted option too
LaTeX_OUT_FILE_DIR=./out

default:
	mkdir -p ${LaTeX_OUT_FILE_DIR}
	rm -rf ${LaTeX_MAIN_FILE_NAME}.pdf || true
	xelatex -shell-escape -output-directory=${LaTeX_OUT_FILE_DIR} ${LaTeX_MAIN_FILE_NAME}.tex
	bibtex ${LaTeX_OUT_FILE_DIR}/${LaTeX_MAIN_FILE_NAME}1
	cp ${LaTeX_OUT_FILE_DIR}/${LaTeX_MAIN_FILE_NAME}.pdf .
	xdg-open ${LaTeX_MAIN_FILE_NAME}.pdf
