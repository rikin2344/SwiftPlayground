

// Question 1
// Write a function that computes the area of a circle
// from the radius.  Recall that the formula for the 
// area of a circle is pi * radius * radius

let radius = 10
let pi = 3.14159265358979323846



// Question 2
// Compute the sum of the following types as an Int.  Do not modify 
// the types of value1, value2, or value3

let value1 = 10
let value2 = UInt16(11)
let value3 = UInt8(200)

// Question 3
// Write a trace function trace() that takes any type, prints it and
// then returns the value of the type.
// trace(trace(value1) + trace(value1)) This should produce 10\n10\n20\n


// Question 4
// What is the mangled names of the following types.  How do they differ?
// Hint: Use swiftc -emit-library and nm
var foo = UInt64(100)
let bar = UInt64(100)


// Question 5
// An evil developer added the following definition to your code.
//

// How can you avoid calling above version of count() and instead call the standard library version?

count("How do I call the standard library version???")



