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

struct CustomError : Error{
    var code : Int
    var message : String
}

func checkData() throws {
    throw CustomError(code : 400, message : "데이터에서 오류 발생함.")
}

do {
    try checkData()
} catch let error where error is CustomError{
    let errorInfo = error as! CustomError
    print("오류 : \(errorInfo.code), \(errorInfo.message)")
} catch let error {
    print("기타 오류")
}
