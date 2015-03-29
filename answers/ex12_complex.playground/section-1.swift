
import Foundation

// Create an abstraction for a complex number.
// A complex number has a real and imaginary value that
// can be represented as floating point values.
//
// (a + bi) where i is sqrt(-1)
//
// Define a initializer that takes both real and imaginary values
// Define a initializer that takes only a real value
// Define a magnitude operation sqrt( a^2 + b^2 )
// Define an angle operation where atan2(b,a)
// Define addition (a + bi) + (c + di) =  (a+c  (b+d)i)
// Make it printable


struct Complex : Printable {
    var real, im: Double
    init(_ real:Double, im:Double = 0) {
        self.real = real
        self.im = im
    }
    var magnitude:Double {
        return sqrt(real*real + im*im)
    }
    var angle:Double {
        return atan2(im,real)
    }
    var description:String {
        return String(format: "(%f %+fi)", real, im)
    }
}

func +(lhs:Complex, rhs:Complex) -> Complex {
    return Complex(lhs.real+rhs.real, im:lhs.im+rhs.im)
}

var xx = Complex(10,im:100)
var yy = Complex(10,im:100)
println("The value is: \(xx)")






