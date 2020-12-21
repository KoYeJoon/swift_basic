//날짜와 시간 -> Data 클래스 이용
import  Foundation

//서울이 런던 기준시 보다 9시간 빠르므로 시간이 다르게 출력됨
let now = NSDate()
print("현재 일시 : \(now)")

var formatter = DateFormatter()
/*
 y : 연도
 M: 월
 d : 날짜
 hh:12시간 단위
 HH : 24시간 단위
 m: 분
 s : 초
 Z : 밀리초
 
 func string(from : Date)->String
 func date(from : String) -> Date? date 객체로 반환
 */
formatter.dateFormat = "yyyy-MM-dd HH:mm:ss ZZZ"

let nowStr = formatter.string(from:now as Date);
print("현재 일시  : \(nowStr)")

/*
 Date객체를 만들 때 파라미터로 timeInteervalSinceNow
 넣은 숫자 값이 양수 : 현재시간과 넣은시간 더함
 ex. 1일 후 (60*60*24)
 넣은 숫자 값이 음수 :현재시간에서 넣은 값을 뺌
 ex.1일 전 (-60*60*24)
 Date객체의 값을 바꾸고 싶다면 addingTimeInterval 메소드 사용
 */

let yesterday = Date(timeIntervalSinceNow: (-60*60*24))
let yesterdayStr = formatter.string(from: yesterday);
print("1일 전의 일시 : \(yesterdayStr)")

let tomorrow = Date(timeIntervalSinceNow: (60*60*24))
let tomorrowStr = formatter.string(from: tomorrow);
print("1일 후의 일시 : \(tomorrowStr)")

let oneHourLater = now.addingTimeInterval((60*60))
print("1시간 후의 일시 : \(formatter.string(from : oneHourLater as Date))")

//세계시간 알려주는 어플 만들 때 이용하면 좋을 듯

//Date 객체 비교하면 두 개의 일시 중 어떤 것이 빠른지 알 수 있음
var result = now.compare(yesterday)
//compare한 결과 now가 더 나중이므로 orderedDescending이 나옴
if result == ComparisonResult.orderedDescending {
    print("날짜 비교 결과 now가 더 나중입니다.")
}

//Date값 중 연도나 시간만 뽑아내고 싶은 경우 : Calendar 클래스 사용 가능
var hour = Calendar.current.component(Calendar.Component.hour, from: now as Date)
var minute = Calendar.current.component(Calendar.Component
    .minute, from: now as Date)
print("현재 시간 : \(hour)시 \(minute)분")


//Quiz40
let now1 = Date()
print("현재 일시 : \(now1)")

var formatter1 = DateFormatter()
formatter1.dateFormat = "yyyyMMddHHmmss"

let nowStr1 = formatter1.string(from: now1);
print("현재 일시 : \(nowStr1)")
