func sum(start : Int , end : Int) -> Int{
    var count=0
    for i in start ..< end{
        count=count + i
    }
    
    return count
}

var result = sum(start : 1 , end : 11)
print("sum(1,11) -> \(result)")

result = sum(start : 1, end : 101)
print("sum(1,101) -> \(result)")


func add1 (a : Int){
    print("add1 호출됨 : \(a)")
}

add1(a : 10)

func add2(a : Int , b : Int) {
    print("add2 호출됨 : \(a), \(b)")
}
add2(a:10,b:20)

func add3  (first a : Int, second b : Int){
    print("add3 호출됨 : \(a), \(b)")
}
add3(first : 10, second : 20)

func add4(_ a: Int, _ b: Int){
    print("add4 호출됨 : \(a), \(b)")
}

add4(10,20)


//Quiz 8
func multiply(_ a: Int, _ b: Int) -> Int{
    return a*b
}

result = multiply(3, 5)
print("곱하기 결과 : \(result)")
