import UIKit

final class RecommendSongVC: BaseVC {
    private let musicImageView = UIImageView().then {
        $0.image = UIImage(named: "musicView")
    }
    
    override func addViews() {
        view.addSubview(musicImageView)
    }
    
    override func setLayout() {
        musicImageView.snp.makeConstraints {
            $0.edges.equalTo(self.view.safeAreaLayoutGuide)
        }
    }
}
