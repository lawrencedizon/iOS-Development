import UIKit

//View-Model - has all the information to render a view
struct  PersonFollowingTableViewCellViewModel {
    let name: String
    let userName: String
    var currentlyFollowing: Bool
    let image: UIImage?
    
    init(with model: Person){
        name = model.name
        userName = model.userName
        currentlyFollowing = false
        image = UIImage(systemName: "person")
    }
}
