# import re
txt = open("aircore_0.log.TXT","rb")
file = open("testfile.txt","rb+")
line = txt.readline()
while line:
	if line.find("	[SQL]	[START]") > 0:
		file.write(line) 
	line = txt.readline()
txt.close()
file.close()