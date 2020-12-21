/*
 스위프트에서 프로토콜(인터페이스)에 추가할 수 있는 것들
 1. 메소드 선언
 2. 타입 메소드 선언
 3. 초기화 메소드 선언
 4. 속성 선언(속성의 get,set행위를 선언)
 */
class MyCalculator : Calculator{
    //var duration: Float -> 클래스 안에서 저장속성으로 추가해도 됨
    var duration : Float {
        get {
            return 0
        }
        set{}
    }
    
    var owner = ""
    
    //type 메소드 선언
    static func getType() -> String{
        return "계산기"
    }
    
    //프로토콜에서 선언한 init함수를 클래스에서 구현하는 경우 required init
    required init(owner : String) {
        self.owner = owner
    }
    func add(first a : Int, second b : Int) -> Int {
        return a+b
    }
}

protocol Calculator {
    static func getType() -> String
    init(owner : String)
    func add (first a : Int, second b : Int) -> Int
    //프로토콜에 속성을 선언하는 형식
    var duration : Float {get set}
}

//아래와 같이 선언한 경우 Calculator에서 선언한 메소드만 사용이 가능하다.
var calculator : Calculator = MyCalculator(owner : "소녀시대")
var result = calculator.add(first: 10, second: 10)
print("add결과 -> \(result)")
