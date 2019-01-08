import UIKit

//1
enum Gadget<T>{
    case smartPhone
    case laptop
    case fridges
    case others(T)
}

enum Company<T>{
    case samsung
    case apple
    case sony
    case others(T)
}

struct Product<T>{
    let company:Company<T>
    let gadget:Gadget<T>
    let reviews:[T]
    
}

let myproduct = Product(company: .apple, gadget: .laptop, reviews: ["Good but costly."])

//2
struct NestedProduct<T>{
    
    enum Gadget{
        case smartPhone
        case laptop
        case fridges
        case others(T)
    }
    
    enum Company{
        case samsung
        case apple
        case sony
        case others(T)
    }

    let company:Company
    let gadget:Gadget
    let reviews:[T]
}
let myNestedProduct = NestedProduct(company: .apple, gadget: .laptop, reviews: ["Good and cheap."])

//3
class GaniClass{}
struct GaniStruct{}
enum GaniEnum{
    case ganiCase
}

let ganiClassRef = GaniClass()
let ganiStructRef = GaniStruct()
let ganiEnumRef = GaniEnum.ganiCase

enum MyEnum{
    case myClass(GaniClass)
    case myStruct(GaniStruct)
    case myEnum(GaniEnum)
    
}


//4 Binary tree
indirect enum Tree{
    case Empty
    case Node(value:Int,left:Tree,right:Tree)
}

let tree1 = Tree.Node(value: 1, left: .Empty, right: .Empty)
let tree2 = Tree.Node(value: 2, left: .Empty, right: .Empty)
let tree3 = Tree.Node(value: 3, left: tree1, right: tree2)
let tree4 = Tree.Node(value: 4, left: tree3, right: .Empty)


func evaluateTree(tree:Tree)->Int{
    switch tree {
    case .Empty:
        return 0
    case .Node(let value, let left, let right):
        return value + evaluateTree(tree: right) + evaluateTree(tree: left)
    }
}

evaluateTree(tree: tree3)











//enum IgnitionType{
//    case Manual
//    case Automatic
//}
//
//protocol BMWProtocol{
//    associatedtype mytype
//    var zipCode:mytype{get}
//    var ignitionType:IgnitionType{get}
//    var name:String{get}
//
//    func changeName()
//}
//
//class MyName:BMWProtocol{
//    typealias mytype = String
//    var ignitionType: IgnitionType = .Manual
//    var name: String = "Ganesha"
//    var zipCode:mytype
//
//    init(zipcode:mytype) {
//        self.zipCode = zipcode
//    }
//
//    func changeName() {
//        print("this is ur change.")
//    }
//}
//
//
//class MyCar:BMWProtocol{
//   typealias mytype = String
//
//    var ignitionType: IgnitionType = .Automatic
//    var name: String = "Vignesha"
//    var zipCode:mytype
//
//    init(zipcode:mytype) {
//        self.zipCode = zipcode
//    }
//
//    func changeName() {
//        print("this is ur change.")
//    }
//}
//
////Wrapper
//class Dynamic<T>:BMWProtocol{
//    typealias mytype = T
//    let ignitionType: IgnitionType
//    let name: String
//    let zipCode:mytype
//
//    private var _changeName:()->Void
//
//    init<U:BMWProtocol>(_ object:U) where U.mytype == T{
//        self.ignitionType = object.ignitionType
//        self.name = object.name
//        self.zipCode = object.zipCode
//        _changeName = object.changeName
//    }
//
//    func changeName() {
//        self._changeName()
//    }
//
//}
//
//let ee = Dynamic(MyCar(zipcode:"2323"))
//let er = Dynamic(MyName(zipcode:"2332"))
//
//let cars:[Dynamic<String>] = [ee,er]
//
//for item in cars{
//    print(item.name)
//}






















