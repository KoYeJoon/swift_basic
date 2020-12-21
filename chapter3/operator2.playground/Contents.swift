var count = 10
var result = (count > 10) ? true : false
print("result 변수의 값 -> \(result)")

var count2 = 20
var result2 : String? = (count2 > 20) ? "success" : nil

if result2 == nil {
    print("result2 변수의 값이 nil 입니다.")
}
else{
    print("result2 변수의 값 -> \(result2!)")
}

if(count is Int){
    print("count 변수의 자료형은 Int 입니다")
}
else{
    print("count 변수의 자료형은 Int 가 아닙니다.")
}

//Quiz14
let a = "고이레"
let b = 3

if !(a is String) || !(b is String){
    print("문자열 자료형이 아닌 것이 있습니다")
}
else{
    print("문자열 자료형입니다.")
}
