struct LimitedError : Error {
    var code : Int
    var message : String
}

class Dog {
    var name : String
    var  age : Int
    init(name : String, age : Int){
        self.name = name
        self.age = age
    }
    func run(distance : Int) throws {
        if distance > 10 {
            throw LimitedError(code : 400, message : "너무 먼 거리")
        }
        print("강아지 \(name)가(이) \(distance)km 뛰어갑니다.")
    }
}


var dog1 : Dog = Dog(name : "이레", age : 5)
do{
    try dog1.run(distance: 9)
    try dog1.run(distance: 12)
} catch let error{
    let errorInfo = error as! LimitedError
    print("예외 발생함 : \(errorInfo.code), \(errorInfo.message)")
}

