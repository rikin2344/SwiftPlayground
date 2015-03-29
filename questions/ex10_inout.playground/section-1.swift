// Inout

import UIKit

// The following code reads and writes inputOutput how many times?

func method1(inout inputOutput:Int) {
  for _ in 0 ..< 10 {
    inputOutput = inputOutput + 1
  }
}

func method2(inout inputOutput:Int) {}

// Hint build an observable integer that counts when it is read
// to and written from.  (Unfortunately there is no willGet didGet
// so you will need to implement it as a computed property.