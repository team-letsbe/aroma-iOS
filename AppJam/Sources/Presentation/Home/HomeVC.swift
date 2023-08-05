import UIKit
import SnapKit
import Then

final class HomeVC: BaseVC {
    private let wiseSayingView = UIView().then {
        $0.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2)
        $0.layer.cornerRadius = 15
        $0.layer.borderColor = UIColor(hexCode: "FFFFFF").cgColor
        $0.layer.borderWidth = 1
    }
    
    private let helloLabel = UILabel().then {
        $0.text = "지은님, \n제가 멋진 말을 가져왔어요 😎"
        $0.numberOfLines = 2
        $0.textColor = UIColor(hexCode: "FFFFFF")
        $0.font = .gmarket(size: 24, family: .medium)
    }
    
    private let wiseSayingLabel = UILabel().then {
        $0.text = "명언 내용을 입력해주세요"
        $0.textColor = UIColor(hexCode: "FFFFFF")
        $0.font = .gmarket(size: 18, family: .medium)
    }
    
    private let wiseSayingAt = UILabel().then {
        $0.text = "-OOO-"
        $0.textColor = UIColor(hexCode: "FFFFFF")
        $0.font = .gmarket(size: 17, family: .medium)
    }
    
    private let memoLabel = UILabel().then {
        $0.text = "소중한 순간들을 메모해봐요."
        $0.textColor = UIColor(hexCode: "FFFFFF")
        $0.font = .gmarket(size: 18, family: .medium)
    }
    
    private let calenderButton = UIButton().then {
        $0.setImage(UIImage(named: "Calender"), for: .normal)
        $0.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    override func addViews() {
        view.addSubviews(helloLabel, wiseSayingView, memoLabel, calenderButton)
        wiseSayingView.addSubviews(wiseSayingLabel, wiseSayingAt)
    }
    
    @objc func didTapButton() {
        let popUpVC = DailyPopUpVC(title: "타이틀", desc: "디스크립션")
        popUpVC.modalPresentationStyle = .overFullScreen
        self.present(popUpVC, animated: false)
    }
    
    override func setLayout() {
        helloLabel.snp.makeConstraints {
            $0.leading.equalTo(self.view.safeAreaLayoutGuide).inset(20)
            $0.top.equalTo(self.view.safeAreaLayoutGuide).inset(71)
        }
        
        wiseSayingView.snp.makeConstraints {
            $0.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(14)
            $0.top.equalTo(helloLabel.snp.bottom).offset(19)
            $0.height.equalTo(82)
        }
        
        wiseSayingLabel.snp.makeConstraints {
            $0.leading.equalTo(wiseSayingView).inset(77)
            $0.top.equalTo(wiseSayingView).inset(18)
        }
        
        wiseSayingAt.snp.makeConstraints {
            $0.top.equalTo(wiseSayingLabel.snp.bottom).offset(18)
            $0.leading.equalTo(wiseSayingView).inset(150)
        }
        
        memoLabel.snp.makeConstraints {
            $0.top.equalTo(wiseSayingView.snp.bottom).offset(44)
            $0.leading.equalTo(41)
        }
        
        calenderButton.snp.makeConstraints {
            $0.top.equalTo(memoLabel.snp.bottom).offset(39)
            $0.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(41)
            $0.width.equalTo(308)
            $0.height.equalTo(321)
        }
    }
}
