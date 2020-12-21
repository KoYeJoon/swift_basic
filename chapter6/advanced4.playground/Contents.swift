/*
 ---중첩함수---
 함수 내에 내부함수가 들어갈 수 있다.
1.  -> 함수 외부에서 함수를 호출하여 내부함수를 이용만 하는 경우(내부함수 반환x),
 getPower이라는 외부함수는 사용된 후 스택에서 꺼내어지고 또 호출되면 사용되고 스택에서 사라지는 형태
 */

func getPower(food : Int) -> Int{
    var stored = 100
    func calcPower(foodAmount: Int)-> Int{
        stored += (foodAmount * 10)
        return stored
    }
    
    let power = calcPower(foodAmount: food)
    
    return power
}


var result = getPower(food: 10)
print("getPower 함수 실행 결과 : \(result)")

result = getPower(food: 20)
print("getPower 함수 실행 결과 : \(result)")

/*
 2. -> 함수 외부에서 함수를 호출하여 내부함수를 반환하는 경우,
 내부함수를 반환하여 내부함수를 이용하는 경우,
 이 함수가 만들어진 시점의 변수 객체들을 참조한다.
 따라서 이 내부함수를 감싸는 외부함수 안의 다른 변수들이, 내부함수를 이용한 시점의 값들로
 이용된다.
 
 1의 상황처럼 스택에서 빠져나가서 다시 초기화되고 이러지 않음.
 ==> 클로저
 실행 컨테스트가 이미 사라졌는데도 자유 변수는 남아있고 내부 함수만 이 자유변수에 접근가능
 */
func getPowerfunc() -> ((Int)->Int) {
    var stored = 100
    func calcPower(foodAmount : Int)->Int{
        stored += (foodAmount*10)
        return stored
    }
    return calcPower
}

var powerFunc = getPowerfunc()
var result2  = powerFunc(10)
print("반환 받은 powerfunc 함수 실행 결과 : \(result2)")

result2 = powerFunc(20)
print("반환받은 powerFunc 함수 실행 결과 : \(result2)")
