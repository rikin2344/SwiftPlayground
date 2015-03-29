

// Free Function Argument Practice

func addAll1(x: Int, y: Int, z: Int) -> Int  {
  return x + y + z
}

// Change the above signature of add all so that it is called with
// Don't change the definition of the fuction.
addAll1(1,2, boom: 3)

func addAll2(x: Int, longName: Int, z: Int) -> Int  {
  return x + longName + z
}

// Change the above signature of addAll2 so that it is called with
// Don't repeat yourself
addAll2(1, longName: 2, 3)


func addAll3(x: Int, y: Int, z: Int = 10) -> Int  {
  return x + y + z
}

// Change the above signature of addAll3 so that it is called with

addAll3(1,2,3)
addAll3(1,2)

