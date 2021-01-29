import UIKit

// 12.2.3

let url = URL(string: "")

struct Version {
    let major: Int
    let minor: Int
    let patch: Int
    
    init?(string: String){
        let numbers = string.components(separatedBy: ".").compactMap({ Int($0)})
        
        guard numbers.count == 3 else {
            return nil
        }
        
        self.major = numbers[0]
        self.minor = numbers[1]
        self.patch = numbers[2]
    }
}

let version1 = Version(string: "a.b.c")
let version2 = Version(string: "32.12.17")
let version3 = Version(string: "32.12.17.54")

print(version1)
print(version2)
print(version3)
