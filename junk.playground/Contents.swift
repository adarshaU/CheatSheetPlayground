//import Foundation
//import UIKit
//
//protocol sendDataDelegate{}
//
//class SendingVC{
//    
//    weak var delegate:RecivingVC?
//    deinit {
//        print("Sending vc gone")
//    }
//    
//}
//class RecivingVC:sendDataDelegate{
//    
//   lazy var sendingVCRef:SendingVC = {
//        let sendingvc = SendingVC()
//        sendingvc.delegate = self
//        return sendingvc
//    }()
//    
//    deinit {
//        print("recivingvc deallocated..")
//    }
//    
//}
//var recivingvc:RecivingVC? = RecivingVC()
//recivingvc?.sendingVCRef
//recivingvc = nil









//struct Person { // Model
//    let firstName: String
//    let lastName: String
//}
//
//protocol GreetingView: class {
//    func setGreeting(greeting: String)
//}
//
//protocol GreetingViewPresenter {
//    init(view: GreetingView, person: Person)
//    func showGreeting()
//}
//
//class GreetingPresenter : GreetingViewPresenter {
//    unowned let view: GreetingView
//    let person: Person
//    required init(view: GreetingView, person: Person) {
//        self.view = view
//        self.person = person
//    }
//    func showGreeting() {
//        let greeting = "Hello" + " " + self.person.firstName + " " + self.person.lastName
//        self.view.setGreeting(greeting: greeting)
//    }
//}
//
//class GreetingViewController : UIViewController, GreetingView {
//    var presenter: GreetingViewPresenter!
//    let showGreetingButton = UIButton()
//    let greetingLabel = UILabel()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.showGreetingButton.addTarget(self, action: "didTapButton:", for: .touchUpInside)
//    }
//
//    func didTapButton(button: UIButton) {
//        self.presenter.showGreeting()
//    }
//
//    func setGreeting(greeting: String) {
//        self.greetingLabel.text = greeting
//    }
//
//    // layout code goes here
//}
//// Assembling of MVP
//let model = Person(firstName: "David", lastName: "Blaine")
//let view = GreetingViewController()
//let presenter = GreetingPresenter(view: view, person: model)
//view.presenter = presenter











//class Human{
//   weak  var passport:Passport?
//    let name:String
//    init(name:String) {
//        self.name = name
//    }
//    deinit {
//        print("Human Deallocated")
//    }
//}
//class Passport{
//    var human:Human?
//    let citizenship:String
//
//    init(citizenship:String) {
//        self.citizenship = citizenship
//    }
//    deinit {
//        print("Passport deallocated")
//    }
//}
//
//var human:Human? = Human(name: "Ganesha")
//var passport:Passport? = Passport(citizenship: "India")
//passport?.human = human
//human?.passport = passport
//passport = nil
//human = nil
//
//
//




//protocol patternCaller{
//    func passData(data:String)
//}
//
//class firstVc{
//    var delegate:patternCaller?
//    deinit {
//        print("firstvc deallocated")
//    }
//}
//
//class secondVC:patternCaller{
//
//    func passData(data: String) {
//        print("Something just happened")
//    }
//    deinit {
//        print("secondvc deallocated")
//    }
//}
//
//var firstVcRef:firstVc? = firstVc()
//var secondvcRef:secondVC? = secondVC()
//
//firstVcRef?.delegate = secondvcRef
//
//firstVcRef?.delegate?.passData(data: "hey pass this data")
//
//firstVcRef = nil
//secondvcRef = nil

//
//func downloadImage(completionHandler:(Bool)->Void){
//
//    for _ in 1...100 {
//        print("Downloading....")
//    }
//    completionHandler(true)
//}
//
//
//downloadImage(completionHandler: {(success) in print("Hey u got it man")  })



//
//func trailingClosure(number:Int,closure:(Int)->Int){
// let newNumber = closure(34)
// print(newNumber)
//}
//trailingClosure(number: 23, closure: {num1 in return num1 + 2 })
//trailingClosure(number: 23) { (num) -> Int in
//    return num * num
//}
//trailingClosure(number: 44){num in num*num}
//trailingClosure(number: 33) {$0 * $0}





//let ganeshaButton:UILabel = {
//    let label = UILabel()
//    label.frame = CGRect.zero
//    label.text = "Ganesha"
//    label.textColor = UIColor.white
//    return label
//}()
//
//let vinayakaButton:UILabel = {
//    let label = UILabel()
//    label.frame = CGRect.zero
//    label.text = "Ganesha"
//    label.textColor = UIColor.white
//    return label
//}()





//closure -2

//let inlineClosure = {(num1:Int,num2:Int)->Int in
//    return num1 + num2
//}
//
//func myname(num1:Int,num2:Int,closure:(Int,Int)->Int)->Int {
//    return closure(num1,num2)
//}
//
//myname(num1: 23, num2: 33, closure: inlineClosure)

