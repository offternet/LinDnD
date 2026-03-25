#!/bin/bash

#LinDnD Ver 1.0d

#MIT License (c) 03/20/2026 Robert Cooper https://LinDnD.com. Copywrite must transfer with code.

# Function to find available terminal emulator
find_terminal() {
    # Check for common terminal emulators in order of preference
    if command -v lxterminal >/dev/null 2>&1; then
        echo "lxterminal"
    elif command -v xfce4-terminal >/dev/null 2>&1; then
        echo "xfce4-terminal"
    elif command -v gnome-terminal >/dev/null 2>&1; then
        echo "gnome-terminal"
    else
        echo ""
    fi
}

# Get available terminal emulator
TERMINAL=$(find_terminal)

if [ -z "$TERMINAL" ]; then
    yad  --error --text="No compatible terminal emulator found!" --title="Error"
    exit 1
fi

# Determine terminal command option
if [ "$TERMINAL" = "xfce4-terminal" ]; then
    TERM_OPTION="-x"
elif [ "$TERMINAL" = "gnome-terminal" ]; then
    TERM_OPTION="--"
else
    TERM_OPTION="-e"
fi

# Launch yad with DND support
     yad --dnd \
    --command='bash -c "
        # Get the dropped file path
        file=\"%s\"
        
        # Clean up the file path
        file=\$(echo \"\$file\" | sed \"s|^file://||\" | sed \"s/^[[:space:]]*//;s/[[:space:]]*$//\" | sed \"s|.*/command/||\" | sed \"s/[^a-zA-Z0-9_/.-]//g\" | sed \"s|^/*||\" | sed \"s|^[a-zA-Z]|/&|\")
        
        # Check if file exists and is executable/script
        if [ -f \"\$file\" ] && [ -x \"\$file\" ]; then
            # Open terminal and run the script
            if [ \"'"$TERMINAL"'\" = \"gnome-terminal\" ]; then
                '"$TERMINAL"' '"$TERM_OPTION"' bash -c \"echo \\\"Running: \$file\\\"; echo; \\\"\$file\\\"; echo; echo Press Enter to close...; read\" &
            else
                '"$TERMINAL"' '"$TERM_OPTION"' bash -c \"echo \\\"Running: \$file\\\"; echo; \\\"\$file\\\"; echo; echo Press Enter to close...; read\" &
            fi
        elif [ -f \"\$file\" ]; then
            # File exists but not executable, make it executable first
            chmod +x \"\$file\"
            if [ \"'"$TERMINAL"'\" = \"gnome-terminal\" ]; then
                '"$TERMINAL"' '"$TERM_OPTION"' bash -c \"echo \\\"Running (made executable): \$file\\\"; echo; \\\"\$file\\\"; echo; echo Press Enter to close...; read\" &
            else
                '"$TERMINAL"' '"$TERM_OPTION"' bash -c \"echo \\\"Running (made executable): \$file\\\"; echo; \\\"\$file\\\"; echo; echo Press Enter to close...; read\" &
            fi
        else
            # File not found or invalid
           yad --error --text=\"File not found or invalid: \$file\" --title=\"Error\" &
        fi
    "' \
    --text="Drop a script or executable file here\n\nSupported terminals:\n- lxterminal\n- xfce4-terminal\n- gnome-terminal\n\nYour DnD will run in new child process window" \
    --width=300 --height=100 --title="LinDnd Control" --button="Close:1"
