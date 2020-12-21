var count = 0

func add ( a: Int, b : Int) -> Int {
    count += 1
    let output = a + b
    return output
}

func subtract ( a: Int, b:Int)-> Int {
    count += 1
    return a - b
}
var result = add(a: 20, b: 10)
print("add함수 호출 후 -> \(result), \(count)")

result = subtract(a:20 , b:10)
print("substract 함수 호출 후 -> \(result), \(count)")

class Calculator {
    var count = 0
    
    func add( a : Int, b : Int) -> Int {
        count += 1
        
        let output = a + b
        return output
    }
    
    func subtract(a : Int, b : Int) -> Int{
        count += 1
        
        return a - b
    }
}

var calculator1 = Calculator();
result = calculator1.add(a: 20, b: 10)
print("calculator1의 add 함수 호출 후 -> \(result), \(calculator1.count)")

//Quiz 17
class Dog {
    var name : String = "이레"
}
var dog1 = Dog()
print("강아지 이름 : \(dog1.name)")
