func compare ( value : Int ) -> Int {
    if value < 0 {
        return -1
    }
    else if value == 0{
        return 0
    }
    else{
        return 1
    }
}

var result = compare(value : 10)
print("compare(value : 10) 의 결과 -> \(result)")

func compare2 (value : Int) -> Int {
    if value < 0 || value == 0 {
        return -1
    }
    else {
        return 1
    }
}

result = compare2(value : 10)
print("compare2(value : 10)의 결과 -> \(result)")

func compare3 (value : Int) -> Int {
    if !(value < 0 || value == 0){
        return -1
    }
    else{
        return 1
    }
}

result = compare3 (value : 10)
print("compare3(value : 10)의 결과 -> \(result)")

let a : Int = 12

if a <= 10 {
    print("숫자 값이 10과 같거나 작습니다")
}
else{
    print("숫자 값이 10보다 큽니다.")
}

//swift Study3
//사람이 미성년자인지 확인하는함수 만들기
func isMinor(age : Int) -> Bool {
    if age < 19 {
        return true
    }
    return false
}

let age : Int = 20
let minor = isMinor(age : age)

print("미성년자 여부 : \(minor)")
