LinuxOS Drag and Drop Control is Dragging an Icon (image) from webpage(s) to the Drag and Drop Input Dialog (yad gui at this time) on your Desktop for launching programs, websites, executing terminal commands. Only HTML coding is required for webpage. The DND Ver 1.x processing is handled by a single yad bash yad GUI Ver 10+ --dnd script. 

**WARNING !!!!!!- Never run as root user in Terminal when doing any Drag and Drop**

Created wki: 
https://github.com/offternet/LinDnD/wiki - Videos !!

Added html Ver 1.0d files: 03/24/2026

NOTE: LinDnd - LinuxOS Drag & Drop Control is currently in experimental Alpha Design and Testing phase. We are using yad gui as the DnD until we find a suitable replacement as yad only works on GTK 3+ Desktop Environments. We do have a link to a yad AppImage that only needs to be downloaded to your GTK 3+ computer and it will work with the LinDnd script..

Yad-13.0-x86_64.AppImage built on ubuntu with github actions - works on Debian pure with GTK 3+.

Size of Yad-13.0-x86_64.AppImage: 76.2MB  |   https://github.com/sonic2kk/steamtinkerlaunch-tweaks/releases  

--------------------------------------------------

**MIT License: 
Copyright (c) March 20, 2026 Robert J. Cooper, https://LinDnD.com Kingman, AZ**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF 
CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
---------------------------------------------------

Ver 1.0 - How to use the script and associated files as we are doing. You are free to enchance and streamline all as you see fit and let us know where we can improve our system.

**Dependicy Programs**
LinDnd Script system has bee tested successfully with the following terminals:
LXTerminal | Gnome-Terminal and Xfce Terminal

**Preparing system with source files:**
Download source code or use git and clone the LinDnd repository to your GTK 3+ system.
create a user permissions directory in root of system at:  /production | cd /production and make a /buttons directory.
Copy all files with no extension to this /producton directory and make them executable. On Debian system: sudo chmod +x ./filename
Copy alll files with an extension to /production. | make lindnd_Ver1.sh executable | Copy yad.Appimage executable
Change to source buttons directory and copy some or all buttons to /production/buttons/ directory.

**If yad gui is installed on your system:**
In terminal type:  whereis yad | if is is located run:  yad --about and this will tell you what verion of yad you have currently installed. yad gui 10+ is required.
If you have yad already installed and its the repository version 0.40.x, this will not work with our LinDnd scrpt. You will need to either use yad.AppImage or compile and install yad gui 10+ to your system.  

**Yad-13.0-x86_64.AppImage: No installation Requied**
This is Ver 13 yad gui with webkit3 libraries built-in and the file is huge at 76.2MB but, not all of required Webkit3 library files are included as some are default on GTK systems so in the case of  Xubuntu and Linux Mint both Xfce GTK3 there are a few critical Webkit library files so the yad --html will not work. We did not create yad.AppImage but, Yad-13.0-x86_64.AppImage does work fine with our LinDnD scripts - Drag & Drop process.

**How to Drag & Drop images and Execute shell scripts in Terminal**
Locate /production/command.html and double click, it should open in your default browser. You will see multiple images that will you drag to the yad dnd dialog window.
Open your terminal and type:  cd /production && ls -l [Enterkey]
Find the current lindnd_V1.xxx.sh file name and execute it: For example, in Debian it is ./lindnd_V1.0d.sh
The yad --dnd dialog will appear - Title: LinDnd Control
Posistion this dialog and your previously opened browser window so both can be seen. 
Now Click left mouse button and hold on one icon (image) from the command.html webpage to the LinDnd Control Window and release button.
What will happen is a new child process terminal window will open. You may be asked for your sudo password (or not)
its that simple !!! you are a Linux Drag & Drop Control Developer from this point on. 

**Errors are possible during our Alpha and Beta Testing Phases**
We have deliberately designed the early phase script to open a new process on each Drag & Drop and this is mainly for security reasons. Should a command require sudo password, the user will be prompted for sudo password each time correctly as its a new terminal window being launched. **HOWEVER !!!! WARNING !!! NEVER RUN AS root # !!!** when doing any Drag and Drop. 

**User Modification of LinDnd Script and image files**
YES ! MODS Away !!!  But please, if we sent out a logo, replace it, don't mod it. TIA

This information here is subject to change without any type of notice of anykind whatsoever. Your continued use of any of our script(s), other files like images and logos and/or our Interactive Website https://LinDnd.com is proof of your exceptance of our MIT License which is include above in this document. If you don't accept the terms of our MIT License, you must cease use of all LinDnd software, data, name, and websites.

Questions and/or concerns can be sent via contact form on our website at: https://lindnd.com/

Update on March 25, 2026 | Kingman, AZ, USA

