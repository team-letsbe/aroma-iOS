import UIKit

extension UIFont {
    enum Family: String {
        case bold = "Bold",
             light = "Light",
             medium = "Medium"
    }
    
    static func gmarket(size: CGFloat, family: Family) -> UIFont! {
        return UIFont(name: "GmarketSans\(family.rawValue)", size: size)
    }
}
