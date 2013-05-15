#!/usr/bin/env ruby
require 'rainbow'
#Ref: http://basgys.tumblr.com/post/19888399588/a-ruby-morse-code-interpreter // original code
# I simply added the acceptance of user input vs having the "HELP ME OUT OF THIS WELL" string hardcoded into the prgoram.
# I also added the ability to include numbers 0..9 in the script as well.

# 1337 banner
def banner()
 print """    
          =================================================================
          =================================================================
	  ==========International Morse Code translator   v 0.0.1 =========
          ==========Transates user supplied Morse Code to text ============
	  =================================================================
          ==========Coded by Rick Flores | nanotechz9l ====================
          ==========E-mail 0xnanoquetz9l<<\|/>>gmail.com ===================
	  =================================================================
          =================================================================
 
""".foreground(:blue).bright
end

# Accept user input ::: // new addition added by Rick Flores
banner()
print "[!] Remember: SOS is the standard Morse code emergency distress signal...\n".foreground(:red).bright
print "[!] Example: ... --- ... > S O S\n".foreground(:yellow).bright
print "[!] Example: -.-. .- .-.. .-.. # ----. .---- .---- > CALL 911\n".foreground(:yellow).bright
print "[!] Example: .. # .-.. --- ...- . # -.-- --- ..-   > I LOVE YOU\n".foreground(:yellow).bright
print "[!] NOTE: This program accepts all letters A-Z, and numbers 0-9\n".foreground(:yellow).bright
print "[+] Seperate *EACH letter with a space per the example above)\n".foreground(:white).bright
print "[+] Seperate *EACH word with a # symbol plus a space per the example above)\n".foreground(:white).bright
print "[+] Enter the morse code you wish to translate > ".foreground(:white).bright

input = STDIN.gets.chomp

v = {
	'.-' 	=> 'A',	
	'-...' 	=> 'B',	
	'-.-.' 	=> 'C',	
	'-..' 	=> 'D',	
	'.'	=> 'E',	
	'..-.' 	=> 'F',	
	'--.' 	=> 'G',	
	'....' 	=> 'H',	
	'..' 	=> 'I',	
	'.---' 	=> 'J',	
	'-.-' 	=> 'K',	
	'.-..' 	=> 'L',	
	'--'	=> 'M',	
	'-.' 	=> 'N',	
	'---' 	=> 'O',	
	'.--.' 	=> 'P',	
	'--.-' 	=> 'Q',	
	'.-.' 	=> 'R',	
	'...' 	=> 'S',	
	'-' 	=> 'T',	
	'..-' 	=> 'U',	
	'...-' 	=> 'V',	
	'.--' 	=> 'W',	
	'-..-' 	=> 'X',
	'-.--' 	=> 'Y',
	'--..' 	=> 'Z',
	'.----' => '1',
	'..---' => '2',
	'...--' => '3',
  	'....-' => '4',
  	'.....' => '5',
  	'-....' => '6',
  	'--...' => '7',
  	'---..' => '8',
  	'----.' => '9',
  	'-----' => '0',
  	'#' => ' '
} 

code		= input.split(' ')
words		= code.map do |w|

w.split(' ').map {|morse_letter| v[morse_letter] }
end

sentence = words.join
puts "\nThe morse code you entered ".foreground(:white).bright + code.join + " has been translated to: ".foreground(:white).bright + words.join
`say #{sentence}`