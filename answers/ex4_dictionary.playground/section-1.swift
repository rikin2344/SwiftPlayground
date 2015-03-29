
import Foundation

let errorCodes = [
  (498, "Token expired/invalid (Esri)"),
  (499, "Client Closed Request (Nginx)"),
  (440, "Login Timeout (Microsoft)"),
  (499, "Token required (Esri)")]

// Create a function creates a dictionary from an array of 2 element tuples
// where the first argument is the key and the second argument is the value.

func dictionaryFromTupleArray(tuples: [(Int, String)]) -> [Int: String] {
    var dictionary = [Int: String]()
    for element in tuples {
        dictionary[element.0] = element.1
    }
    return dictionary
}

// A generic version for fun.

func dictionaryFromTupleArray<K: Hashable,V>(array:[(K,V)]) -> [K: V] {
    var dictionary = [K: V]()
    for element in array {
        dictionary[element.0] = element.1
    }
    return dictionary
}


let capitalLookup: [String: String] =
  ["Alabama": "Montgomery",
    "Alaska": "Juneau",
    "Arizona": "Phoenix",
    "Arkansas": "Little Rock",
    "California": "Sacramento",
    "Colorado": "Denver",
    "Connecticut": "Hartford",
    "Delaware": "Dover",
    "Florida": "Tallahassee",
    "Georgia": "Atlanta",
    "Hawaii": "Honolulu",
    "Idaho": "Boise",
    "Illinois": "Springfield",
    "Indiana": "Indianapolis",
    "Iowa": "Des Moines",
    "Kansas": "Topeka",
    "Kentucky": "Frankfort",
    "Louisiana": "Baton Rouge",
    "Maine": "Augusta",
    "Maryland": "Annapolis",
    "Massachusetts": "Boston",
    "Michigan": "Lansing",
    "Minnesota": "St. Paul",
    "Mississippi": "Jackson",
    "Missouri": "Jefferson City",
    "Montana": "Helena",
    "Nebraska": "Lincoln",
    "Nevada": "Carson City",
    "New Hampshire": "Concord",
    "New Jersey": "Trenton",
    "New Mexico": "Santa Fe",
    "New York": "Albany",
    "North Carolina": "Raleigh",
    "North Dakota": "Bismarck",
    "Ohio": "Columbus",
    "Oklahoma": "Oklahoma City",
    "Oregon": "Salem",
    "Pennsylvania": "Harrisburg",
    "Rhode Island": "Providence",
    "South Carolina": "Columbia",
    "South Dakota": "Pierre",
    "Tennessee": "Nashville",
    "Texas": "Austin",
    "Utah": "Salt Lake City",
    "Vermont": "Montpelier",
    "Virginia": "Richmond",
    "Washington": "Olympia",
    "West Virginia": "Charleston",
    "Wisconsin": "Madison",
    "Wyoming": "Cheyenne"]

// Create an array of states

var states = Array(capitalLookup.keys)

// Write a function shuffled() that takes an array of strings and returns an array of strings 
// in random order.  To do this, iterate through indexes 0 through count-1.  Using the
// swap(&this,&that) function, swap the index with random index from current index and 
// the remaining values.  Hint: arc4random_uniform(UInt32(10)) randomizes between 0 and 9

func shuffled(input: [String]) -> [String] {
    var working = input
    for index in 0 ..< working.count-1 {
        let randomIndex = Int(arc4random_uniform(UInt32(working.count-index)))+index
        swap(&working[index], &working[randomIndex])
    }
    return working
}

// Create an array of random States
let randomStates = shuffled(states)

// Pick the first state as the question

let question = randomStates.first!

// Lookup the answer

let answer = capitalLookup[question]!

// Create an array 4 random wrong answers called choices

var choices = [String]()
for i in 1...4 {
    choices.append(capitalLookup[randomStates[i]]!)
}

// Add the correct answer to the wrong answers
choices.append(answer)

// Shuffle the choices
let shuffedChoices = shuffled(choices)


// Encapsulate that work into a function that generates a named tuple of:

question
choices
answer








