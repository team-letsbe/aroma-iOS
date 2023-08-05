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
        $0.text = "지은님, \n제가 멋진 말을 가져왔어요. 😎"
        $0.numberOfLines = 2
        $0.textColor = UIColor(hexCode: "FFFFFF")
        $0.font = .gmarket(size: 24, family: .medium)
    }
    
    private let wiseSayingLabel = UILabel().then {
        $0.text = "\"실패란, 넘어지는 것이 아니라,\n넘어진 자리에 남는 것이다.\""
        $0.textColor = UIColor(hexCode: "FFFFFF")
        $0.font = .gmarket(size: 18, family: .medium)
        $0.numberOfLines = 2
        $0.textAlignment = .center

    }
    
    private let wiseSayingAt = UILabel().then {
        $0.text = "-도서’프린세스, 라 브라바’-"
        $0.textColor = UIColor(hexCode: "808080")
        $0.font = .gmarket(size: 15, family: .medium)
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
    
    @objc func didTapButton(_ sender: UIButton) {
        let vc = DailyPopUpVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func setLayout() {
        helloLabel.snp.makeConstraints {
            $0.leading.equalTo(self.view.safeAreaLayoutGuide).inset(20)
            $0.top.equalTo(self.view.safeAreaLayoutGuide).inset(50)
        }
        
        wiseSayingView.snp.makeConstraints {
            $0.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(14)
            $0.top.equalTo(helloLabel.snp.bottom).offset(19)
            $0.height.equalTo(105)
        }
        
        wiseSayingLabel.snp.makeConstraints {
            $0.leading.equalTo(wiseSayingView).inset(65)
            $0.top.equalTo(wiseSayingView).inset(23)
        }
        
        wiseSayingAt.snp.makeConstraints {
            $0.top.equalTo(wiseSayingLabel.snp.bottom).offset(18)
            $0.leading.equalTo(wiseSayingView).inset(95)
        }
        
        memoLabel.snp.makeConstraints {
            $0.top.equalTo(wiseSayingView.snp.bottom).offset(44)
            $0.leading.equalTo(41)
        }
        
        calenderButton.snp.makeConstraints {
            $0.top.equalTo(memoLabel.snp.bottom).offset(19)
            $0.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(41)
            $0.width.equalTo(308)
            $0.height.equalTo(321)
        }
    }
}
