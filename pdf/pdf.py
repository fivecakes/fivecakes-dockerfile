from PyPDF2 import PdfFileWriter, PdfFileReader

inputpdf = PdfFileReader(open("2001-2010真题.pdf", "rb"))

year = 2010
for i in range(inputpdf.numPages):
	if i % 16 ==0:
		for j in range(4):
			start = i + 4 + 2 * j-1
			end = start +1
			print("%s年Text %s.pdf"%(year,j+1),start,end)
			output = PdfFileWriter()
			output.addPage(inputpdf.getPage(start))
			output.addPage(inputpdf.getPage(end))
			with open("./pdfout/%s年Text %s.pdf"%(year,j+1), "wb") as outputStream:
				output.write(outputStream)
		year = year-1