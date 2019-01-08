import UIKit
import Foundation







//enum AppTheme:String{
//    case placid,warning,danger
//
//    var description:String{
//        return self.rawValue
//    }
//
//}
//let object = AppTheme.placid




//protocol Bookable {
//    var identifier: String { get set }
//    var startDate: Date { get set }
//    var endDate: Date { get set }
//}
//
//struct FlightBooking: Bookable, Codable {
//    // MARK: - Bookable
//    var identifier: String
//    var startDate: Date
//    var endDate: Date
//
//    let flightNumber: String
//    let from: String
//    let to: String
//    let isRoundTrip: Bool
//
//    init(identifier: String, startDate: Date, endDate: Date, flightNumber: String, from: String, to: String, isRoundTrip: Bool) {
//        self.identifier = identifier
//        self.startDate = startDate
//        self.endDate = endDate
//        self.flightNumber = flightNumber
//        self.from = from
//        self.to = to
//        self.isRoundTrip = isRoundTrip
//    }
//}
//
//struct HotelBooking: Bookable, Codable {
//    // MARK: - Bookable
//    var identifier: String
//    var startDate: Date
//    var endDate: Date
//
//    let roomNumber: Int
//
//    init(identifier: String, startDate: Date, endDate: Date, roomNumber: Int) {
//        self.identifier = identifier
//        self.startDate = startDate
//        self.endDate = endDate
//        self.roomNumber = roomNumber
//    }
//}
//
//struct RentalBooking: Bookable, Codable {
//    // MARK: - Bookable
//    var identifier: String
//    var startDate: Date
//    var endDate: Date
//
//    let model: String
//    let make: String
//
//    init(identifier: String, startDate: Date, endDate: Date, model: String, make: String) {
//        self.identifier = identifier
//        self.startDate = startDate
//        self.endDate = endDate
//        self.model = model
//        self.make = make
//    }
//}
//
//extension Date {
//    static func bookingDate(from string: String) -> Date {
//        let dateFormatter = ISO8601DateFormatter()
//        return dateFormatter.date(from: string) ?? Date()
//    }
//}
//
//protocol FetchableType {}
//
//protocol Fetchable {
//    func fetch(completionBlock: @escaping (FetchableType) -> Void)
//}
//
//struct FlightBookingsWrapper: FetchableType {
//    let bookings: [FlightBooking]?
//}
//
//struct HotelBookingsWrapper: FetchableType {
//    let bookings: [HotelBooking]?
//}
//
//struct RentalBookingsWrapper: FetchableType {
//    let bookings: [RentalBooking]?
//}
//
//
//struct FlightBookingFetcher: Fetchable {
//    func fetch(completionBlock: @escaping (FetchableType) -> Void) {
//        completionBlock(
//            FlightBookingsWrapper(bookings: [
//                FlightBooking(identifier: "VX-XUJURM",
//                              startDate: Date.bookingDate(from: "2017-11-12T10:30:00+0000"),
//                              endDate: Date.bookingDate(from: "2017-11-16T09:00:00+0000"),
//                              flightNumber: "VX-1511",
//                              from: "SFO",
//                              to: "SEA",
//                              isRoundTrip: true)
//                ]))
//    }
//}
//
//struct HotelBookingFetcher: Fetchable {
//    func fetch(completionBlock: @escaping (FetchableType) -> Void) {
//        completionBlock(
//            HotelBookingsWrapper(bookings: [
//                HotelBooking(identifier: "MC-83027626",
//                             startDate: Date.bookingDate(from: "2017-11-12T00:00:00+0000"),
//                             endDate: Date.bookingDate(from: "2017-11-16T00:00:00+0000"),
//                             roomNumber: 304)
//                ]))
//    }
//}
//
//struct RentalBookingFetcher: Fetchable {
//    func fetch(completionBlock: @escaping (FetchableType) -> Void) {
//        completionBlock(
//            RentalBookingsWrapper(bookings: [
//                RentalBooking(identifier: "ENT-2856847",
//                              startDate: Date.bookingDate(from: "2017-11-12T00:00:00+0000"),
//                              endDate: Date.bookingDate(from: "2017-11-16T00:00:00+0000"),
//                              model: "Fiesta",
//                              make: "Ford")
//                ]))
//    }
//}
//
//
//
//struct BookingCoordinator {
//    public func fetch() {
//        let fetchers: [Fetchable] = [FlightBookingFetcher(), HotelBookingFetcher(), RentalBookingFetcher()]
//        for fetcher in fetchers {
//            fetcher.fetch { (bookings) in
//                print(bookings)
//            }
//        }
//    }
//}
//
//
//let bookingCoordinator = BookingCoordinator()
//bookingCoordinator.fetch()
//
//print("Ganesha")







//struct Folder{}
//struct Cell {}
//
//
//protocol Listable{
//    associatedtype FileType
//    func getFileType()->String
//}
//
//class FolderCell:Listable{
//    typealias FileType = Folder
//    func getFileType()->String {
//        return "File type used is \(FileType.self)"
//    }
//}
//
//class CollectionCell:Listable{
//    typealias FileType = Cell
//    func getFileType()->String {
//        return "File type used is \(FileType.self)"
//    }
//}
//
//class ListCell:Listable{
//    typealias FileType = Cell
//    func getFileType()->String {
//        return "File type used is \(FileType.self)"
//    }
//
//}
//
//
////let cell:Listable = CollectionCell()
////Generic constriant
////func enterListCell<T:Listable>(enterCell:T){}
////enterListCell(enterCell: FolderCell())
////enterListCell(enterCell: CollectionCell())
//
//
////Desing wrapper
//class AnyListableCell<T>:Listable{
//    typealias FileType = T
//
//    private let _getFileType:()->String
//
//    init<U:Listable>(_ enterAnyCell:U) where U.FileType == T {
//        _getFileType = enterAnyCell.getFileType
//    }
//    func getFileType()->String {
//        return _getFileType()
//    }
//}
//let anyListableCell:AnyListableCell = AnyListableCell(CollectionCell())
//let anotherCell:AnyListableCell = AnyListableCell(ListCell())
//let fileTypeWithCell = [anyListableCell,anotherCell]
//print(fileTypeWithCell[0].getFileType())
//print(fileTypeWithCell[1].getFileType())








