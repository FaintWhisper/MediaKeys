# MediaKeys

MediaKeys is an AutoHotkey script that creates some useful media key shortcuts (they work regardless of the presence of built-in media keys) and some queuing hotkeys for Spotify.

# Syntax

* MediaKeys takes either no arguments or exactly 4:
  * Arg 1
    * a string which determines the operation mode
    * values: MediaKeys, Spotify, MediaKeysSpotify
    * default: MediaKeysSpotify
  * Arg 2
    * an integer for the pre-click delay, i.e., how long AutoHotKey sleeps after the hotkey to do the necessary right mouse click. You might need to increase this if the Spotify hotkeys are not working correctly.
    * values: 0 or greater
    * default: 0
  * Arg 3
    * an integer for the post-click delay, i.e., how long AutoHotKey sleeps after the right mouse. You might need to increase this if the Spotify hotkeys are not working correcly.
    * values: 0 or greater
    * default: 150
  * Arg 4
    * an integer for step size, i.e., the amount delay changes when you use the delay hotkeys
    * values: 0 or greater
    * default: 10
  * When called with no arguments, defaults are used.

# Notes

  * If you want MediaKeys to start automatically when you log in, add a shortcut to the Windows Startup folder. You can pass arguments by adding them to the end of Target in Properties.

# Hotkeys

* Media
  * previous: ^[ *Control+LeftSquareBracket*
  * next: ^] *Control+RightSquareBracket*
  * play/pause: ^\\ *Control+Backslash*
  * volume down: ^; *Control+Semicolon*
  * volume mute: ^+; *Control+Shift+Semicolon*
  * volume up: ^' *Control+RightApostrophe*
* Spotify
  * these only work when Spotify is active window
  * add song under mouse cursor to queue: ^Q *Control+Q*
  * remove song under mouse cursor from queue: ^A *Control+A*
  * increase/decrease PostClickDelay: ^W/^+W *Control+W/Control+Shift+W*
  * increase/decrease PreClickDelay: ^S/^+S *Control+S/Control+Shift+S*

# Changelog

* v1. Initial release.
* v2. Consolidated to a single script/executable. Added ability to adjust PreClickDelay, PostClickDelay and Step with hotkeys. Updated documentation.

# License

MIT License

Copyright (c) 2019 WeedRapist

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
