//
//  AppDelegate.swift
//  SimpleTVApp
//
//  Created by 大坪五郎 on 2015/12/14.
//  Copyright © 2015年 Next Inc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window:UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        let tabBarCtrl = MainTabBarController(nibName: nil, bundle: nil)
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        self.window!.rootViewController = tabBarCtrl
        self.window!.makeKeyAndVisible()
        
        
        return true
    }
    
    
}
