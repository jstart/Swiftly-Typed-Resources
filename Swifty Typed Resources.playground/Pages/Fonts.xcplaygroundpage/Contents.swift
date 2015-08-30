//: [Previous](@previous)
import UIKit
//: Fonts
enum Fonts : String {
    case Title = "Helvetica, 30"
    case Body = "Helvetica, 12"
    case AlertTitle = "Georgia, 20"
    
    var font : UIFont {
        var strings = rawValue.componentsSeparatedByString(", ")
        let size = Int(strings[1])!
        
        return UIFont(name: strings[0], size: CGFloat(size))!
    }
}

var label = UILabel(frame: CGRectMake(0, 0, 200, 35))
label.font = Fonts.Title.font
label.textColor = UIColor.whiteColor()
label.text = "Title Text"
var bodyLabel = UILabel(frame: CGRectMake(0, 0, 200, 35))
label.font = Fonts.Body.font
label.textColor = UIColor.whiteColor()
label.text = "Body Text"

//: [Next](@next)
