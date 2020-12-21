struct Rectangle {
    var width  = 0
    var height =  0
    
    func toString () -> String {
        return "사각형 width : \(width), height : \(height)"
    }
}

var rect = Rectangle()
var rect2 : Rectangle  = Rectangle(width : 200 ,  height : 200)
var desc = rect2.toString()
print("rect2 정보 - > \(desc)")

var rect3 = rect2
rect2.width = 300
desc = rect2.toString()
print("rect2 정보 -> \(desc)")
desc = rect3.toString()
print("rect3 정보 -> \(desc)")

class Point {
    var x : Float = 0.0
    var y : Float = 0.0
    init(){
        
    }
    init(x : Float, y: Float){
        self.x = x
        self.y = y
    }
    func toString() -> String {
        return "점 x : \(x) , y : \(y)"
    }
}

var pnt = Point()
var pnt2 : Point = Point(x: 200.0, y: 200.0)
desc = pnt2.toString()
print("pnt2 정보 -> \(desc)")

var pnt3 = pnt2
pnt2.x = 300.0
desc = pnt2.toString()
print("pnt2 정보 -> \(desc)")
print("pnt3 정보 -> \(desc)")

var pnt4 : Point = Point(x: 200.0, y: 200.0)
if pnt4 === pnt2 {
    print("pnt4와 pnt2 객체는 같습니다.")
}else{
    print("pnt4와 pnt2 객체는 다릅니다.")
}

if pnt3 === pnt2 {
    print("pnt3와 pnt2 객체는 같습니다.")
} else{
    print("pnt3와 Pnt2 객체는 다릅니다.")
}

//Quiz 21
struct Dog {
    var name : String?
    var age : Int = 0
    
    func toString(){
        print("강아지 \(name)의 나이는 \(age) 입니다.")
    }
}
var dog1 = Dog(name : "이레", age : 3)
dog1.toString()
