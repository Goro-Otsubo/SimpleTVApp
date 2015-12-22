//
//  MainTabBarController.swift
//  SimpleTVApp
//
//  Created by 大坪五郎 on 2015/12/14.
//  Copyright © 2015年 Next Inc. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    let firstViewController = FirstViewController(nibName: nil, bundle: nil)
    let secondViewController = SecondViewController()
    
    required override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstViewController.tabBarItem = UITabBarItem(title: "First Tab", image: nil, tag: 1)
        secondViewController.tabBarItem = UITabBarItem(title: "Second Tab", image: nil, tag: 2)
        
        // 配列をTabにセットします。
        self.setViewControllers([firstViewController,secondViewController], animated: false)
    }
    
    
}
