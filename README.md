Docpls
======

Make me a LaTeX document fast (pls.) Quick articles and reports
Includes a Makefile for installing stuff, building pdfs and cleaning up.

    cd ~/Documents
    mkdir mydoc
    git clone https://github.com/nnog/docpls.git
    cp docpls/Makefile mydoc/
    cp docpls/doc.tex mydoc/

If you dont have tex installed:

    make install
    
Edit your document. To make a pdf:

    make

If you are using Bibtex:

    make pdfbib

To clean up:

    make clean

Quick quick gogogo make your document!
