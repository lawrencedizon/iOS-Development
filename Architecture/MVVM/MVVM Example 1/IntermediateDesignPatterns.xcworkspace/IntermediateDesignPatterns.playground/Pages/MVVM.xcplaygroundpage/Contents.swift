/*:
 [Previous](@previous)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Next](@next)
 
 # Model-View-ViewModel (MVVM)
 - - - - - - - - - -
 ![MVVM Diagram](MVVM_Diagram.png)
 
 The Model-View-ViewModel (MVVM) pattern separates objects into three types: models, views and view-models.
 
 - **Models** hold onto application data. They are usually structs or simple classes.
 - **View-models** convert models into a format that views can use.
 - **Views** display visual elements and controls on screen. They are usually subclasses of `UIView`.
 
 ## Code Example
 */
import PlaygroundSupport
import UIKit

// MARK: - Model

public class Pet {
    public enum Rarity {
        case common
        case uncommon
        case rare
        case veryRare
    }
    
    public let name: String
    public let birthday: Date // We won't display this
    public let rarity: Rarity // We won't display this
    public let image: UIImage
    
    public init(name: String, birthday: Date, rarity: Rarity, image: UIImage){
        self.name = name
        self.birthday = birthday
        self.rarity = rarity
        self.image = image
    }
}

// MARK: - ViewModel

public class ViewModel{
    
    // 1
    private let pet: Pet
    private let calendar: Calendar
    
    public init(pet: Pet){
        self.pet = pet
        self.calendar = Calendar(identifier: .gregorian)
    }
    
    // 2
    public var name: String {
        return pet.name
    }
    
    public var image: UIImage {
        return pet.image
    }
    
    // 3
    public var ageText: String {
        let today = calendar.startOfDay(for: Date())
        let birthday = calendar.startOfDay(for: pet.birthday)
        let components = calendar.dateComponents([.year], from: birthday, to: today)
        
        let age = components.year!
        return "\(age) years old"
    }
    
    // 4
    
    public var adoptionFeeText: String {
        switch pet.rarity {
        case .common:
            return "$50.00"
        case .uncommon:
            return "$75.00"
        case .rare:
            return "$150.00"
        case .veryRare:
            return "$500.00"
        }
    }
}

