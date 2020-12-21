/*
var ages = [20,23,21,17,25]

for item in ages{
    guard item > 19 else{
        break
    }
    print("성인 나이 : \(item)")
}

func checkBlood(type : String)->String?{
    if type == "A" || type  == "O" {
        return "OK"
    }
    return nil
}

func checkBloodTest(myblood : String) {
    guard let result = checkBlood(type: myblood) else{
        print("혈액 검사 결과는 nil입니다.")
        return
    }
    print("result 결과 : \(result)")
}


checkBloodTest(myblood: "O")
checkBloodTest(myblood: "B")

class Dog{
    var name : String?
    var age : Int?
    
    init (name : String, age : Int){
        self.name = name
        self.age = age
    }
}

func createDog(name : String, age : Int )-> Dog?{
    return Dog(name : name, age : age)
}

if let dog1 = createDog(name : "이레 " ,age :1){
    print("만들어진 강아지 객체 : \(dog1.name!)")
}
*/

class Dog{
    var name : String?
    var age : Int?
    
    init(name : String, age : Int){
        self.name=name
        self.age=age
    }
}

func createDog(name : String, age : Int)->Dog?{
    return Dog(name : name, age : age)
}

var animals : [String:Dog]=[:]

if let dog1 = createDog(name: "이레", age: 5){
    animals[dog1.name!]=dog1
    print("만들어진 강아지 이름 : \(dog1.name!)")
    print("만들어진 강아지 수 : \(animals.count)")
}
if let dog2=createDog(name: "뽀삐", age: 3){
    animals[dog2.name!]=dog2
    print("만들어진 강아지 이름 : \(dog2.name!)")
    print("만들어진 강아지 수 : \(animals.count)")
}
