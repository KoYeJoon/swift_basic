/*
 함수를 반환하는 경우
func add(fist a: Int, second b : Int)-> Int{
    return a+b
}

func subtract(first a : Int, second b : Int)->Int{
    return a-b
}

 반환하는 함수가 nil이 될수 있으므로 "(Int, Int) -> Int? "해준 것이다.
func selectCalc(index : Int) -> ((Int,Int) -> Int)? {
    if index == 1 {
        print("add계산기를 선택했습니다.")
        return add
    }
    else if index == 2 {
        print("subtract 계산기를 선택했습니다.")
        return subtract
    }
    else{
        print("알 수 없는 계산기입니다.")
        return nil
    }
}

var addCalc = selectCalc(index: 1)!
var result = addCalc(20,20)
print("add함수 실행 결과 : \(result)")

 //첫 번째 호출한 함수에서 함수를 반환할 때 그 반환된 함수를 바로 호출
var result2 = selectCalc(index: 2)!(100,10)
print("subtract함수  실행 결과 : \(result2)")
*/
func sum(start : Int, end : Int, callback :(Int)->Void){
    var total = 0
    for i in start...end{
        total += i
    }
    
    callback(total)
}

var start=1
var end=10

func callback(result  : Int) {
    print("결과 : \(result)")
}

sum(start: start, end: end, callback: callback)


