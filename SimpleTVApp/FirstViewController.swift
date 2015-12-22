//
//  FirstViewController.swift
//  SimpleTVApp
//
//  Created by 大坪五郎 on 2015/12/18.
//  Copyright © 2015年 Next Inc. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    let firstButton = UIButton(type: .System)
    let secondButton = UIButton(type: .System)
//　以下コメントを外すと、TabBarタップ時にsecondButtonにフォーカスが当たる
//    override weak var preferredFocusedView: UIView? {
//        return secondButton
//    }


    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.redColor()
        firstButton.setTitle("First", forState: .Normal)
        secondButton.setTitle("Second", forState: .Normal)
        
        let btWidth = 300
        let btHeight = 80
        
        firstButton.frame = CGRect(x:400,y:150,width:btWidth,height:btHeight)
        secondButton.frame = CGRect(x:400,y:350,width:btWidth,height:btHeight)
        
        self.view.addSubview(firstButton)
        self.view.addSubview(secondButton)

    }



    override func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator) {
        super.didUpdateFocusInContext(context, withAnimationCoordinator: coordinator)
        
        guard let nextFocusView = context.nextFocusedView else{
            return
        }
        
        guard let prevFocusView = context.previouslyFocusedView else{
            
            return
        }
        
        print("prev:\(prevFocusView.dynamicType) ->nextFocus:\(nextFocusView.dynamicType) ")
    }
}
