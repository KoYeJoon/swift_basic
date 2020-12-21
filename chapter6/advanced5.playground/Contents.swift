/*
 스위프트는 파라미터로 함수를 전달할 수 있다.
 함수를 파라미터로 전달할 경우 여러가지 방법으로 전달가능.
 
 ===클로저===
 1. 중첩함수에서의 클로저
 -> 내부 함수이면서 외부 함수의 값을 캡처할 수 있는 클로저
 
 
 2. 클로저 표현식
 -> 함수의 이름이 없고 주변 환경으로부터 값을 캡처할 수 있는 클로저(익명함수)
 */

//i) 정의된 함수를 파라미터로 사용하는 경우
func doCalc(first a :Int, second b : Int, _ calc: (Int,Int)->Int)->Int{
    let output = calc(a,b)
    return output
}

func add(a:Int, b : Int) ->Int{
    return a+b
}

var result = doCalc(first: 10, second: 10, add)
print("add함수를 파라미터로 전달하여 실행한 결과 : \(result)")


//ii) add함수를 미리 정의하지 않고 클로저 표현식으로 만들어 전달하도록 함.
var result2 = doCalc(first: 10, second: 10,
                     {(a:Int, b : Int) -> Int in
                        return a+b
})
print("클로저 표현식을 파라미터로 전달하여 실행한 결과  : \(result2)")

//iii)ii에서 파라미터에서 자료형이 생략된 경우
var result3 = doCalc(first: 10, second: 10,  { (a, b) -> Int in
    return a+b
    })
print("클로저 표현식의 파라미터 자료형을 생략한 경우 : \(result3)")

//iV) in 뒤에 구현 코드가 return 키워드를 사용하는 한줄짜리 코드인 경우
var result4 = doCalc(first: 10, second: 10, {(a,b) -> Int in a+b})
print("클로저 표현식의 구현 코드가 반환용 한 줄 코드인 경우 : \(result4)")

//V) 클로저 표현식에 사용된 파라미터는 $0,$1 등의 기호로 순서대로 참조가능
var result5 = doCalc(first: 10, second: 10, {$0 + $1})
print("클로저 표현식의 파라미터를 선언 없이 직접 참조한 경우 : \(result5)")

//VI) 사용한 소괄호가 끝난 후 클로저 표현식 명시 -> 클로저 트레일링
var result6 = doCalc(first: 10, second: 10) {$0 + $1}
print("클로저 표현식을 파라미터 외부에 넣은 경우 : \(result6)")
