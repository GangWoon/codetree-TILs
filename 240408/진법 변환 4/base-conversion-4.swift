import Foundation
var input = readLine()!.reversed()
let arr = Array(input.map(String.init))

var result = 0

for (index, item) in arr.enumerated() {
  if Int(item) == 1 {
    result += Int(pow(2.0, Double(index)))
  }
}

print(result)