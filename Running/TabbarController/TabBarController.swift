//
//  TabBarController.swift
//  Running
//
//  Created by JordanLin on 2017/9/22.
//  Copyright © 2017年 nicklee. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    let mainNavigationController = NavigationController(tabBarItemType: .main)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpMainNavigationController()
    }
    
    func setUpMainNavigationController() {
        
        addChildViewController(mainNavigationController)
        
    }

}
