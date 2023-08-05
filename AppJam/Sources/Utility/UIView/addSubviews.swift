import UIKit

extension UIView {
    func addSubviews(_ subview: UIView...) {
        subview.forEach(addSubview(_:))
    }
}
