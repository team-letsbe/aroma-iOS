import UIKit

final class LoginVC: BaseVC {
    private let aromaImageView = UIImageView().then{
        $0.image = UIImage(named: "aroma")
    }
    
    private let aromaLabel = UILabel().then {
        $0.text = "Aroma"
        $0.textColor = .white
        $0.font = .gmarket(size: 38, family: .light)
    }
    
    private let nameLabel = UILabel().then {
        $0.text = "성함"
        $0.textColor = .white
        $0.font = .gmarket(size: 16, family: .light)
    }
    
    private let nameTextField = UITextField().then {
        $0.placeholder = "성함을 입력하세요."
        $0.font = .gmarket(size: 14, family: .light)
        $0.backgroundColor = .white
        $0.layer.cornerRadius = 16
        $0.layer.borderColor = UIColor(hexCode: "C147E9").cgColor
        $0.layer.borderWidth = 2
        $0.leftViewMode = .always
        $0.addLeftPadding()
    }
    
    private let startButton = UIButton().then {
        $0.setTitle("시작하기", for: .normal)
        $0.titleLabel?.font = .gmarket(size: 22, family: .medium)
        $0.setTitleColor(UIColor(hexCode: "FFFFFF"), for: .normal)
        $0.layer.shadowColor = UIColor(hexCode: "FFFFFF").cgColor
        $0.layer.shadowOffset = CGSize(width: 2, height: 2)
        $0.layer.shadowOpacity = 0.8
        $0.layer.shadowRadius = 3
        $0.addTarget(self, action: #selector(tapStart), for: .touchUpInside)
    }
    
    @objc func tapStart() {
        let vc = CustomTabBarController()
        UIApplication.shared.windows.first?.rootViewController = vc
    }
    
    override func addViews() {
        view.addSubviews(aromaLabel, aromaImageView, nameLabel, nameTextField, startButton)
        
    }
    
    override func setLayout() {
        aromaImageView.snp.makeConstraints {
            $0.top.equalTo(self.view.safeAreaLayoutGuide).inset(169)
            $0.leading.equalTo(self.view.safeAreaLayoutGuide).inset(168)
            $0.size.equalTo(53)
        }
        
        aromaLabel.snp.makeConstraints {
            $0.top.equalTo(aromaImageView.snp.bottom).offset(11)
            $0.leading.equalTo(self.view.safeAreaLayoutGuide).inset(126)
        }
        
        nameLabel.snp.makeConstraints {
            $0.top.equalTo(aromaLabel.snp.bottom).offset(98)
            $0.leading.equalTo(self.view.safeAreaLayoutGuide).inset(82)
        }
        
        nameTextField.snp.makeConstraints {
            $0.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(65)
            $0.top.equalTo(nameLabel.snp.bottom).offset(7)
            $0.height.equalTo(47)
        }
        
        startButton.snp.makeConstraints {
            $0.top.equalTo(nameTextField.snp.bottom).offset(47)
            $0.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(152)
            $0.height.equalTo(25)
        }
        
    }
}

