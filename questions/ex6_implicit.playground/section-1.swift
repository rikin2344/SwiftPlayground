// Implicit types

// Write this in "long form"
// let implicit: Int! = 3

// Observe the following work

if let val = implicit {
  println(val)
  assert(val == implicit)
  assert(val == implicit!)
}

if implicit != nil {
    println(implicit)
    assert(implicit == 3)
}

