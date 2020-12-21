
/*
 Error는 열거형으로 만들어졌고, 오류 유형을 정의할 때 사용된다.
 enum 오류 유형 이름 : Error{
    case 유형1
    case 유형2
 }
 예외 상황이 발생하여 오류를 발생시키고 싶다면 throw이용
 throw 오류 유형
 --throw : 오류를 던져준다는 의미
 --throws : 오류를 던져줄 수 있는 함수
 */
protocol Calculator {
    //throws는 오류가 나올 수 있는 함수임을 알려줌
    func add(first a : Int, second b : Int)  throws -> Int
    func subtract(first a : Int, second b : Int) throws -> Int
    func multiply(first a : Int, second b : Int) throws -> Int
    func divide(first a : Int, second b : Int) throws -> Int
}

enum CalculatorError : Error{
    case Unimplemented
    case Incorrect(reason : String)
}

class MyCalculator : Calculator {
    func add(first a: Int, second b: Int)  throws-> Int {
        return a+b
    }
    
    func subtract(first a: Int, second b: Int) throws -> Int {
        throw CalculatorError.Unimplemented
    }
    
    func multiply(first a: Int, second b: Int) throws -> Int {
        throw CalculatorError.Unimplemented
    }
    
    func divide(first a: Int, second b: Int) throws -> Int {
        if b == 0 {
            throw CalculatorError.Incorrect(reason: "두 번째 파라미터 값이 0입니다.")
        }
        else{
            return a/b
        }
    }
    
    
}


/*
 함수가 오류 객체를 던져줄 수 있는 경우
 do{
    try 예외 발생 함수 호출
 } catch(오류 유형1){
    코드
 } catch(오류 유형2){
    코드
 }catch(...){
 }
 catch : 예외가 발생하였을 때 처리하는 코드
 */

var calc1 = MyCalculator()

do{
    let result1 = try calc1.add(first: 10, second: 10)
    print("더하기 결과 : \(result1)")
    let result2 = try calc1.subtract(first:20, second : 10)
    print("빼기 결과 : \(result2)")
} catch CalculatorError.Unimplemented{
    print("구현되지 않은 기능입니다.")
} catch CalculatorError.Incorrect(let reason){
    print("Incorrect오류 : \(reason)")
}

do{
    let result3 = try calc1.divide(first: 40, second: 0)
    print("나누기 결과 : \(result3)")
} catch CalculatorError.Unimplemented {
    print("구현되지 않은 기능입니다.")
} catch CalculatorError.Incorrect(let reason){
    print("Incorrect오류 : \(reason)")
}
