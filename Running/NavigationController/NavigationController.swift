//
//  NavigationController.swift
//  Running
//
//  Created by JordanLin on 2017/9/22.
//  Copyright © 2017年 nicklee. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {
    
    // MARK: Init
    
    init(tabBarItemType: TabBarItemType) {
        
        super.init(nibName: nil, bundle: nil)
        
        prepare(for: tabBarItemType)
        
    }

    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
    }
    
    // MARK: View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: Prepare Item Type
    
    func prepare(for itemType: TabBarItemType) {
        
        switch itemType {
            
        case .main:
            
            addChildViewController(MainViewController())
            
            self.tabBarItem = UITabBarItem(title: "Map", image: nil, tag: 0)
            
        case .profile:
            
            self.tabBarItem = UITabBarItem(title: "Profile", image: nil, tag: 1)
            
        }

    }

}
