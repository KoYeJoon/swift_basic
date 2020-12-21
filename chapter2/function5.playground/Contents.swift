func sum(values : Int  ...)->Int{
    var total = 0
    
    for value in values {
        total += value
    }
    
    return total
}
var result = sum(values : 10,20,30,40,50)
print("sum 함수 호출결과 -> \(result)")
