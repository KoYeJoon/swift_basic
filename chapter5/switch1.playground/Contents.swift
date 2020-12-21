enum Blood{
    case A
    case B
    case O
    case AB
}

var myblood = Blood.B
switch myblood {
case .A:
    print("혈액형은 A형입니다.")
case .B:
    print("혈액형은 B형입니다.")
case .O:
    print("혈액형은 O형입니다.")
case .AB:
    print("혈액형은 AB형입니다.")
}

var age=10
switch age {
case 0,1,2:
    print("유아")
case 3..<13 :
    print("소아")
case 13..<19:
    print("청소년")
default:
    print("성인")
}

var score = (2,2)
switch score {
case (1,1) :
    print("점수가 1,1 입니다.")
case(1,2):
    print("점수가 1,2 입니다.")
case(2,_):
    print("점수가 2,_입니다.")
default :
    print("알 수 없는 점수입니다.")
}

/*
 튜플 (a,b)
 아래의 switch 문의 경우, 뒷 자리(y)에는 b가 들어가고
 앞의 자리(x)에는 a 가 들어간다.
 */
switch score{
case (1,let y) :
    print("점수가 1, \(y)입니다.")
case (2,let y):
    print("점수가 2,\(y)입니다.")
case(let x , let y):
    print("점수가 \(x), \(y)입니다.")
}

switch score {
case let (x,y) where x>0 :
    print("x가 0보다 크고 \(x), \(y) 입니다.")
case let (x,y) where x <= 0:
    print("x가 0보다 작거나 같고 \(x), \(y)입니다.")
default :
    print("x,y 판단할 수 없습니다.")
}
