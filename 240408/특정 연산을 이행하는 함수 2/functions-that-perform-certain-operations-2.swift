import Foundation

let input = readLine()!
let arr = input.components(separatedBy: " ").map { Double($0)! }

var item = arr
  .map {
    if $0 == arr.max()! {
      return Int(ceil($0))
    } else if $0 == arr.min()! {
      return Int(floor($0))
    } else {
      return Int(round($0))
    }
  }

print("\(item[0]) \(item[1]) \(item[2])")