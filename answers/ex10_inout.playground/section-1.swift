// Inout

import UIKit

struct SetGetCounter {
  
  var readCount = 0
  var writeCount = 0
  private var internalValue = 0
  
  var value: Int {
    mutating get {
      ++readCount
      return internalValue
    }
    set (newVal) {
      ++writeCount
      internalValue = newVal
    }
  }
}

// The following code reads and writes inputOutput how many times?

func method1(inout inputOutput:Int) {
  for _ in 0 ..< 10 {
    inputOutput = inputOutput + 1
  }
}

func method2(inout inputOutput:Int) {}


var setGetCounter = SetGetCounter()
method1(&setGetCounter.value)
setGetCounter

var setGetCounter2 = SetGetCounter()
method2(&setGetCounter2.value)
setGetCounter2