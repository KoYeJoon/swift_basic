/*
let value1 = (10, "안녕! " , Float(2.4), true)
print("value 1 투플의 값 -> \(value1)")

var item1 = value1.0
print("value1 투플의 첫 번째 원소 ->  \(item1)")

let value2 = (x:10, y:20)
var item2 = value2.x
print("value2 투플의  x원소 ->\(item2)")

var value3  : (Int,  Int) = (10,20)
value3.0 = 30
print("value3 투플의 첫 번째 원소 -> \(value3.0)")

let value4 : (Int, Int) = (10,10)
let  (x,y) = value4
print("투플 안의 x 값 -> \(x)")

func getLocation() -> (x:Int, y: Int){
    return (10,10)
}

var location = getLocation()
print("내 위치 -> \(location.x), \(location.y)")

func getLocation2() ->(Int, Int){
    return (20,20)
}

print("내 위치 -> \(location)")

func getPerson(value1 :  String) -> (name : String, age  : Int?)? {
    var value2 : Int?
    value2 = Int(value1)
    if value2 == nil {
        print("전달 받은 값은 숫자가 아닙니다.")
        return nil
    }
    else{
        print("전달받은 숫자 -> \(value2!)")
        return (name : "김진수", age : value2)
    }
}

var result = getPerson(value1 : "20")
print("getPerson 함수 호출 결과 -> \(result)")
/*
func getCount(persons : (name : String, age : Int)...) ->Int{
    var count = 0
    for(_, _) in persons{
        count+=1
    }
    return count
}

var result2 = getCount(persons: ("김진수",20), ("김진희", 22),("안녕", 23))
print("getCount 함수 호출 결과 -> \(result2)")
*/
 */
//Quiz11
/*
func getCount(persons : (name : String?, mobile : String?)...) ->(Int, Int) {
    var nameCount = 0
    var mobileCount = 0
    for (value1, value2) in persons{
        if value1 != nil {
            nameCount+=1
        }
        if value2 != nil{
            mobileCount+=1
        }
    }
        return (nameCount, mobileCount)
}

    var result = getCount(persons : ("소녀시대", "010-0000-0000"),("걸스데이", nil),(nil,nil))
    print("getCount 결과 : \(result)")
*/
//SwiftStudy2
func calcAge(name : String, mobile : String,  year : Int? )->(String, String , Int)?{
    if( year == nil){
        return nil
    }
    let age = 2019 - year!
    return (name, mobile, age)
    
}

let person = calcAge(name : "가나다", mobile : "010-2222-2222", year : 1998)
print("나이를 계산한 결과 ->\(person!.2)")
