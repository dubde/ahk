 local := "http://localhost:4200"


 ; Escape To Close
!Escape::
WinGetActiveTitle, active_title
WinClose %active_title%  
return

 ; Run Tests (npm test + enter := Alt+t)
 !t::
 Send, npm test {Enter}
 return
 
 ; Run Serve AOT (ng serve --aot + enter := Alt+r)
 !r::
 Send, ng serve --aot {Enter}
 return
 
 
 ; Open chrome=Alt+1,
 !1::
 Run, chrome.exe %local%
 return
 
 ; Open firefox=Alt+2,
 !2::
 Run, firefox.exe %local%
 return
 
 ; Open ie=Alt+3,
 !3::
 Run, iexplore.exe %local%
 return
 
 ; Run CMD = Alt+`
 ;!`::
 ;Run, cmd.exe
 ;return
 
 ; CMD: Go to Self Service (cd C:\projects\self-service\source\self-service := 
 >^Home::
 Run, cmd.exe, C:\projects\self-service\source\self-service
 return
 
 ; CMD: Go to Next (cd C:\projects\next\source\web-client := 
  >^End::
 Run, cmd.exe, C:\projects\next\source\web-client
 return
 
 ; Run IntelliJ IDEA
 !q::
 IfWinExist AHK_exe idea64.exe
 WinActivate AHK_exe idea64.exe
 IfWinNotExist AHK_exe idea64.exe
 !^q::
 Run, C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2018.3.5\bin\idea64.exe
 return
 
 
 ; Run VisualStudio
 !w::
 IfWinExist AHK_exe Code.exe
 WinActivate AHK_exe Code.exe
 IfWinNotExist AHK_exe Code.exe
 !^w::
 Run, C:\Users\dvelluto\AppData\Local\Programs\Microsoft VS Code\Code.exe
 return
 
 ; Run Skype
 !p::
 IfWinExist AHK_exe lync.exe
 WinActivate AHK_exe lync.exe
 IfWinNotExist AHK_exe lync.exe
 !^p::
 Run, C:\Program Files (x86)\Microsoft Office\root\Office16\lync.exe
 return
 
 ; Run Outlook
 !k::
 IfWinNotActive AHK_exe outlook.exe
 Run, outlook.exe
 return

; Login Next Finance
!f::
Send, finance{Tab}finance{Enter}
return
 