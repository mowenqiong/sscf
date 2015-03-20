//
//  TransRecordViewController.swift
//  盛世财富
//
//  Created by zengchang on 15-3-17.
//  Copyright (c) 2015年 sscf88. All rights reserved.
//

import Foundation
import UIKit

//交易密码
class TradePasswordViewController: UIViewController,UITextFieldDelegate {
    //标识执行的操作
    var flag:String!
    //修改交易密码
    @IBOutlet weak var oldPasswordLabel: UITextField!
    @IBOutlet weak var newPasswordLabel: UITextField!
    @IBOutlet weak var surePasswordLabel: UITextField!
    @IBAction func updatePwdSureTapped(sender: AnyObject) {
        //修改密码确定按钮点击事件
        println("update")
    }
    
    //设置交易密码
    @IBOutlet weak var firstPasswordLabel: UITextField!
    @IBOutlet weak var secondPasswordLabel: UITextField!
    @IBAction func setPwdSureTapped(sender: AnyObject) {
        //设置密码确定按钮点击事件
        println("set")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        oldPasswordLabel.delegate = self
        newPasswordLabel.delegate = self
        surePasswordLabel.delegate = self
        firstPasswordLabel.delegate = self
        secondPasswordLabel.delegate = self
        
        var updateView:UIView = self.view.viewWithTag(1) as UIView!
        var setView : UIView = self.view.viewWithTag(2) as UIView!
        if flag == "未设置" {
            //设置密码，显示设置，隐藏修改
            // ?????? 设置密码view出现不了？？？
            updateView.hidden = true
            setView.hidden = false
            self.navigationItem.title = "设置交易密码"
            self.title = "设置交易密码"
        }else {
            //修改密码，显示修改，隐藏设置
            updateView.hidden = false
            setView.hidden = true
            navigationItem.title = "修改交易密码"
            self.title = "修改交易密码"
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func returnTapped(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    //隐藏键盘
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        oldPasswordLabel.resignFirstResponder()
        newPasswordLabel.resignFirstResponder()
        surePasswordLabel.resignFirstResponder()
        firstPasswordLabel.resignFirstResponder()
        secondPasswordLabel.resignFirstResponder()
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        oldPasswordLabel.resignFirstResponder()
        newPasswordLabel.resignFirstResponder()
        surePasswordLabel.resignFirstResponder()
        firstPasswordLabel.resignFirstResponder()
        secondPasswordLabel.resignFirstResponder()
        return true
    }
}