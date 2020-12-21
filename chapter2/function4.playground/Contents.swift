func add(a : Int, b: Int)->Int{
    return a+b
}

var result  =  add(a:10, b:10)
print("add  함수 호출 결과 -> \(result)")

func add2(firstNum a:Int,  secondNum b:Int)->Int{
    return  a+b
}
result = add2(firstNum: 20, secondNum: 20)
print("add2 함수 호출 결과 ->  \(result)")

