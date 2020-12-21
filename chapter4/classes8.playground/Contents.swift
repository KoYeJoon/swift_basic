enum Car : Int{
    case Benz = 0
    case BMW
    case Other
}

enum CarSize : String {
    case Small = "소형"
    case Medium = "중형"
    case Big = "대형"
}

var car1 = Car(rawValue: 0)!
var size1 = CarSize(rawValue: "소형")!

print("자동차 구분 값 : \(car1.rawValue)")
print("자동차 크기 구분 값 : \(size1.rawValue)")
