// Playground - noun: a place where people can play

import UIKit

// Below are the morse code characters
// Spaces are represented by 3 or more characters.
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

func invertLookup<K: Hashable, V: Hashable>(lookup: [K:V]) -> [V:K] {
    var reverseLookup = [V: K]()
    for pair in lookup {
        reverseLookup[pair.1] = pair.0
    }
    return reverseLookup
}

let LetterToMorseCodeLookup = invertLookup(MorseCodeToLetterLookup)
let SpaceBetweenWords = "   "
let SpaceBetweenLetters = " "

func chop<T>(inout input: [T]) {
    if !input.isEmpty {
        input.removeLast()
    }
}

func chopped<T>(input: [T]) -> [T] {
    var n = input
    chop(&n)
    return n
}

func encode(input: String) -> String {
    var encodedLetters = [String]()
    let encodedSpace = SpaceBetweenLetters
    let uppercase = input.uppercaseString
    let words = uppercase.componentsSeparatedByString(SpaceBetweenLetters)
    for word in words {
        
        let letters = Array(word)
        for letter in letters {
            if let code = LetterToMorseCodeLookup[String(letter)] {
                encodedLetters.append(code)
            }
        }
        encodedLetters.append(encodedSpace)
    }
    
    chop(&encodedLetters)
    
    return " ".join(encodedLetters)
}

func decode(input: String) -> String {

    var decodedWords = [String]()
    let words = input.componentsSeparatedByString(SpaceBetweenWords)
    for word in words {
        var decodedLetters = [String]()
        let codedLetters = word.componentsSeparatedByString(SpaceBetweenLetters)
        for code in codedLetters {
            if let letter = MorseCodeToLetterLookup[code] {
                decodedLetters.append(letter)
            }
        }
        decodedWords.append("".join(decodedLetters))
        
    }
    
    return " ".join(decodedWords)
}

encode("Hello, World!") == ".... . .-.. .-.. --- --..--   .-- --- .-. .-.. -.. -.-.--"
decode(encode("Hello, world!")) == "HELLO, WORLD!"

// write a function that makes a encodeMorseCodeUtterance encoding of your string
// encode("hi there")  "dit dit dit dit ... dit dit ......... dah ... dit dit dit dit ... dit ... dit dah dit ... dit"
// You might find these constants useful:
let PhoneticShortTap = "dit"
let PhoneticLongTap = "dah"
let PhoneticSpaceBetweenLetters = String(Repeat(count: 3, repeatedValue: "."))
let PhoneticSpaceBetweenWords = String(Repeat(count: 9, repeatedValue: "."))


func encodeUtterance(# morseCode: String) -> String {
    var utterance = [String]()
    let words = morseCode.componentsSeparatedByString(SpaceBetweenWords)
    for word in words {
        let letters = word.componentsSeparatedByString(SpaceBetweenLetters)
        for letter in letters {
            for tap in Array(letter) {
                switch tap {
                    case ".":
                        utterance.append(PhoneticShortTap)
                    case "-":
                        utterance.append(PhoneticLongTap)
                    default:
                        break
                }
            }
            utterance.append(PhoneticSpaceBetweenLetters)
        }
        chop(&utterance)
        utterance.append(PhoneticSpaceBetweenWords)
    }
    chop(&utterance)
    
    return " ".join(utterance)
}

encode("hi there")
encodeUtterance(morseCode: encode("hi there"))
