/*
 ==변수에 할당된 클로저의 모양
 */

//1. 상수에 할당된 것 =  클로저 표현식으로 만들어진 함수
let show = {() -> () in
    print("show함수 호출됨.")
}
show()

//2.반환 자료형으로 쓰인 소괄호를 void로 바꿈
let show2 =  {() -> Void in
    print("show2함수 호출됨.")
}
show2()

//3. 같은 코드를 상수에 할당하지 않고 바로 실행되도록
({()-> Void in
    print("즉시 실행함수 호출됨.")
})

//즉시실행 함수에서 반환하는 값을 상수나 변수에 할당
let show3 : Void = ({ ()-> Void in
    print("즉시 실행함수 호출됨.")
    }())

print("show3의 값 : \(show3)")

//함수  안에서 새로운 함수를 만들 때 클로저 표현식을 만든 후 반환
func getClac(index : Int) -> ((Int,Int) -> Int)? {
    if index == 1 {
        return { (a:Int, b:Int) -> Int in
            return a+b
        }
    } else{
        return nil
    }
}

let add = getClac(index : 1)!
var result = add(20,20)
print("반환 받은 더하기 함수 실행 결과 : \(result)")

/*
 클로저는 클래스의 속성으로도 사용 될 수 있다.
 class MyClass{
    var property : (()->Int)!
 }
 */

//Quiz29 (pg339)
func doCalc (a:Int, b:Int,calc :(Int,Int)->Int)->(()->Void) {
    let result = calc(a,b)
    
    func showResult(){
        print("결과 : \(result)")
    }
    return showResult
}

let mulCal = doCalc(a: 10, b: 10, calc: {
    (a:Int, b:Int) -> Int in
    return a*b
})

mulCal()
