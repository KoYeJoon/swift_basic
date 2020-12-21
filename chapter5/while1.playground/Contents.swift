var i=0
while i<5 {
    print("while 반복문 #\(i)")
    i += 1
}

//do~while 같은 것
i=0
repeat {
    print("repeat~while 반복문 #\(i)")
    i += 1
    
    if(i>5){
        break;
    }
}while true
