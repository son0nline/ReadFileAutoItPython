#include <File.au3>

$file = "url.txt"
FileOpen($file, 0)

For $i = 1 to _FileCountLines($file)
    $line = FileReadLine($file, $i)
msgbox(0,'','the line ' & $i & ' is ' & $line)
Next
FileClose($file)