func show(message : String, terminator : String = "\n"){
    print("메시지 : \(message)", terminator : terminator)
}
show(message : "안녕! " , terminator :"\n")
show(message : "안녕하세요!")

func show2(message : String, newline : Bool=true){
    print(message , newline)
}

show2(message: "반갑습니다")
