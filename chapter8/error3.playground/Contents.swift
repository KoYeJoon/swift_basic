/*
/*
 try? : 오류가 발생했을 때 nil이 반환된다.
 try! : 그 뒤에 함수가 실행될 때 예외가 발생해도 그대로 진행됨
 ->나중에 런타임 오류가 발생하면서 프로그램이 중지될 수 있다.
 
 struct 오류 유형 이름 : Error{
    code
 }
 class 오류 유형 이름 : Error{
    code
 }
 */

/*
 오류가 발생하더라도 반드시 실행되어야 하는 부분이 있다면 defer 이용하여 실행이 지연되도록 한다.
 defer을 이용하면 이 안에 있는 코드는 함수가 종료되기 바로 전에 실행된다.
 */
struct CustomError : Error{
    var code : Int
    var message : String
}

func checkData(data : Int) throws {
    defer{
        print("defer 안에서 실행된 코드")
    }
    if data<0 {
        print("예외 던져주기 전에 실행된 코드.")
        throw CustomError(code: 400, message: "데이터에서 오류 발생함.")
    }
}

do {
    try checkData(data: -10)
} catch let error where error is CustomError{
    let errorInfo = error as! CustomError
    print("오류 : \(errorInfo.code), \(errorInfo.message)")
} catch let error {
    print("기타 오류")
}
*/
//Quiz 35
struct CustomError : Error {
    var code : Int
    var message : String
}
class Person {
    var name  : String
    var age : Int
    
    init(name : String, age : Int){
        self.name = name
        self.age = age
    }
    
    func walk(food : Int) throws{
        if food > 10 {
            throw CustomError(code : 400, message : "너무 많은 food 값")
        }
        print("사람 \(name)이(가) \(food*10)km 걸어갑니다.")
    }
}

var person1 : Person? = Person(name : "고예윤", age : 20)
do {
    try person1!.walk(food: 5)
    try person1!.walk(food: 20)
}catch let error{
    let errorInfo = error as! CustomError
    print("예외발생함 : \(errorInfo.code), \(errorInfo.message)")
}
