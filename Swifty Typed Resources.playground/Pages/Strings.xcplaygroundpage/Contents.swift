import UIKit
//: Strings
enum LoginStrings : String {
    case Hello = "HelloKey"
    case Goodbye = "GoodbyeKey"
    case Login = "LoginKey"
    case Register = "RegisterKey"
    
    var key : String {
        return rawValue
    }
}

enum TutorialStrings : String {
    case Help = "HelpKey"
    case CallSupport = "CallSupportKey"
    
    var key : String {
        return rawValue
    }
}

NSLocalizedString(LoginStrings.Hello.key, comment: "")
NSLocalizedString(TutorialStrings.Help.key, comment: "")

enum L10n {
    case AlertTitle
    case AlertMessage
    case Greetings(String, Int)
    case ApplesCount(Int)
    case BananasOwner(Int, String)
    case ObjectOwnership(Int, String, String)
}

extension L10n : CustomStringConvertible {
    var description : String { return self.string }
    
    var string : String {
        switch self {
        case .AlertTitle:
            return L10n.tr("alert_title")
        case .AlertMessage:
            return L10n.tr("alert_message")
        case .Greetings(let p0, let p1):
            return L10n.tr("greetings", p0, p1)
        case .ApplesCount(let p0):
            return L10n.tr("apples.count", p0)
        case .BananasOwner(let p0, let p1):
            return L10n.tr("bananas.owner", p0, p1)
        case .ObjectOwnership(let p0, let p1, let p2):
            return L10n.tr("object.ownership", p0, p1, p2)
        }
    }
    
    private static func tr(key: String, _ args: CVarArgType...) -> String {
        let format = NSLocalizedString(key, comment: "")
        return String(format: format, arguments: args)
    }
}

func tr(key: L10n) -> String {
    return key.string
}

let alertTitle = tr(.AlertTitle)
let hello1 = tr(.Greetings("David", 29))
let hello2 = L10n.Greetings("Olivier", 32) // Prints as a string in the console because it's CustomStringConvertibl

// note the inversion of parameters' order due to usage of %1$d, %2$@ and %1$@ in Localizable.strings
let orderedParams = tr(.ObjectOwnership(3, "Apples", "John"))
