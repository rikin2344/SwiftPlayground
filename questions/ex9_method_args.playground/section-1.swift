
struct Place {
  var address: String? = nil
  mutating func setAddress(number: Int, street: String) {
    address = "\(number) \(street)"
  }
}

// modify the signature of setAddress so it can be called like this:
// place.setAddress(number: 10, street: "Softwind Drive")

var place = Place()
place.setAddress(number: 1010, street: "Softwind Drive")

