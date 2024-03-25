## The Process

We have a list of alerts with URLs of PDF files (example: https://www.mbp.state.md.us/BPQAPP/orders/d1604912.124.pdf)

I was able to download 469 of the 472 PDF files. Need to come back and figure out which ones we don't have and get them.

I wrote (with ChatGPT's help) a script to convert the PDF files to images.

The next step is to extract the text using tesseract.

We have the extracted text of each PDF in a file of the same name but with a .txt extension (so d1604912.124.txt).