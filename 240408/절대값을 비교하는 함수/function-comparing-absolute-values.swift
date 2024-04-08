import Foundation

if
  let countString = readLine(),
  var count = Int(countString)
{

  while count != 0 {
    if let input = readLine() {
      let values = input.components(separatedBy: " ")
        let lhs = abs(Int(values[0])!)
        let rhs = abs(Int(values[1])!)
        print(max(lhs, rhs))
    }
    count -= 1
  }

}