//extension Array /*: Functor*/ {
//    public typealias A = Element
//    public typealias B = Any
//    public typealias FB = [B]
//
//    public func fmap<B>(_ f : (A) -> B) -> [B] {
//        return self.map(f)
//    }
//}
//
//let list = [20,13,14,15].fmap { (temp) -> String in
//    return "Ganesha \(temp)"
//}
//print(list)
//
//let another = [3,121,3,4].map { (temp) -> String in
//        return "Ganesha \(temp)"
//}
//print(another)
//
//
//extension Array{
//    public func justPrint()->B{
//        return self
//    }
//}
//
//print(["2","d","sd","sdf"].justPrint())



//struct Blog{
//    let author:String
//    let id:Int
//    let url:URL
//
//    enum BlogCodingKeys:String,CodingKey{
//        case author,id,url
//    }
//}
//
//
//extension Blog:Encodable{
//    func encode(to encoder:Encoder) throws{
//
//
//    }
//}


//let sampleJSONData = """
//[{
//    "1": {
//        "id": 12,
//        "name": "Ganesha",
//        "address": "Test address",
//        "CountyCode": 571426,
//        "otherDetails": "Bla bla"
//    },
//    "2": {
//        "id": 12,
//        "name": "Ganesha",
//        "address": "Unknown",
//        "CountyCode": 571426,
//        "otherDetails": "Bla bla"
//    },
//    "some": {
//        "id":11,
//        "name": "Ganesha",
//
//        "otherDetails": "Bla bla"
//        }
//}]
//""".data(using: .utf8)!
//
//struct User:Codable{
//
//    let id:Int?
//  //  let name:String
//    let address:String?
//    //let pincode:Int
//
//    enum CodingKeys:String, CodingKey {
//    //    case pincode = "CountyCode"
//        case id = "id"
//        case address = "address"
//  //      case name = "name"
//    }
//
//}
//let result = try? JSONDecoder().decode([[String:User]].self, from: sampleJSONData)
//print(result?[0]["1"]?.address)







//struct Geek:Codable{
//    var name:String
//    var age:Int
//    var userID:Int
//}
//let geekUser = Geek(name: "Ganesha", age: 12, userID: 123)
//let encoder = JSONEncoder()
//encoder.outputFormatting = .prettyPrinted
//
//let data = try? encoder.encode(geekUser)
//if let printable = String(data: data!, encoding: .utf8){
//    print(printable)
//}








//struct JSON{
//
//    private var storage:[String:Any]
//
//    init(_ dictionary:[String:Any]) {
//        self.storage = dictionary
//    }
//
//    subscript<T>(key:String)->T?{
//
//        return storage[key] as? T
//    }
//}
//
//let someData = JSON([
//        "Name":"Ganesha",
//        "Age":12,
//        "Addressa":"Kailasa"
//    ])
//
//let name:String? = someData["Name"]
//print(name)
//let age:Int? = someData["Age"]
//print(age)











//enum Platform{
//    case iOS
//    case Android
//}
//struct Developer{
//
//    var platform:Platform
//    var information:Information
//
//}
//struct Information{
//    var name:String
//    var age:String
//    var experience:String
//}
//
//let ganeshaTheDeveloper = Developer(platform: .iOS, information: Information(name: "Ganesha", age: "23", experience: "12"))
//print(ganeshaTheDeveloper.information.name)
//
//let informationKeyPath = \Developer.information
//let name = ganeshaTheDeveloper[keyPath:informationKeyPath].name
//let nameKeyPAth = informationKeyPath.appending(path: \.name)
//
//let anotherWay = ganeshaTheDeveloper[keyPath:nameKeyPAth]
//print(anotherWay)







//class Game{
//
//    private var number = 0
//
//    var score:Int{
//        return number
//    }
//
//    func increaseNumberByOne(){
//        number += 1
//    }
//}
//
//let gg = Game()
//
//class AnotherGame{
//   private(set) var score:Int = 0
//   func increaseNumberByOne(){
//        score += 1
//    }
//}
//let rest = AnotherGame()
//rest.increaseNumberByOne()
//print(rest.score)


