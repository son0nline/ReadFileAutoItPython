import re
path = 'aircore_0.log'
# path = 'test.txt'
txt = open(path, encoding="shift_jis", errors="surrogateescape")
fileRS = open("rs.txt",'a', encoding="shift_jis", errors="surrogateescape")
line = txt.readline()
while line:
	# print(line)
	match = re.search(r'.*FTKTE00538001\t\[SQL\]\t\[START\].*', line)
	if match:
		fileRS.write(line) 
	line = txt.readline()
fileRS.close()
txt.close()

# import codecs
# import re
# import unicodedata

# matchObj = re.match('.ab','1a2b')
# if matchObj:
# 	print("matchObj")
# else:
# 	print('eo match')



# #fileStream = codecs.open(path, encoding='utf-8')
# #allfile = fileStream.readline()
# #print(allfile)

# #with codecs.open(path, encoding='shift_jis') as infile:
# with codecs.open(path, encoding='shift_jisx0213') as infile:
#     for line in infile:
#     	print(line)