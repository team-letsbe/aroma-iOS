import UIKit
import SnapKit
import Then

final class DailyPopUpVC: BaseVC {
    private let dailyTitle = UILabel().then {
        $0.text = "오늘은 무슨일이 있었나요?"
        $0.font = .gmarket(size: 24, family: .light)
        $0.textColor = UIColor(hexCode: "FFFFFF")
        $0.layer.shadowColor = UIColor(hexCode: "FFFFFF").cgColor
        $0.layer.shadowOffset = CGSize(width: 2, height: 2)
        $0.layer.shadowOpacity = 0.8
        $0.layer.shadowRadius = 3
    }
    
    private let popupView = UIView().then {
        $0.backgroundColor = UIColor(hexCode: "F9E5FF")
        $0.layer.cornerRadius = 14
        $0.clipsToBounds = true
    }
    private let emojiStackView = UIStackView().then {
        $0.axis = .horizontal
        $0.spacing = 19
    }
    private let dailyDate = UILabel().then {
        $0.text = "2023년 8월 6일(일)"
        $0.textColor = UIColor(hexCode: "000000")
        $0.font = .gmarket(size: 15, family: .light)
    }
    
    private let happyButton = UIButton().then {
        $0.setImage(UIImage(named: "Happy"), for: .normal)
        $0.addTarget(self, action: #selector(buttonClicked(sender:)), for: .touchUpInside)
    }
    
    private let tiredButton = UIButton().then {
        $0.setImage(UIImage(named: "tired"), for: .normal)
        $0.addTarget(self, action: #selector(buttonClicked(sender:)), for: .touchUpInside)
    }
    
    private let comportableButton = UIButton().then {
        $0.setImage(UIImage(named: "Comportable"), for: .normal)
        $0.addTarget(self, action: #selector(buttonClicked(sender:)), for: .touchUpInside)
    }
    
    private let sadButton = UIButton().then {
        $0.setImage(UIImage(named: "Sad"), for: .normal)
        $0.addTarget(self, action: #selector(buttonClicked(sender:)), for: .touchUpInside)
    }
    
    private let angryButton = UIButton().then {
        $0.setImage(UIImage(named: "angry"), for: .normal)
        $0.addTarget(self, action: #selector(buttonClicked(sender:)), for: .touchUpInside)
    }
    
    private let loveButton = UIButton().then {
        $0.setImage(UIImage(named: "Love"), for: .normal)
        $0.addTarget(self, action: #selector(buttonClicked(sender:)), for: .touchUpInside)
    }
    
    private let dailyTextField = UITextField().then {
        $0.placeholder = "내용을 입력해주세요..."
        $0.textColor = UIColor(hexCode: "818181")
    }
    
    @objc private func buttonClicked(sender: UIButton) {
        UIView.animate(withDuration: 0.2) {
            sender.transform = sender.transform.scaledBy(x: 1.5, y: 1.5)
        }
    }
    
    override func setup() {
        self.navigationItem.title = ""
        
    }
    
    override func addViews() {
        view.addSubviews(popupView, dailyDate, emojiStackView, dailyTextField, dailyTitle)
        
        [happyButton, tiredButton, comportableButton, sadButton, angryButton, loveButton].forEach {
            emojiStackView.addArrangedSubview($0)
        }
    }
    
    override func setLayout() {
        dailyTitle.snp.makeConstraints {
            $0.top.equalToSuperview().inset(170)
            $0.leading.equalTo(self.view.safeAreaLayoutGuide).inset(56)
        }
        
        popupView.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(27)
            $0.centerY.equalToSuperview()
            $0.height.equalTo(423)
        }
        
        dailyDate.snp.makeConstraints {
            $0.leading.top.equalTo(popupView).offset(23)
        }
        
        emojiStackView.snp.makeConstraints {
            $0.top.equalTo(dailyDate.snp.bottom).offset(31)
            $0.leading.equalTo(popupView).inset(33)
        }
        
        dailyTextField.snp.makeConstraints {
            $0.top.equalTo(emojiStackView.snp.bottom).offset(43)
            $0.leading.trailing.equalTo(popupView).inset(26)
        }
    }
}