//return closure block directly
//
//func returnClosure()->((Int,Int)->Int){
//
//    return { (num1,num2)->Int in num1 + num2}
//
//}
//
//
//let returnClosureRef = returnClosure()
//returnClosureRef(2,3)










////closure
//func addNumbers(num1:Int,num2:Int)->Int{
//    return num1 + num2
//}
//
//var addNumbers = {(num1:Int,num2:Int)->Int in
//    return num1 + num2
//}
//addNumbers(23,3)
//
//let closureOne:(Int,Int)->Int = { (num1:Int,num2:Int)->Int in
//
//    return num2 + num1
//}
//closureOne(2,1)
//
//let closureTwo = { (num1:Int,num2:Int) ->Int in
//     num2 + num1
//}
//closureTwo(3,4)
//
//let clouserThree:(Int,Int)->Int = {$0 + $1}
//clouserThree(2,3)







//
////Singleton
//class AccoutManager{
//
//
//    static let sharedInstance = AccoutManager()
//    var name:String = "Ganesha"
//    var age = 32
//    private init(){}
//}
//
//
//let refOne = AccoutManager.sharedInstance.name
//AccoutManager.sharedInstance.name = "VInayaka"
//
//let refTwo = AccoutManager.sharedInstance.name





//class someClass{
//
//   static let rr:String = "sds"
//
//    static var name:String = "Ganesha"
//
//    static var check:String{
//        return "dss"
//    }
//
//    class var classvar:String{
//        return "sd"
//    }
//
//    class func tt(){
//        print("U got it..")
//    }
//    final func ganesha(){
//
//    }
//}
//
//let tt = someClass.name
//
//print(tt)
//
//
//class sub:someClass{
//
//    let rr:String = "eer"
//
//    override class func tt(){
//        print("er")
//    }
//
//}





//struct somestructure{
//    static var name:String = "Ganesha"
//
//    static var computedProperty:Int{
//        get{
//        return 12
//        }
//        set (myvalue) {
//            somestructure.name = "\(myvalue)"
//        }
//    }
//
//    static func mymethod(){
//        print("Static func")
//    }
//}
//somestructure.mymethod()




//class Human{
//    let origin:String
//
//    init(enterOrigin:String) {
//        self.origin = enterOrigin
//    }
//}
//
//
//class Indian:Human{
//    let city:String
//
//    init(enterOrigin:String,city:String) {
//        self.city = city
//        super.init(enterOrigin: enterOrigin)
//    }
//}
//
//let ganesha = Indian(enterOrigin: "India", city: "Bangalore")




//var mygrade:Int = 80{
//    willSet{
//        print("Will set called newValue:\(newValue)")
//    }
//    didSet(oldGrade){
//        print("DidSet called oldValue:\(oldGrade) and new Value")
//    }
//}



//var side:Double = 100
//var area:Double{
//    get{
//        return side * side
//    }set{
//        side = sqrt(newValue)
//    }
//}
//
//area = 9
//side







//class NumberClass{
//
//    var radius:Double = 10
//
//    var diameter:Double {
//
//        get{
//            return radius * 2
//        }
//        set {
//            radius = newValue/2
//        }
//    }
//}
//
//let myclass = NumberClass()
//myclass.diameter = 22
//myclass.radius



//class Human{
//    var name:String = "kkj"
//    init(name:String) {
//        self.name = name
//    }
//}
//struct Kendle{
//    var name = "hhh"
//}
//let human = Human(name: "Ganehsa")
//human.name = "vinayaka"
//human.name
////let and var make sense
//var ken = Kendle()
//ken.name = "jjj"






//struct Weekdays{
//    subscript()->String{
//        print("You got it")
//        return "sd"
//    }
//
//}
//
//let mydays = Weekdays()
//mydays[]


//struct Weekdays{
//
//    let days = ["Monday","Tuesday","Wednesday","Thursday","Friday"]
//
//    subscript(index:Int)->String{
//        return days[index]
//    }
//
//}
//
//let mydays = Weekdays()
//mydays[4]








//
//func sample(operaion:(Int,Int)->Int){
//    print(operaion(2,3))
//}
//sample{$0 * $1}




//func writeLyrics(){
//    let totalCount = 99
//    for item in (0...99).reversed(){
//        if totalCount-item > 1{
//            writeAline(paramone: "\(totalCount-item) ", paramTwo: "\(totalCount-item-1)")
//        }
//        else if (totalCount-item) == 1{
//            writeAline(paramone: "\(totalCount-item) ", paramTwo: "no more")
//        }
//    }
//    defer{
//        writeAline(paramone: "no more", paramTwo: "no more")
//    }
//
//}
//
//func writeAline(paramone:String,paramTwo:String){
//    print("\(paramone) of beer on the wall,\(paramone) bottles of beer.\n Take one down and pass it around,\(paramTwo) bottles of beer on the wall.\n")
//}
//writeLyrics()





//func ttt<T>(name:T){
//    print(name)
//}
//
//ttt(name: "Ganesha")



