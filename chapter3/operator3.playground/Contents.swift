/*
func sum(start : Int, end : Int) -> Int{
    var total = 0
    for i in start ..< end {
        total += i
    }
    return total
}

var result = sum(start : 1 , end : 11)
print ("sum(start : 1, end : 11)의 결과 -> \(result)")
*/
let a : Int = 200
let b : Int = 500

var total = 0
for i in a...b {
    total += i
}
print("200부터 500까지 더한 값 : \(total)")
