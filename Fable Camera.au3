#include <Misc.au3>

HotKeySet('{F9}', 'exitThis')

Local $n = 1

While $n <> 0
   While $n = 1

	  Send("{NUMLOCK down}")

	  If _IsPressed("6F") Then
		 $n = 2
	  EndIf
   WEnd

   While $n = 2

	  Send("{NUMLOCK up}")

	  If _IsPressed("6F") Then
		 $n = 1
	  EndIf
   WEnd
WEnd


Func exitThis()
   Exit
EndFunc