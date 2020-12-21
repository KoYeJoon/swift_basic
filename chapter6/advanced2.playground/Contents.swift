//파라미터로 올 함수의 이름을 정의해주고, 어떤 자료형을 파라미트로하고, 반환하는지 표시함.
func add(first a : Int, second b : Int, callback : ((Int)->Void)) {
    let result = a+b
    callback(result)
}

func show(result : Int){
    print("add함수를 실행한 결과 : \(result)")
}

add(first: 10, second: 10, callback: show)


//함수를 파라미터로 두 개 받는 경우
func successPrint() {
    print("성공")
}

func failPrint(){
    print("실패")
}

var names = [1: "소녀시대", 2: "여자친구", 3: "티아라"]
/*
 defer  키워드는 콜백함수를 실행할 때와 return 키워드로 결과 값을 반환하면서 함수가 종료될 때의 동시성 문제를 해결하기
 위해 사용됨.
 콜백함수를 실행하기 전에 return 키워드가 실행되어 함수가 먼저 종료되는 문제를 막기 위해 사용됨.
 */
func getData(index : Int, success sCallback : () -> Void, fail fCalback:()->Void)->String? {
    if let name = names[index] {
        sCallback()
        return name
    }
    defer {
        fCalback()
    }
    return nil
}

var result = getData(index: 1, success: successPrint, fail: failPrint)
var result2 = getData(index: 5, success: successPrint, fail: failPrint)


/*
 일회용 함수인 경우, 파라미터에서 함수를 정의하는 경우
 {
 함수의 자료형 in
 함수코드
 }
*/
var result3 = getData(index: 3, success: {
    ()->Void in
    print("성공했습니다.")
    }, fail: {
        () -> Void in
        print("실패했습니다.")
        })
