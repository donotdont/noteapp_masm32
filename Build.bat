REM DEBUT

if exist NoteAPP.obj del NoteAPP.obj
if exist NoteAPP.exe del NoteAPP.exe

"c:\masm32\bin\ml" /c /coff /Cp /I"c:\masm32\include" /I"c:\masm32\units" /Fo"NoteAPP.obj" "NoteAPP.asm"
"c:\masm32\bin\rc" "NoteAPP.rc"
REM "c:\masm32\bin\rc" /i"c:\masm32\include" /fo"NoteAPP.res" "NoteAPP.rc"
"c:\masm32\bin\link" /SUBSYSTEM:WINDOWS /LIBPATH:"c:\masm32\lib" /OUT:"NoteAPP.exe" "NoteAPP.obj" "NoteAPP.res"
REM FIN
dir NoteAPP.*

if exist NoteAPP.exe NoteAPP.exe