//
//class some{
//
//
//    func dd(){
////        Timer.scheduledTimer(withTimeInterval: 3, repeats: true)  { (timer) in
////            print("I caame")
////        }
//     }
//}
//
//
//
//
//let rr = some()
//rr.dd()


//
//let queue = OperationQueue()
//
//queue.maxConcurrentOperationCount = 2
//
//let opertaion1 = BlockOperation {
//    print(Thread.current)
//    for item in 0..<230{
//        print("firstBlock \(item)")
//    }
//}
//opertaion1.qualityOfService = .background
//
//
//let opertaion2 = BlockOperation {
//   print(Thread.current)
//    for item in 0..<230{
//        print("secondBlock \(item)")
//    }
//
//}
//
//opertaion1.completionBlock = {
//    print("One completed man")
//}
//
//opertaion2.completionBlock = {
//    print("two completed man")
//}
//
//opertaion2.addDependency(opertaion1)
//
//queue.addOperation(opertaion1)
//queue.addOperation(opertaion2)










//let asianQueue = DispatchQueue(label: "Com.ss", qos: .background, attributes: .concurrent, autoreleaseFrequency: .never, target: nil)
////let americanQueu = DispatchQueue(label: "com.american")
//
//var myName = "Not There"
//
//asianQueue.async {
//
//    print(Thread.isMainThread)
//    print(Thread.current)
//
//    for i in 0..<12{
//        print(myName)
//        myName = "Ganesha \(i)"
//        print("U nailed buddy")
//    }
//}
//
//asianQueue.async {
//    print(Thread.isMainThread , "NOsd")
//    print(Thread.current)
//    for i in 0..<12{
//        myName = "Vignesha \(i)"
//        print("Looser americans..")
//    }
//}








//Custom concurrent queue
//let serial = DispatchQueue(label: "ccs.dd.dd", qos: .background, attributes: .concurrent, autoreleaseFrequency: .never, target: nil)
//
//serial.async {
//
//    for _ in 0..<3984{
//        print("Got it")
//
//    }
//}
//
//serial.async {
//    for _ in 0..<334{
//        print("Got it tooo")
//    }
//}








//import Foundation
//
//
//if let tt = Bundle.main.url(forResource: "test", withExtension: "txt"){
//    do{
//        let contetnts = try String(contentsOf: tt)
//
//        let dataArray  = contetnts.components(separatedBy: ",").compactMap(Int.init)
//
//
//    }catch let error{
//        print(error.localizedDescription)
//    }
//}
//
//
//let numberOfStreets = "1"
//let numberOfBulidingsCost = "5 12"
//let heightOfBuildings = "12 20 39 45 89"
//
//
//
//
//for streetCount in 0..<Int(numberOfStreets)!{
//
//    let numberOfBulidingsCost = "5 12"
//    let heightOfBuildings = "12 20 39 45 89"
//
//
//    let buildingList = heightOfBuildings.split{$0 == " "}.compactMap{Int($0)}
//    let buildingCost = numberOfBulidingsCost.split{$0 == " "}.compactMap{Int($0)}.last!
//
//    var highestBuilding = 0
//    var buildingCover = 0
//    for item in buildingList{
//        if item > highestBuilding{
//            highestBuilding = item
//            buildingCover += 1
//        }
//    }
//
//    let earning = buildingCover * buildingCost
//    print(earning)
//
//}
//
//
//
//
//
//
////heightOfBuildings.compactMap{print($0)}
//
//
//
//
//
//
//
//
//
//
//
//
//
////class Node{
////
////    var value:Int
////    var next:Node?
////
////    init(value:Int,next:Node?) {
////        self.value = value
////        self.next = next
////    }
////}
////
////func printAllNodeValues(head:Node?){
////
////    var currentNode = head
////
////    while currentNode != nil {
////        print(currentNode?.value)
////        currentNode = currentNode?.next
////    }
////}
////
////func getNode(atPostion:Int,head:Node?)->Node?{
////    var count = 0
////    var currentNode = head
////    while currentNode != nil {
////
////        if atPostion == count{
////            return currentNode
////        }else{
////            count += 1
////            currentNode = currentNode?.next
////        }
////    }
////    return nil
////}
////
////func inserNode(atPosition:Int,head:Node?,attachNode:Node?)->Node?{
////
////    var currentNode = head
////    var count = 0
////    while currentNode != nil {
////
////        if atPosition == count{
////            let tempNode = currentNode?.next
////
////            let attach = attachNode
////            attach?.next = tempNode
////            currentNode?.next = attach
////            break
////        }else{
////            count += 1
////            currentNode = currentNode?.next
////        }
////    }
////
////    return currentNode
////
////}
////
////
////
////let nodeThree = Node(value: 3, next: nil)
////let nodetwo = Node(value: 2, next: nodeThree)
////let one = Node(value: 1, next: nodetwo)
////
//////printAllNodeValues(head: one)
//////print(getNode(atPostion: 1, head: one)?.value)
////printAllNodeValues(head: inserNode(atPosition: 0, head: one, attachNode: Node(value: 34, next: nil)))
////
////
////
////
////
////
