; Adapted from https://pastebin.com/sR2zjeGu

#NoEnv
; #Warn

SendMode InputThenPlay
SetWorkingDir %A_ScriptDir%

#SingleInstance force
#include AutoHotkey-Midi/Midi.ahk

SetKeyDelay, , 20,

; These bindings work for the default layout on the Korg Nanopad2
; You may need to change the MIDI notes to match your device
bindings := {   "C1"  :	"A"
			,	"C#1" :	"W"
			,	"D1"  :	"S"
			,	"D#1" :	"E"
			,	"E1"  :	"D"
			,	"F1"  :	"F"
			,	"F#1" :	"T"
			,	"G1"  :	"G"
			,	"G#1" :	"Y"
			,	"A1"  :	"H"
			,	"A#1" :	"U"
			,	"B1"  :	"J"
			,   "C2"  :	"K"
			,	"C#2" :	"I"
			,	"D2"  :	"L"
			,	"D#2" :	"O" }

device := new Midi()
device.OpenMidiIn(0)

Return

MidiNoteOn:
	event := device.MidiIn()
	if (event.velocity > 0)
		Send % bindings[event.noteName]
	Return