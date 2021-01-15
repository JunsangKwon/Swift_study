import UIKit


struct PersonStruct {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    mutating func uppercastName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}


class PersonClass {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    func uppercastName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

var personStruct1 = PersonStruct(firstName: "John", lastName: "Kwon")
var personStruct2 = personStruct1

var personClass1 = PersonClass(firstName: "John", lastName: "Kwon")
var personClass2 = personClass1

personStruct2.firstName = "J"
personStruct1.firstName
personStruct2.firstName

personClass2.firstName = "J"
personClass1.firstName

personClass2 = PersonClass(firstName: "Bob", lastName: "Lee")
personClass1.firstName
personClass2.firstName


