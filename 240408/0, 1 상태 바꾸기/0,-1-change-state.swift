import Foundation

if let input = readLine() {
  let ops = input.components(separatedBy: " ")
  let opCount = Int(ops[1])!
  
  
  let iteminput = readLine()!
  var itemList = iteminput
    .components(separatedBy: " ")
    .compactMap(Int.init)
  
  for _ in 0..<opCount {
    let op = readLine()!
    let operations = op.components(separatedBy: " ").compactMap(Int.init)
    
    parse(operations[0], operations[1], operations[2], list: &itemList)
  }
  
  print(
    itemList
        .enumerated()
        .reduce(into: "") { value, item in
            if item.offset != 0 {
                value += " " + String(item.element)
            } else {
                value += String(item.element)
            }
        }
    )
  
}

func parse(_ operation: Int, _ a: Int, _ b: Int, list: inout [Int]) {
  switch operation {
  case 1:
    list[a - 1] = b
  case 2:
    ((a - 1)...(b - 1))
      .forEach {
        list[$0] = list[$0] == 0 ? 1 : 0
      }
  case 3:
    ((a - 1)...(b - 1))
      .forEach {
        list[$0] = 0
      }
  default:
    ((a - 1)...(b - 1))
      .forEach {
        list[$0] = 1
      }
  }
}