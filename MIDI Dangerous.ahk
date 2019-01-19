#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode InputThenPlay  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#include AutoHotKey-Midi/Midi.ahk

midi := new Midi()
midi.OpenMidiIn( 0 )

Return

MidiNoteOnA4:
	event := midi.MidiIn()
	if (event.velocity > 0)
		Send C
	Return