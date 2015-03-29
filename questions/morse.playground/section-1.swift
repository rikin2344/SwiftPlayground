// Playground - noun: a place where people can play

import UIKit

// Below are the morse code characters
// Spaces are represented by 3 spaces.
// Each letter is separated by one space.

let MorseCodeToLetterLookup =
    [".-": "A", "-...": "B", "-.-.": "C", "-..": "D", ".": "E", "..-.": "F", "--.": "G", "....": "H", "..": "I", ".---": "J", "-.-": "K", ".-..": "L", "--": "M", "-.": "N", "---": "O", ".--.": "P", "--.-": "Q", ".-.": "R", "...": "S", "-": "T", "..-": "U", "...-": "V", ".--": "W", "-..-": "X", "-.--": "Y", "--..": "Z",    "-----": "0", ".----": "1", "..---": "2", "...--": "3", "....-": "4", ".....": "5", "-....": "6", "--...": "7", "---..": "8", "----.": "9", ".-.-.-": ".", "--..--": ",", "..--..": "?", ".----.": "'", "-.-.--": "!", "-..-.": "/", "-.--.": "(", "-.--.-": ")", ".-...": "&", "---...": ": ", "-.-.-.": ";", "-...-": "=", ".-.-.": "+", "-....-": "-", "..--.-": "_", ".-..-.": "\"", "...-..-": "$", ".--.-.": "@"]

// Write a function encode() that takes a text string and returns a morse code string.
// For example, encode("Hello, world!") returns ".... . .-.. .-.. --- --..--   .-- --- .-. .-.. -.. -.-.--"

// Write a decode() function that takes an encoded string and makes turns it into a human readable message"
// For example, decode(encode("Hello, World!")) returns "HELLO, WORLD!"

// HINTS:  Some methods you might find useful:  String::componentsSeparatedByString()
//         String::uppercaseString(),  String::join  Array(String).  Ask if you need help 
//         with how to call any of these.
//
//         Write a method to invert the dictionary.  This can be done safely 
//         because MorseCodeToLetterLookup is a one to one mapping.




// Write a function that makes a encodeMorseCodeUtterance encoding of your string
// encodeUtterance("hi there")  "dit dit dit dit . dit dit . . . dah . dit dit dit dit . dit . dit dah dit . dit"
// You might find these constants useful:

let PhoneticShortTap = "dit"
let PhoneticLongTap = "dah"
let PhoneticSpaceBetweenLetters = "."
let PhoneticSpaceBetweenWords = ". . ."


