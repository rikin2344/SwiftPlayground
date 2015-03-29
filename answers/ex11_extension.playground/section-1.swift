// Create an extension for Int isEven() that returns true if
// an integer is even.

extension Int {
    func isEven() -> Bool {
        return self % 2 == 0
    }
}

4.isEven()
3.isEven()
0.isEven()
(-4).isEven()


// Create an extension for Range called "each" that iterates over
// the values in the and calls a user specified function.

extension Range {
    func each (function: (T) -> ()) {
        for i in self {
            function(i)
        }
    }
}

(1..<10).each { x in
    println(x)
}


// Create an extension for Range that implements Reduce

extension Range {
    func reduce<U>(initial: U, combine: (U, T) -> U) -> U {
        var val = initial
        self.each { index in val = combine(val,index) }
        return val
    }
}


// Using reduce, implement a sum function for Range

let xxx = (-2...3000).reduce(0) { $0 + $1 }
xxx

// Create a sum function that takes a Range<Int> and computes the
// value in O(1)

func sum(range:Range<Int>) -> Int {
    let start = range.startIndex
    let end = range.endIndex
    return (start + (end - 1)) * (end - start) / 2
}

sum(-20...2003)
