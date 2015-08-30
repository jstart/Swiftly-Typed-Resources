//: [Previous](@previous)
import UIKit
//: Colors

enum ColorGroup : Int {
    case Red = 0xf30808
    case Blue = 0x1b3fda
    case White = 0x000000
    var color : UIColor {
        let red = CGFloat((rawValue & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rawValue & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rawValue & 0x0000FF) / 255.0
        let alpha = CGFloat(1.0)
        return UIColor(red: red, green: blue, blue: green, alpha: alpha)
    }
}

var view = UIView(frame: CGRectMake(0, 0, 100, 100))
view.backgroundColor = ColorGroup.Red.color

//: [Next](@next)
