#include <file.au3>
$file = FileOpen("aircore_0.log", 0)
;~ $file = FileOpen("a.txt", 0)
$fileRS = FileOpen("rs.txt", 1)
While 1
    $line = FileReadLine($file)
    If @error = -1 Then ExitLoop
	If StringRegExp ($line, ".*FTKTE00538001\t\[SQL\]\t\[START\].*") =  1 Then
		FileWrite($fileRS, $line & @CRLF)
	EndIf
WEnd
FileClose($file)
FileClose($fileRS)
