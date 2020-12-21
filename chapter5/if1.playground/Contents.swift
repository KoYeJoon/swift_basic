var i = 2
var j=3

if i<j {
    print("if 문의 조건 : true")
}

enum Blood{
    case A
    case B
    case O
    case AB
}


var myblood = Blood.B
if myblood == Blood.A{
    print("혈액형은 A형입니다.")
}else if myblood==Blood.B{
    print("혈액형은 B형입니다.")
}else if myblood == Blood.O{
    print("혈액형은 O형입니다.")
} else if myblood==Blood.AB{
    print("혈액형은 AB형입니다.")
}else{
    print("알 수 없는 혈액형입니다.")
}

func checkBlood(type : String)->String?{
    if type == "A" || type == "O"{
        return "OK"
    }
    return nil
}

if let result = checkBlood(type:"O"){
    print("혈액검사결과 : \(result)")
}
else{
    print("혈액 검사 결과는 nil입니다.")
}

var sources = ["A","B"]
if let result1 = checkBlood(type: sources[0]), let result2 = checkBlood(type: sources[1]){
    print("혈액검사 결과 : \(result1), \(result2)")
}else{
    print("혈액 검사 결과 nil입니다.")
}
