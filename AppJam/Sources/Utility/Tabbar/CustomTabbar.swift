import UIKit

class CustomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBar.tintColor = UIColor(hexCode: "892CDC")
        self.tabBar.unselectedItemTintColor = UIColor(hexCode: "892CDC")
        
        let home = UINavigationController(rootViewController: HomeVC())
        home.tabBarItem.image = UIImage(named: "Home")
        home.tabBarItem.selectedImage = UIImage(named: "SelectedHome")
        
        let medi = UINavigationController(rootViewController: MeditationVC())
        medi.tabBarItem.image = UIImage(named: "Meditation")
        medi.tabBarItem.selectedImage = UIImage(named: "Meditation")
        
        let song = UINavigationController(rootViewController: RecommendSongVC())
        song.tabBarItem.image = UIImage(named: "Music")
        song.tabBarItem.selectedImage = UIImage(named: "SelectedMusic")
        viewControllers = [medi, home, song]
        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let desiredHeight: CGFloat = 90
        var tabBarFrame = tabBar.frame
        tabBarFrame.size.height = desiredHeight
        tabBarFrame.origin.y = view.frame.height - desiredHeight
        tabBar.frame = tabBarFrame
    }
}

extension UITabBar {
    override open func sizeThatFits(_ size: CGSize) -> CGSize {
    var sizeThatFits = super.sizeThatFits(size)
    sizeThatFits.height = 79
    return sizeThatFits
   }
}
