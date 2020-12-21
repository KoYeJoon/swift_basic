/*
 정의된 함수를 변수에 할당하기
 */
func add(first a : Int, second b : Int) -> Int {
    return a+b
}

let result = add(first: 10, second: 10)
print("add함수를 실행한 결과 : \(result)")

var add2 = add;
let result2 = add2(10,10)
print("add2 변수에 할당된 함수를 실행한 결과 : \(result2)")



func show(data:Int) -> Int{
    return data
}

//show2에 어떤 식으로 정의된 함수가 들어갈 지 알려줌
//:는 어떤 자료형이 들어갈지, =는 값을 할당해주는 역할을 하는 듯
let show2 : (Int) -> Int = show
let add3 : (Int, Int)->Int = add

func appendFormFeed(a:Int, b:String) -> (Int, String){
    return (a+1,b+"\n")
}

let append2 : (Int, String) -> (Int,String) = appendFormFeed
print("append2 호출 결과 : \(append2(10,"김준수"))")
