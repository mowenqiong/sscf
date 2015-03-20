//
//  TransRecordViewController.swift
//  盛世财富
//
//  Created by zengchang on 15-3-17.
//  Copyright (c) 2015年 sscf88. All rights reserved.
//

import Foundation
import UIKit

//手机绑定
class BindPhoneViewController: UIViewController {
    //标识执行的操作
    var flag:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        var updateView:UIView = self.view.viewWithTag(1) as UIView!
        var setView : UIView = self.view.viewWithTag(2) as UIView!
        if flag == "未设置" {
            updateView.hidden = false
            setView.hidden = true
            navigationItem.title = "绑定手机号"
        }else {
            updateView.hidden = true
            setView.hidden = false
            navigationItem.title = "修改绑定手机"
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func returnTapped(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}