//protocol GenericProtocol{
//    associatedtype myType
//    var familyMembers:[myType]{get set}
//}
//
//struct GenericStruct<T>:GenericProtocol{
//    var familyMembers: [T] = [T]()
//}
//
//let ref = GenericStruct(familyMembers: ["Bob","Ganesha","Vinayaka"])
//let another = GenericStruct(familyMembers: [23,34,5,23])
//print(another.familyMembers)







//Generic protocol
//protocol GenericProtocol{
//    associatedtype mytype
//    var name:mytype{get set}
//}
//struct Mystruct:GenericProtocol{
//
//    typealias mytype = String
//    var name: String = "Ganesha"
//
//}
//print(Mystruct().name)





////Generic Reducer
//extension Array{
//
//    func myreducer(_ seed:Element,Operation:(Element,Element)->Element)->Element{
//
//        var current = seed
//
//        for item in self{
//            current = Operation(current,item)
//        }
//        return current
//    }
//}
//
//let myOperation = { (cureent:String,element:String)->String in return ("\(cureent) " + element)}
//print(["Ganesha","Vinayaka","Nandikeshvara"].myreducer("Great Gods:", Operation: myOperation))
//
//let customReduceOperation = {(current:Int,element:Int)->Int in return current + element}
//print([23,34,54,6].myreducer(0, Operation: customReduceOperation))




////Generic Map
//extension Array{
//    func myMap<T>(_ operation:(Element)->T)->[T]{
//        var reslut = [T]()
//        for item in self{
//            reslut.append(operation(item))
//        }
//        return reslut
//    }
//}
//let myoperation = {(item:Int) -> String in "You are number is \(item)"}
//print([23,43,5,7,4].myMap(myoperation))






//func genericMap<T,U>(_ inputData:[T], _ operation:((T)->U))->[U]{
//    var result = [U]()
//    for item in inputData{
//        result.append(operation(item))
//    }
//    return result
//}
//
//let operationClosure = { (item:Int)->String in return "your number is \(item)"}
//let another:(Int)->String = {"dfdf \($0)"}
//print(genericMap([2,3,4,4,5], operationClosure))





//extension Array{
//
//    func myOwnFilter(operation:(Element)->Bool)->[Element]{
//
//        var resultList = [Element]()
//
//        for item in self{
//            if operation(item){
//                resultList.append(item)
//            }
//        }
//        return resultList
//    }
//}
//print(Array(0...100).myOwnFilter(operation:{$0 > 92}))
//








//func customFilter<T>(recentGrades:[T],operation:(T)->Bool)->[T]{
//    var filterdGrades = [T]()
//
//    for item in recentGrades{
//        if operation(item){
//            filterdGrades.append(item)
//        }else{
//            print("Not the grade i want")
//        }
//    }
//    return filterdGrades
//}
//
//
//let filterOperation = {(item:String)->Bool in return item == "A"}
//let gradeList = ["A","B","B","C","A","A"]
//print(customFilter(recentGrades: gradeList, operation: filterOperation))
//
//let anotherFilter = {(item:Int)->Bool in item == 3}
//let numList = [2,4,5,2,1,2,3,4,53,3,3]
//print(customFilter(recentGrades: numList, operation: anotherFilter))






//let test = ["A","A","B","C","A"]
//
//print(test.filter{$0 == "A"})



//
//func newfunc(closure:@autoclosure ()->(String)){
//    if closure().count>0{
//        print("YEah")
//    }else{
//        print("No...")
//    }
//}
//newfunc(closure: "")



//class MyClass{
//    var name:String = "Vinayaka"
//
//    var closureBlocks:[(String)->String] = []
//    func appendfunc(closures:@escaping (String)->String){
//        closureBlocks.append(closures)
//    }
//
//    deinit {
//        print("Im gone")
//    }
//}
//var ref:MyClass? = MyClass()
//ref?.appendfunc { (item:String) in return "Hi \(item),\(ref?.name)"}
//print(ref?.closureBlocks[0]("Ganesha"))
//ref = nil







//class Person{
//    var card:CreditCard?
//    deinit {
//        print("Person Deallocated")
//    }
//}
//class CreditCard{
//    weak var person:Person?
//    init(enterowner:Person) {
//        self.person = enterowner
//    }
//    deinit {
//        print("credit card deaalocated.")
//    }
//}
//var peroson:Person? = Person()
//var mycard:CreditCard? = CreditCard(enterowner: peroson!)
//peroson?.card = mycard
//peroson = nil
//mycard = nil




//class Myclass{
//
//    var closure:(()->())?
//
//    let name:String
//
//    init() {
//        name = "Ganesha"
//        closure = { [weak self] in
//            print("I printed \(self?.name)")
//        }
//
//    }
//    deinit{
//        print("myclass deallocated.")
//    }
//
//}
//
//
//var myclass:Myclass? = Myclass()
//myclass = nil
//myclass?.closure?()






