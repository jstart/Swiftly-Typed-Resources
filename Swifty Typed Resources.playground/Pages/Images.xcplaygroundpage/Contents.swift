//: [Previous](@previous)
import UIKit
//: Images
enum Icons : String {
    case Error = "Error_Icon"
    case Success = "Success_Icon"
    case Twitter = "Twitter_Icon"
    case Facebook = "Facebook_Icon"
    var image : UIImage {
        return UIImage(named: rawValue)!
    }
}
Icons.Error.image
Icons.Success.image
Icons.Twitter.image
Icons.Facebook.image

//: [Next](@next)
