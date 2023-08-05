import UIKit
import SnapKit
import Then

class BaseVC: UIViewController {
    
    let tabBarView = CustomTabBar(tabItems: [.home, .chat, .my])
    let bound = UIScreen().bounds
    let backgroundLayer = CAGradientLayer()
    let colors: [CGColor] = [
        UIColor(hexCode: "4C2190").cgColor, UIColor(hexCode: "000000").cgColor
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundLayer.frame = view.bounds
        backgroundLayer.colors = colors
        backgroundLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        backgroundLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
        
        self.view.layer.addSublayer(backgroundLayer)
        
        setup()
        addViews()
        setLayout()
        setTabbar()
    }
    
    func setLayout() {}
    func setup() {}
    func addViews() {}
    func setTabbar() {
        view.addSubview(tabBarView)
        
        tabBarView.snp.makeConstraints {
            $0.leading.trailing.bottom.equalTo(view.safeAreaLayoutGuide)
            $0.height.equalTo(79)
        }
    }
}
