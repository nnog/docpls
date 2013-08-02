Docpls
======

Make me a LaTeX document fast (pls.) Quick articles and reports
Includes a Makefile for installing stuff, building pdfs and cleaning up.

    git clone https://github.com/nnog/docpls.git mydoc
    cd !$

If you dont have tex installed:

    make install
    
Edit your document. Remove other templates you don't need. (And this README I guess) then simply:

    make

Easy!

Note: the default make rule builds, cleans and views the PDF (evince by default, change in Makefile if using something else.) The individual rules are: pdf, pdfbib, view, clean, cleanall.

The plan for this is to integrate DML and its prerequisites to make a complete little package for deploying and building a LaTeX workspace on any apt-supporting distro. This is very useful as it stands though, so here it is.
