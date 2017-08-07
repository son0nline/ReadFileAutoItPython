fileComment = 'SharedOrigin.properties'
fileSetting = 'Sharedold.properties'

fCom = open(fileComment, encoding="shift_jis", errors="surrogateescape")
fSet = open(fileSetting, encoding="shift_jis", errors="surrogateescape")
fileRS = open("rs.txt",'a', encoding="shift_jis", errors="surrogateescape")

lineCom = fCom.readline()
lineSet = fSet.readline()

while lineCom:
	if lineCom[:1] == "#":
		fileRS.write(lineCom)
	else:
		fileRS.write(lineSet) 
	lineCom = fCom.readline()
	lineSet = fSet.readline()

fileRS.close()
fCom.close()
fSet.close()
