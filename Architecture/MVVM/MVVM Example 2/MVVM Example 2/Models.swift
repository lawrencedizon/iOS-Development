import Foundation
 
//MARK: - Model Layer

//The model has extra information that the view doesn't care to display such as Gender, address,birthDate, and middleName.

// The View-Model determines what gets displayed without needing to alter our model
enum Gender {
    case male, female, unspecified
}
struct Person {
    let name: String
    let birthDate: Date?
    let middleName: String?
    let address: String?
    let gender: Gender
    var userName = "Kanye West"


    init(name: String, birthDate: Date? = nil, middleName: String? = nil, address: String? = nil, gender: Gender = .unspecified ){
            self.name = name
            self.birthDate = birthDate
            self.middleName = middleName
            self.address = address
            self.gender = gender
    }
}
