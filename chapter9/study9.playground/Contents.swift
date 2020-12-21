import Foundation

class Dog {
    var name : String
    var birth : Date
    
    init(name : String, birth : Date){
        self.name = name
        self.birth = birth
    }
    func description(){
        print("강아지 이름 : \(name), 생일 :\(birth)")
    }
}

var names : [String] = ["미미","캔디"]
var births : [String] = ["2017-01-02 12:20", "2017-05-10 10:30"]

var formatter = DateFormatter();
formatter.dateFormat = "yyyy-MM-dd HH:mm"

var dogs : [Dog] = []
for i in 0 ..< names.count {
    let name  = names[i]
    let birth = births[i]
    
    let birthDate = formatter.date(from : birth)!
    let dog = Dog(name : name, birth : birthDate)
    dogs.append(dog)
}

for dog in dogs{
    dog.description()
}
