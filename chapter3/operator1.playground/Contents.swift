let userID = "test1"
let userPassword = "123456"

func login(id:String, password:String)->Bool {
    if( id == userID) && (password == userPassword){
        return true
 }
    return false
}
var inputID = "test1"
var inputPassword = "123456"
var result = login(id : inputID,  password: inputPassword)
print("아이디 확인 결과 -> \(result)")

/*
//Quiz 12
let a = 10
let b = 20

var c = 30

if (a+b)==c {
    print("값이 같습니다.")
}
else{
    print("값이 다릅니다.")
}
*/
//Quiz13
/*
let a : String? = "안뇽"
let b : Int? = nil

if a == nil || b == nil {
    print("nil이 있습니다.")
}
else{
print("nil이 없습니다.")
}
*/
