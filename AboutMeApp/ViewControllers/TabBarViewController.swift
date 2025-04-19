//
//  TabBarViewController.swift
//  AboutMeApp
//
//  Created by serj on 19.04.2025.
//

import UIKit

final class TabBarViewController: UITabBarController {
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
       tabBar.items?.last?.title = user.person.fullName
        transferData()
    }
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? HelloViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let userInfoVC = navigationVC.topViewController as? UserInfoViewController
                userInfoVC?.user = user
            }
        }
    }

    

}
