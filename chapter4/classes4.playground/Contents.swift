/*class Person {
    var name : String?
    var height : Float?
    var weight : Float?
    init(name : String, height : Float, weight : Float){
        self.name = name
        self.height = height
        self.weight = weight
    }
    var bmi : Float {
        get {
            return weight! / (height! *  2)
        }
        set(bmi){
            if bmi < 20 {
                height = 1.7
                weight = 50
            }else if bmi >=  20 {
                height =  1.65
                weight  = 64
            }
        }
    }
}

var person01  = Person(name : "철수", height : 1.7, weight  : 49.5)
print("BMI 값 -> \(person01.bmi)")

person01.bmi = 18
print("BMI 값->  \(person01.bmi)")

person01.bmi = 22
print("BMI 값 -> \(person01.bmi)")

*/
/*
class Person {
    var name : String?
    var height : Float?
    var weight : Float?
    
    init(name : String, height : Float, weight : Float){
        self.name =  name
        self.height = height
        self.weight = weight
    }
    
    var bmi : Float = 0.0{
        willSet(bmi){
            print("bmi willSet 호출됨 -> \(bmi)")
        }
        didSet {
            print("bmi didSet 호출됨 -> \(bmi), \(oldValue)")
        }
}
}
var person01  = Person(name : "철수", height : 1.7, weight  : 49.5)
print("BMI 값 -> \(person01.bmi)")

person01.bmi = 18
print("BMI 값->  \(person01.bmi)")

person01.bmi = 22
print("BMI 값 -> \(person01.bmi)")
*/
class Person {
    var name : String?
    var height : Float?
    var weight : Float?
    init(name : String, height : Float, weight : Float){
        self.name = name
        self.height = height
        self.weight = weight
    }
    var bmi : Float{
        get{
            return weight! / height! / height!
        }
        set(bmi){
            weight = self.weight!
            height = self.height!
        }
    }
}

var person01  = Person(name : "철수", height : 1.7, weight  : 49.5)
print("BMI 값 -> \(person01.bmi)")

person01.bmi = 18
print("BMI 값->  \(person01.bmi)")

person01.bmi = 22
print("BMI 값 -> \(person01.bmi)")
