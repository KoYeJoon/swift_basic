func show() {
    print("안녕!")
}

show()

//Quiz7
func showName(){
    let name : String = "내이름"
    print(name)
}

showName()

func show2(){
    var count=0
    
    count = count + 1
    count = count + 2
    count = count + 3
    count = count + 4
    count = count + 5
    count = count + 6
    count = count + 7
    count = count + 8
    count = count + 9
    count = count + 10
    
    print("1부터 10까지 더한 결과 : \(count)")
}
show2()

func show3()
{
    var count = 0
    for i in 1  ..< 11 {
        count = count + i
    }
    print("1부터 10까지 더한 결과 : \(count)")
}
show3()

func show4()
{
    var count = 0
    for i in 1  ..< 11 {
        count = count + i
    }
    print("1부터 10까지 더한 결과 : \(count)")
    
    count=0
    for  i in 1..<101{
        count = count + i
    }
     print("1부터 100까지 더한 결과 : \(count)")
}

show4()
