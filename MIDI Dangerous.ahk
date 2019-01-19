#NoEnv
; #Warn

SendMode InputThenPlay
SetWorkingDir %A_ScriptDir%

#include AutoHotKey-Midi/Midi.ahk

dev := new Midi()
dev.OpenMidiIn( 0 )

Return

MidiNoteOnA4:
	event := dev.MidiIn()
	if (event.velocity > 0)
		Send C
	Return