---
title: CSVtoPDF Processor in Go and Powershell
description: Convert CSV
date: 2020-07-21
tags:
  - software
  - utility
---
### Introduction

I created this simple utility for my Mom's dental practice. She wanted to have patients fill out intake forms before coming into the office (even more necessary than before due to the current pandemic), but needed a HIPAA compliant solution that could result in nicely formatted printed forms. Most professional providers charge upwards of $50 a month for just the HIPAA compliant forms, so I decided to make something to handle it. Google Forms are already covered under the BAA with Google Apps, but has no way to easily format the outputted table into printable forms. I wrote this program to take the downloaded CSV file, split the data by row (per patient), put it into an HTML template, and generate a printable PDF. 

### Implementation

I created this program with Go since I had just learned it for my distributed systems course and enjoyed working in it. Using channels for concurrency was especially useful since it meant I could split up the file by rows and handle them all independently. I initially planned to use WKHTMLtoPDF to render the injected template to PDF, but the results were not at all what I expected after building and testing the templates in Firefox. I tried using headless chrome instead and had some success, and I eventually found that using a dev version of chrome would provide me all the functionality I needed (some features such as excluding headers and footers from printed PDFs were still in beta). 

To handle renaming some files and combining generated files into a single printable PDF, I used a powershell script and [pdfcpu](https://pdfcpu.io/), a Go library for pdf processing. The powershell script also automated the downloading of the csv from Google Sheets to simplify the entire process. 

### Conclusion

Overall, this was a pretty simple utility that I built in the first week of summer this year. There doesn't seem to be many tools like it, especially not that you can run on your own computer to avoid compliance issues. It was an interesting experience as I have not built any programs for "clients" before. I gained some experience with building automation/assistance tools that I hope to apply in the future.