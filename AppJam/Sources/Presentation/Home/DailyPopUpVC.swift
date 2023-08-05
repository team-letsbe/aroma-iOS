import UIKit
import SnapKit
import Then

final class DailyPopUpVC: BaseVC {
    private let popupView: DailyPopUpView
    
    init(title: String, desc: String) {
        self.popupView = DailyPopUpView(title: title, desc: desc)
        super.init(nibName: nil, bundle: nil)
        
        self.view.backgroundColor = .clear
        self.view.addSubview(self.popupView)
        self.popupView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) { fatalError() }
}
