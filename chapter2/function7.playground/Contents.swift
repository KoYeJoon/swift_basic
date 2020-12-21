func show(value1 : String){
    var value2 : Int?
    value2 = Int(value1)
    print("전달 받은 숫자 -> \(value2!)")
}
show(value1 : "10")
//show(value1 : "안녕!") ->오류남
func show2(value1 : String){
    var value2 : Int?
    value2 = Int(value1)
    
    if value2 == nil {
        print("전달 받은 값은 숫자가 아닙니다.")
    }
    else{
        print("전달 받은  숫자 -> \(value2!)")
    }
}

show2(value1 : "10")
show2(value1 : "안녕!")

func show3(value1 : String) -> Int? {
    var value2 : Int?
    value2 = Int(value1)
    
    if value2 == nil {
        print("전달 받은 숫자가 아닙니다.")
    }
    else{
        print("전달받은 숫자 -> \(value2!)")
    }
    return value2
}

var result = show3(value1 : "10")
print("show3 함수 호출 결과 -> \(result)")

result = show3(value1 : "안녕!")
print("show3 함수 호출 결과 -> \(result)")


//Quiz 10
func divide(a : Int, b: Int) ->Int?{
    if (b==0) {
        return nil
    }
    return a/b
}

let result1 = divide(a : 20,b : 10)
let result2 = divide(a : 20, b :  0)
print("나누기 결과 : \(result1) , \(result2)")
