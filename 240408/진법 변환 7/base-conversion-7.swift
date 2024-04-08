import Foundation

var result = ""

let input = readLine()!
let item = input.components(separatedBy: ".")
var lhs = Int(item[0])!

while lhs / 2 != 0 {
  let temp = lhs % 2
  lhs = lhs / 2
  result.append(String(temp))
}
if lhs == 1 {
  result.append("1")
}
result = String(result.reversed())
result.append(".")

if item.count > 1 {
  let rhs = item[1]
    .map(String.init)
    .reduce(into: "0.", +=)
  var rhsItem = Double(rhs)!
  var count = 0


  while count < 4 {
    var temp = rhsItem * 2
    if temp >= 1 {
      result.append("1")
      temp -= 1
    } else {
      result.append("0")
    }
    rhsItem = temp
    count += 1
  }
}

print(result)