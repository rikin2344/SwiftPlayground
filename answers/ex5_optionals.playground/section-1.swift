// Optional types

import UIKit

////////////////////////////////////////////////////////////////////////////////
// MARK: Question 1
// What is the equivalent long way of writing and what is its initial value.
// var radius:Double?

var radius: Optional<Double>

////////////////////////////////////////////////////////////////////////////////
// MARK: Question 2
// Unwrap appCount
let appCount:Int? = 20

appCount!


////////////////////////////////////////////////////////////////////////////////
// MARK: Question 3
// Unwrap v
let v:Int??? = 10
v!!!


////////////////////////////////////////////////////////////////////////////////
// MARK: Question 4
// Write a function that takes a string, an array of strings, and returns the index that the string is found.
// Hint.  The function signature looks like this: func findIndex(search:String, values:[String]) -> Int?

let search = "bar"
let values = ["foo", "bar", "baz"]

func findIndex(search: String, values: [String]) -> Int? {
    for v in enumerate(values) {
        if search == v.1 {
            return v.0
        }
    }
    return nil
}


////////////////////////////////////////////////////////////////////////////////
// MARK: Question 5
// Write a function that takes an array of keys and looks up their values in a dictionary.
// findValues(keys, dictionary)

let keys = ["A", "B", "C", "Z"]
let dictionary = ["A": "Apple", "B": "Banana", "C": "Cherry"]

func findValues(keys: [String], dictionary:[String: String]) -> [String?]
{
    return keys.map { dictionary[$0] }
}


////////////////////////////////////////////////////////////////////////////////
// MARK: Question 6
// Make the function return "Not Found" if it doesn't find the value.
// findValuesWithDefault(keys, dictionary)

func findValuesWithDefault(keys: [String], dictionary:[String: String]) -> [String]
{
    return keys.map { dictionary[$0] ?? "Not Found" }
}



