; Copyright 2019 WeedRapist
; Spotify.ahk is licensed under the terms of the MIT License. See LICENSE for more information.
;
; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
; TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
; THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
; CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
; DEALINGS IN THE SOFTWARE.

;Spotify: adds song under mouse cursor to queue when Ctrl+Q is pressed
#IfWinActive, ahk_exe Spotify.exe
^Q::
BlockInput, On
Sleep 10
Click, Right
Sleep, 200
Send, {Down}
Send, {Enter}
BlockInput, Off
return

;Spotify: removes song under mouse cursor to queue when Ctrl+A is pressed
#IfWinActive, ahk_exe Spotify.exe
^A::
BlockInput, On
Sleep 10
Click, Right
Sleep, 200
Send, {Up}
Send, {Up}
Send, {Enter}
BlockInput, Off
return
