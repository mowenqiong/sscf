//
//  ViewController.swift
//  12App
//
//  Created by zengchang on 15-2-27.
//  Copyright (c) 2015年 zengchang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var birthday: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        println(123)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sureClick(sender: AnyObject) {
        //点击确定按钮触发的事件
        //获取用户输入的数字，并将其转换为Int类型
        var year:Int?=birthday.text.toInt();
        var imageNumber:Int;
        if year != nil {
            switch(year!){
            case 1:
                imageNumber=0;
                break;
            case 2:
                imageNumber=1;
                break;
            case 3:
                imageNumber=2;
                break;
            case 4:
                imageNumber=3;
                break;
            default:
                imageNumber=4;
                break;
            }
            image.image=UIImage(named: String(imageNumber)+".jpg");
        }else{
            println("请输入年份！！");
        }
    }

}

