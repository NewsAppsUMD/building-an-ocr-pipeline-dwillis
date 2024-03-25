# md_doc_discipline
Tracking Maryland's disciplined doctors

#### 2024-03-11

- [ ] Make sure requirements are installed
- [ ] Test scraper to make sure it works
- [ ] Install tesseract and other needed software for OCR
- [ ] Work on the assignment

#### 2024-03-13

Start to build the pipeline in ocr.sh by testing out the steps

- [ ] Make a directory to store the PDFs
- [ ] Download the PDFs from alerts.csv to that directory using [csvcut](https://csvkit.readthedocs.io/en/latest/tutorial/1_getting_started.html#csvcut-data-scalpel) 
- [ ] Use [pdf2image](https://pypi.org/project/pdf2image-cli/) to convert the PDFs to png files