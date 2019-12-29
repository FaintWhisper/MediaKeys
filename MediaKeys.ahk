; Copyright 2019 WeedRapist
; MediaKeys.ahk is licensed under the terms of the MIT License. See LICENSE for more information.
;
; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
; TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
; THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
; CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
; DEALINGS IN THE SOFTWARE.

;previous song
^[::
Send {Media_Prev}
return

;play/pause
^\::
Send {Media_Play_Pause}
return

;next song
^]::
Send {Media_Next}
return

;volume up
^'::
Send {Volume_Up}
return

;volume down
^;::
Send {Volume_Down}
return

;volume mute
^+;::
Send {Volume_Mute}
return
