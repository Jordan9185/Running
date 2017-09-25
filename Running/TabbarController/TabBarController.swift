//
//  TabBarController.swift
//  Running
//
//  Created by JordanLin on 2017/9/22.
//  Copyright © 2017年 nicklee. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpMainNavigationController()
    }
    
    func setUpMainNavigationController() {
        
        let mainNavigationController = NavigationController(tabBarItemType: .main)
        
        addChildViewController(mainNavigationController)
        
    }

}
