import UIKit
import SnapKit
import Then

final class MeditationVC: BaseVC {
    
    private let mediImageView = UIImageView().then {
        $0.tintColor = UIColor(hexCode: "FFFFFF")
        $0.image = UIImage(named: "Meditation")?.withRenderingMode(.alwaysTemplate)
    }
    
    private let hiLabel = UILabel().then {
        $0.textColor = UIColor(hexCode: "FFFFFF")
        $0.text = "어서오세요 지은님,\n원하시는 명상을 선택해 주세요."
        $0.numberOfLines = 2
        $0.font = UIFont(name: "BMJUA_otf", size: 22)
        $0.textAlignment = .center
    }
    
    private let breathButton = UIButton().then {
        $0.setImage(UIImage(named: "Breath"), for: .normal)
        $0.contentVerticalAlignment = .fill
        $0.contentHorizontalAlignment = .fill
        $0.largeContentImageInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        $0.addTarget(self, action: #selector(tapMeditationBtn), for: .touchUpInside)
    }
    
    private let concentrationButton = UIButton().then {
        $0.setImage(UIImage(named: "Concentration"), for: .normal)
        $0.contentVerticalAlignment = .fill
        $0.contentHorizontalAlignment = .fill
        $0.largeContentImageInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        $0.addTarget(self, action: #selector(tapMeditationBtn), for: .touchUpInside)
    }
    
    private let walkButton = UIButton().then {
        $0.setImage(UIImage(named: "Walk"), for: .normal)
        $0.contentVerticalAlignment = .fill
        $0.contentHorizontalAlignment = .fill
        $0.largeContentImageInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        $0.addTarget(self, action: #selector(tapMeditationBtn), for: .touchUpInside)
    }
    
    private let heartButton = UIButton().then {
        $0.setImage(UIImage(named: "Heart"), for: .normal)
        $0.contentVerticalAlignment = .fill
        $0.contentHorizontalAlignment = .fill
        $0.largeContentImageInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        $0.addTarget(self, action: #selector(tapMeditationBtn), for: .touchUpInside)
    }
    
    override func setup() {
        self.navigationItem.title = ""
    }
    
    override func addViews() {
        view.addSubviews(mediImageView, hiLabel, breathButton, concentrationButton, walkButton, heartButton)
    }
    
    @objc func tapMeditationBtn(_ sender: UIButton) {
        let vc = MeditationDetailVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func setLayout() {
        mediImageView.snp.makeConstraints {
            $0.top.equalTo(self.view.safeAreaLayoutGuide).inset(35)
            $0.centerX.equalTo(self.view.safeAreaLayoutGuide)
            $0.size.equalTo(72)
        }
        
        hiLabel.snp.makeConstraints {
            $0.top.equalTo(mediImageView.snp.bottom).offset(14)
            $0.centerX.equalTo(self.view.safeAreaLayoutGuide)
        }
        
        breathButton.snp.makeConstraints{
            $0.top.equalTo(hiLabel.snp.bottom).offset(70)
            $0.leading.equalTo(self.view.safeAreaLayoutGuide).inset(21)
            $0.width.equalTo(163)
            $0.height.equalTo(196)
        }
        
        concentrationButton.snp.makeConstraints {
            $0.top.equalTo(hiLabel.snp.bottom).offset(70)
            $0.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(21)
            $0.width.equalTo(163)
            $0.height.equalTo(196)
        }
        
        walkButton.snp.makeConstraints {
            $0.top.equalTo(breathButton.snp.bottom).offset(26)
            $0.leading.equalTo(self.view.safeAreaLayoutGuide).inset(21)
            $0.width.equalTo(163)
            $0.height.equalTo(196)
        }
        
        heartButton.snp.makeConstraints {
            $0.top.equalTo(concentrationButton.snp.bottom).offset(26)
            $0.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(21)
            $0.width.equalTo(163)
            $0.height.equalTo(196)
        }
    }
}
