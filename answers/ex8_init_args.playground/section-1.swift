



struct Complex {
    var real: Double
    var imag: Double
    init(_ real: Double, _ imag: Double = 0) {
        self.real = real
        self.imag = imag
    }
}

// Create an initializer Complex(10) that sets real to 10 and imag to 0 and Complex(10,3) that sets real to 10 and imag to 3 respectively.


Complex(10)
Complex(10,3)
