//6단원 정리문제(pg340)
class Dog{
    var name : String?
    var age : Int?
    
    init(name : String, age : Int){
        self.name=name
        self.age = age
    }
    
    func walk(food : Int, distance : (Int)->Void) {
        distance(food*10)
    }
}

var dog1  = Dog(name : "이레", age : 5)
let food = 10
dog1.walk(food: food, distance: { (result:Int) -> Void in
    print("걸어간 거리 : \(result)")
    })
