Welcome to the International Morse Code Translator by Rick Flores. 
==============
This is an interactive application that translates raw morse code into readable text.
It supports the entire alphabet A-Z, and numbers 0-9. It also supports colorized output with the rainbow gem.

![Screenshot](http://s7.postimg.org/u3u0y181n/Screen_Shot_2013_05_12_at_1_01_39_AM.png)

![Screenshot](http://upload.wikimedia.org/wikipedia/commons/b/b5/International_Morse_Code.svg)

## Pre Reqs

You *MUST install the rainbow gem for the pretty colorized output:

	gem install rainbow
	
	require 'rainbow'

## Usage
	./morse_code.rb
	

## Features
* Shell / Commandline (CLI) application allowing:
	* Translation of the International Morse Code to text
	* Supports the entire alphabet A-Z
	* Supports numbers 0-9

## Requirements
* Tested on ruby version/s:
	* ruby 2.0.0p0 (2013-02-24 revision 39474)
	
	* ruby 1.9.3

## History
* 05/12/2013 - Simple code updates by Rick Flores
Added the acceptance of user input vs requiring the morse code string hardcoded into the prgoram.
Added the ability to include numbers 0..9 in the script as well.
Made it more user friendly

* 05/12/2013 - Updated README.md 

## To Do
* Possible Rails UI in the future

## Credits
* Rick Flores (nanotechz9l) -- 0xnanoquetz9l[--at--]gmail.com

## License
This code is free software; you can redistribute it and/or modify it under the
terms of the new BSD License.

## Original concept and code:.
http://basgys.tumblr.com/post/19888399588/a-ruby-morse-code-interpreter
