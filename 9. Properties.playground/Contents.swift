import UIKit

struct Person {
    var firstName: String {
        didSet {
            print("\(oldValue) -> \(firstName)")
        }
    }
    var lastName: String
    
    lazy var isPopular: Bool = {
        if fullName == "Jay Park" {
            return true;
        } else {
            return false;
        }
    }()
    
    var fullName: String {
        get {
            return "\(firstName) \(lastName)"
        }
        set {
            // newValue = "Jay Park"
            if let firstName = newValue.components(separatedBy: " ").first {
                self.firstName = firstName
            }
            
            if let lastName = newValue.components(separatedBy: " ").last {
                self.lastName = lastName
            }
        }
    }
    
    static let isAlien: Bool = false
}

var person = Person(firstName: "Jun", lastName: "Kwon")

person.firstName
person.lastName

person.firstName = "Jason"
person.lastName = "Lee"
person.fullName = "Jay Park"

person.firstName
person.lastName

Person.isAlien
