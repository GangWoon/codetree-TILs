import Foundation

let count = Int(readLine()!)!

var item: [Int: Int] = [:]

(0..<count)
  .forEach { _ in
    let input = readLine()!
      .components(separatedBy: " ")
      .compactMap(Int.init)
    (input[0]...input[1])
      .forEach { index in
        item[index] = (item[index] ?? 0) + input[2]
      }
  }

let a = item
  .values
  .sorted(by: >)
  .first
  
print(a!)