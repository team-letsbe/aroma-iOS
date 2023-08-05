import UIKit
import SnapKit
import Then

class BaseVC: UIViewController {
    
    let navi = UIStackView().then() {
        $0.axis = .horizontal
        $0.spacing = 6
    }
    
    let aroma = UILabel().then(){
        $0.text = "Aroma"
        $0.font = .gmarket(size: 24, family: .light)
        $0.textColor = UIColor(hexCode: "FFFFFF")
    }
    
    let aromaImage = UIImageView().then{
        $0.image = UIImage(named: "aroma")
    }
    
    let bound = UIScreen().bounds
    let backgroundLayer = CAGradientLayer()
    let colors: [CGColor] = [
        UIColor(hexCode: "4C2190").cgColor, UIColor(hexCode: "000000").cgColor
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navi.addArrangedSubview(aroma)
        navi.addArrangedSubview(aromaImage)
        
        backgroundLayer.frame = view.bounds
        backgroundLayer.colors = colors
        backgroundLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        backgroundLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
        
        self.view.layer.addSublayer(backgroundLayer)
        
        navigationItem.titleView = navi
        
        setup()
        addViews()
        setLayout()
    }
    
    func setLayout() {}
    func setup() {}
    func addViews() {}
}
