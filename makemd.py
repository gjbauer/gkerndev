#!/usr/bin/python3
from markdownify import markdownify as md
import os

# Get the list of all files in a directory\
files = os.listdir(os.getcwd() + "/Docs")

# Print the files
for file in files:
	if file.endswith('.htm'):
		f0 = open(os.getcwd() + "/Docs/"+file, "r")
		f1 = open(os.getcwd() + "/Docs/"+os.path.splitext(file)[0]+".md", "w")
		text = md(f0.read())
		f1.write(text)
		print(text)
		f0.close()
		f1.close() # <-
