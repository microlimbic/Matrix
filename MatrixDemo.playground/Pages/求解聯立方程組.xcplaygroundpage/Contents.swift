//: Playground - noun: a place where people can play

import UIKit
import Accelerate

import TWMLMatrix

/*
* 求解聯立方程組：
x + 2y = 6
3 + 4y = 10

            | 1   2 | | x |    |  6  |
        =>  |       | |   | =  |     |
            | 3   4 | | y |    | 10  |
寫成 擴充矩陣
            | 1   2 | 6  |
        =>  |       |    |
            | 3   4 | 10 |

            | 1   0 | -2 |
欲求解   =>  |       |    |
            | 0   1 | 4  |

*/


do{
    
    let m = try Matrix(entries: [[1,2],[2,3]])
    var v:Matrix = Matrix(vectorWithEntries: [6, 10])
    
    let result = m.solved(by: v)
    print(result)
    
    //or
    let result2 = try m ~> v
    print(result2)
    
}catch {
    print("error:\(error)")
}
//: [Next](@next)



