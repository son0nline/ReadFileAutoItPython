#include <file.au3>
;~ $file = FileOpen("test.txt", 0)
$file = FileOpen("aircore_0.log", 0)
$fileRS = FileOpen("rs.txt", 1 + 932) ; 1 is appen mode  + 932 is encoding shift_jis
While 1
    $line = FileReadLine($file)
    If @error = -1 Then ExitLoop
	If StringRegExp ($line, ".*FTKTE00538001\t\[SQL\]\t\[START\].*") =  1 Then
		FileWrite($fileRS, $line & @CRLF)
	EndIf
WEnd
FileClose($file)
FileClose($fileRS)
MsgBox(0,'','OK')