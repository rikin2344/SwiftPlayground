//: # Strings

import Foundation

let str = "Lorem Ipsum dolor sit amet, consectetuer adipiscingelit. Duis tellus. Donec ante dolor, iaculis nec, gravidaac, cursus in, eros. Mauris vestibulum, felis et egestasullamcorper, purus nibh vehicula sem, eu egestas antenisl non justo. Fusce tincidunt, lorem nev dapibusconsectetuer, leo orci mollis ipsum, eget suscipit erospurus in ante.\nAt ipsum vitae est lacinia tincidunt. Maecenas elit orci,gravida ut, molestie non, venenatis vel, lorem. Sedlacinia. Suspendisse potenti. Sed ultricies cursuslectus. In id magna sit amet nibh suspicit euismod.Integer enim. Donec sapien ante, accumsan ut,sodales commodo, auctor quis, lacus. Maecenas a elitlacinia urna posuere sodales. Curabitur pede pede,molestie id, blandit vitae, varius ac, purus. Mauris atipsum vitae est lacinia tincidunt. Maecenas elit orci, gravida ut, molestie non, venenatis vel,lorem. Sed lacinia. Suspendisse potenti. Sed ultrucies cursus lectus. In id magna sit amet nibhsuspicit euismod. Integer enim. Donec sapien ante, accumsan ut, sodales commodo, auctorquis, lacus. Maecenas a elit lacinia urna posuere sodales. Curabitur pede pede, molestie id,blandit vitae, varius ac, purus.\nMorbi dictum. Vestibulum adipiscing pulvinar quam. In aliquam rhoncus sem. In mi erat, sodaleseget, pretium interdum, malesuada ac, augue. Aliquam sollicitudin, massa ut vestibulum posuere, massa arcu elementumpurus, eget vehicula lorem metus vel libero. Sed in dui id lectus commodo elementum. Etiam rhoncus tortor. Proin alorem. Ut nec velit. Quisque varius. Proin nonummy justo dictum sapien tincidunt iaculis. Duis lobortis pellentesque risus.Aenean ut tortor imperdiet dolor scelerisque bibendum. Fusce metus nibh, adipiscing id, ullamcorper at, consequat a,nulla."

//: ## Question 1
//: Write a function that counts the number of particular letters in a string. Pass a flag to say if the search should be case sensitive or insensitive.
//: Hint: Use lowercaseString for case insensitivity.
//: Example:
//:           letterCount("A",str,true) should return 115.
//:           letterCount("A",str,false) should return 3.

func letterCount(pattern:Character, str: String, ignoreCase: Bool) -> Int
{
    let searchString = ignoreCase ? str.lowercaseString : str
    let targetString = ignoreCase ? String(pattern).lowercaseString : String(pattern)
    let target = targetString[targetString.startIndex]
    
    var count = 0
    for letter in searchString {
        if targetString == String(letter) {
            ++count
        }
    }
    return count
}

letterCount("A", str, true)
letterCount("A", str, false)


// Question 2
// Write a function called makeString(Int) -> String that converts an 
// integer into a string.  Do it the easy way and don't use loops!

func makeString(input: Int) -> String
{
    return "\(input)"
}

func makeString2(input: Int) -> String
{
    return toString(input)
}

