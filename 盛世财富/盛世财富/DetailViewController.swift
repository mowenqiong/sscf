//
//  CalleryController.swift
//  BeautyCallery
//
//  Created by zengchang on 15-3-1.
//  Copyright (c) 2015年 zengchang. All rights reserved.
//
import UIKit

class DetailViewController:UIViewController {
    var topTitle:String!
    override func viewDidLoad() {
        navigationItem.title = topTitle
//      navigationItem.leftBarButtonItem?.title = "返回"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
