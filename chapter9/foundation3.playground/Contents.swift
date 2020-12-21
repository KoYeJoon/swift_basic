/*
 NSLog, NSArray, NSDictionary
 NSLog : print함수 대신 사용 가능 ->포맷 형식에 맞춰 출력할 수 있다.
 -%@ : 래퍼런스자료형
 -%d : 정수 자료형
 -%f : 실수 자료형
 
 왜 출력이 안되지..
 */
import Foundation


var message = "안녕하세요!"
NSLog("메시지 : %@",  message)

var first = 10
var second = 20
NSLog("첫 번째 : %d, 두 번째 : %d",first, second)

class Rectangle : NSObject {
    var width = 0
    var height = 0
    init(width : Int, height : Int){
        self.width = width
        self.height = height
    }
    override var description: String{
        return "직사각형 \(width), \(height)"
    }
}
var rect1 = Rectangle(width: 100, height: 100)
NSLog("객체 정보 : %@ , rect1")
print("\(rect1)")
