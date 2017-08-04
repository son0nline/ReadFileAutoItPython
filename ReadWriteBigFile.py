import re
filename = "aircore_0.log"
#filename = "a.txt"
txt = open(filename)
file = open("testfile.txt","w")
line = txt.readline()
while line:
	matchObj = re.match( r'.*FTKTE00538001\t\[SQL\]\t\[START\].*', line)
	if matchObj:
		#print line
		file.write(line) 
	line = txt.readline()
txt.close()
file.close()