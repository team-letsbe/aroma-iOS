import UIKit

final class MainVC: BaseVC {
    private let mainScrollView = UIScrollView()
    private let mainContentView = UIView()
    
    private let label = UILabel().then {
        $0.text = "나나나나"
        $0.backgroundColor = UIColor.black
    }
    
    override func addViews() {
        view.addSubviews(label)
    }
}
