#!/bin/bash

/home/linux/Downloads/Yad-13.0-x86_64.AppImage --dnd --command='exo-open --launch TerminalEmulator bash -c "file=\"%s\"; file=\$(echo \"\$file\" | sed \"s|.*/command||\" | sed \"s|^file://*||\" | tr -d \"\n\r\t\" | sed \"s/[^a-zA-Z0-9_/.-]//g\" | sed \"s/^ *//;s/ *$//\" | sed \"s|^/*||\" | sed \"s|^[a-zA-Z]|/&|\"); bash \"\$file\"; echo; echo Press Enter to close...; read"' --text="Drop stuff here" --width=200 --height=200 --title="Test DND"
