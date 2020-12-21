/*subscript
subscript를 사용하면 컬렉션이 아닌 다른 자료형에서도 사용이 가능하다.
subscript 는 함수랑 모습이 닮았다.
 subscript(index : Int)->Int{
 get {
    return [항목 값]
 }
 set(newValue){
 
 }
 }
 각각의 사람 이름은 대괄호와 인덱스를 사용해 접근이 가능하다.
*/

class Person{
    var name : String!
    //name 속성 값을 출력한 후, 대괄호를 통해 받은 문자열의 길이 반환
    subscript (str : String) -> Int {
        get {
            print("사람 이름 : \(name)")
            return str.count
        }
    }
}

//var person1 = Person()
var person1 : Person=Person()
person1.name = "김준수"
var count = person1["김준수"]
print("이름 문자열의 길이 : \(count)")
