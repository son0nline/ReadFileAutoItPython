#include <FileConstants.au3>
#include <MsgBoxConstants.au3>
#include <WinAPIFiles.au3>
#include <File.au3>


$sFilePath1 = "Sharedold.properties"
$sFilePath2 = "Shared.properties"
$sFilePath3 = "SharedRS.properties"

Local $hFileOpen = FileOpen($sFilePath1, $FO_BINARY )
Local $hFileOpen2 = FileOpen($sFilePath2, $FO_BINARY )
Local $hFileOpen3 = FileOpen($sFilePath3, $FO_BINARY | $FO_OVERWRITE  )

If $hFileOpen = -1 Then
  MsgBox($MB_SYSTEMMODAL, "", "An error occurred when reading the file.")
  Return False
EndIf


$lineCount =  _FileCountLines($sFilePath1)


For $i = 1 to $lineCount
	  $strTemp = FileReadLine($hFileOpen, $i)
	  $strTemp2 = FileReadLine($hFileOpen2, $i)

	  IF StringLeft($strTemp,1) = "#" Then
		 FileWriteLine($hFileOpen3,$strTemp2)
	  Else
		 FileWriteLine($hFileOpen3,$strTemp)
	  EndIf
Next


FileClose($hFileOpen)
FileClose($hFileOpen2)
FileClose($hFileOpen3)
