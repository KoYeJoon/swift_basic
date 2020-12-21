/*
 프로토콜 : 성벽과 같음.
 성을 만들 때는 동서남북으로 네 개의 성문을 만들 수 있어야 되고, 편지를 배달할 때에는 성무능ㄹ 지키는 사람에게 전달해야한다.
 이러한 틀을 정해놓는 것이 프로토콜이다.
 프로토콜 안에는 사용할 수 있는 메소드가 어떤 것들인지가 들어있다.
 */

class MyCalculator : Calculator{
    func add(first a : Int, second b : Int) -> Int{
        return a+b
    }
}

//프로토콜은 선언만 한다. 그 안에 들어가는 코드는 만들지 않는다.
protocol Calculator {
    func add(first a : Int, second b : Int) -> Int
}

var calculator : Calculator = MyCalculator()
var result = calculator.add(first : 10, second:10)
print("add결과 -> \(result)")

//class 이름 : 프로토콜 은 뒤에 나오는 프로토콜을 구현한다는 뜻이다.
//클래스 이름 : 부모클래스 이름 , 프로토콜 이름1, 프로토콜 이름 2, 프로토콜 이름 3
class FriendCalculator : Calculator {
    func add(first a: Int, second b: Int) -> Int {
        print("FriendCalculator에서 더하기 실행 : \(a), \(b)")
        return a+b
    }
}
var calculator2 : Calculator = FriendCalculator()
var result2 = calculator2.add(first: 10, second: 10)
print("FriendCalculator에서 add 결과 -> \(result)")
