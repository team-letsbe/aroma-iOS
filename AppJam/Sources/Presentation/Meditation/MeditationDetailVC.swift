import UIKit
import SnapKit
import Then

final class MeditationDetailVC: BaseVC {
    
    private let detailImageView = UIImageView().then {
        $0.image = UIImage(named: "BreathMeditation")
    }
    
    private let detailScrollView = UIScrollView()
    private let detailTextView = UITextView().then {
        $0.text = """
호흡명상\n
모든 명상 실습은 호흡과 몸을 연결하는 것부터 시작됩니다.몸을 안정시키는 것은 마음을 고요히 하는데 큰 도움이 됩니다. 따라서 명상을 시작할 때 가장 먼저 해야 할 일은 몸을 잘 알아차릴 수 있도록 안정되고 편안한 자세를 유지하는 것입니다.마음의 준비가 되었다면 몸의 모든 근육을 이완하고 앉거나 눕습니다. 척추를 똑바로 세우되 몸의 긴장을 내려놓습니다. 손은 무릎 위에 가볍게 올려놓고 두 발바닥은 바닥에 가지런히 놓습니다. 눈은 가볍게 감습니다. 눈을 뜨는 것이 편하면 가볍게 떠도 괜찮습니다. 앉아있는 동안 너무 애쓰지 말아 주세요. 몸의 편안하고 안정된 자세는 마음을 고요히 하는 데 도움을 줍니다. 바닥에 앉을 경우 몸에 맞는 방석을 사용하면 편안히 앉을 수 있습니다.먼저 자신의 호흡에 주의를 둔다는 것을 기억하세요. 그리고 숨을 한 번 크게 들이쉬고 내쉽니다. 이것을 3회 반복합니다. 이제 자연스러운 호흡으로 돌아옵니다. ‘내가 이렇게 숨을 들이쉬고 내쉬고 있구나’ 그저 숨 쉬고 있음을 알면 됩니다. 그런 다음 간단 호흡명상으로 세 번의 호흡을 실습합니다. 먼저 첫 호흡을 하면서 숨을 깊이 들이쉬고 내쉽니다. 이때 숨이 들어오고 나가는 것을 바라봅니다. 몸이 호흡하는 것을 바라봅니다. 이제 두 번째 호흡을 깊이 하면서 숨이 들어오고 나가는 것을 바라봅니다. 혹 몸에 긴장감이 있다면 내쉬는 숨을 조금 더 길게 하며 긴장을 내려놓습니다. 마지막 깊은 세 번째 호흡을 하면서 들이쉬는 숨과 내쉬는 숨을 있는 그대로 바라봅니다. 이제 잠시 그대로 머물러 있다가 준비가 되었다면 천천히 눈을 뜹니다.
"""
        $0.textColor = UIColor(hexCode: "FFFFFF")
        $0.backgroundColor = .clear
        $0.font = .gmarket(size: 20, family: .bold)
    }
    
    private let speakerButton = UIButton().then {
        $0.setImage(UIImage(named: "SpeakerButton"), for: .normal)
    }
    
    override func addViews() {
        view.addSubviews(detailScrollView, speakerButton)
        
        [detailImageView, detailTextView].forEach {
            detailScrollView.addSubview($0)
        }
    }
    
    override func setup() {
        self.navigationItem.title = ""
        self.navigationItem.hidesBackButton = true
    }
    
    override func setLayout() {
        detailImageView.snp.makeConstraints {
            $0.top.equalTo(detailScrollView).inset(38)
            $0.centerX.equalTo(self.view.safeAreaLayoutGuide)
        }
        
        detailScrollView.snp.makeConstraints {
            $0.top.equalTo(self.view.safeAreaLayoutGuide)
            $0.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(48)
            $0.height.equalTo(510)
        }
        
        speakerButton.snp.makeConstraints {
            $0.centerX.equalTo(self.view.safeAreaLayoutGuide).inset(157)
            $0.bottom.equalTo(self.view.safeAreaLayoutGuide).inset(44)
        }
        
        detailTextView.snp.makeConstraints {
            $0.top.equalTo(detailImageView.snp.bottom).offset(79)
            $0.leading.trailing.equalTo(detailScrollView.safeAreaLayoutGuide)
            $0.bottom.equalTo(speakerButton.snp.top).inset(39)
        }
    }
}
