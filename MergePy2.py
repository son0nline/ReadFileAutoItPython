fileComment = 'SharedOrigin.properties'
fileSetting = 'Sharedold.properties'

fCom = open(fileComment)
fSet = open(fileSetting)
fileRS = open("merge.properties",'a')

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
