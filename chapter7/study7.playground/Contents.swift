class Dog{
    var name : String
    var age : Int
    
    init(name : String, age : Int) {
        self.name = name
        self.age = age
    }
    
    func walk(food : Int) -> Int{
        return food*5
    }
}

protocol Runnable {
    func run(food : Int)
}

class Puppy : Dog,Runnable{
    func run(food: Int) {
        print("강아지 \(name)이 \(food)속력으로  뛰어갑니다.")
    }
    
    override func walk(food: Int) -> Int{
        return food*10
    }
    
}

var dog1 : Dog = Dog(name: "이레", age: 5)
var distance = dog1.walk(food: 20)
print("개가 걸어간 거리 : \(distance)")

var dog2 : Puppy = Puppy (name: "캔디", age : 1)
dog2.run(food: 10)

