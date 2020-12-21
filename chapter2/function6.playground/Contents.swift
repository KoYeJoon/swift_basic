func show(message : String){
    print("전달 받은 메시지 -> \(message)")
}

show(message: "안녕! ")

func show2(message : inout String){
    print("전달 받은 메시지 -> \(message)")
    message = "OK."
}

var greeting = "안녕하세요!"
show2(message : &greeting)

print(greeting)

//Quiz 9
func add(_ a: Int, _ b: Int, _ result : inout Int){
    result = a+b
}

var result=0
add(10,10,&result)
print("더하기 결과 : \(result)")
