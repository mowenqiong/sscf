//
//  PersonCenterViewController.swift
//  盛世财富
//
//  Created by zengchang on 15-3-15.
//  Copyright (c) 2015年 sscf88. All rights reserved.
//

import UIKit

class PersonCenterViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

//    required init(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    @IBOutlet weak var tableView: UITableView!
    
    var recordsButton:UIButton!
    var searchButton:UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        recordsButton = UIButton(frame: CGRect(x: 10, y: 10, width: 100, height: 30))
        recordsButton.setTitle("交易记录", forState: UIControlState.Normal)
        recordsButton.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1), forState: UIControlState.Normal)
        
        searchButton = UIButton(frame: CGRect(x: 170, y: 10, width: 100, height: 30))
        searchButton.setTitle("回账查询", forState: UIControlState.Normal)
        searchButton.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1), forState: UIControlState.Normal)
        
//        recordsButton.addTarget(self, action: "recordTapped:", forControlEvents: UIControlEvents.TouchUpInside)
//        searchButton.addTarget(self, action: "searchTapped:", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func recordTapped(sender:AnyObject){
        println("你点击了记录")
    }
    func searchButton(sender:AnyObject){
        println("你点击了查询")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    //每一组的行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        //其中section代表组
        if section.hashValue == 0 {
            return 2
        }else if section.hashValue == 1 {
            return 4
        }else {
            return 2
        }
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = self.tableView.dequeueReusableCellWithIdentifier("moneyCell") as UITableViewCell
        
        if indexPath.section == 0 {
            if indexPath.row == 0{
                //init(x: Int, y: Int, width: Int, height: Int)
                var image:UIImageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
                image.image = UIImage(named: "aaa.jpg")
                var nameLabel = UILabel(frame: CGRect(x: 130, y: 10, width: 50, height: 20))
                nameLabel.text = "姓名"
                var phoneLabel = UILabel(frame: CGRect(x: 130, y: 30, width: 50, height: 20))
                phoneLabel.text = "电话"
                
                cell.addSubview(image)
                cell.addSubview(nameLabel)
                cell.addSubview(phoneLabel)
            }else{
                
                
                cell.addSubview(recordsButton)
                cell.addSubview(searchButton)
            }
        }else if indexPath.section == 1 {
            if indexPath.row == 0{
                var moneyLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 100, height: 20))
                moneyLabel.text = "资金管理"
                var phoneLabel = UILabel(frame: CGRect(x: 200, y: 10, width: 150, height: 20))
                phoneLabel.text = "可用金额0.00元"
                cell.addSubview(moneyLabel)
                cell.addSubview(phoneLabel)
            }else if indexPath.row == 1{
                var moneyLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 100, height: 20))
                moneyLabel.text = "理财管理"
                cell.addSubview(moneyLabel)
            }else if indexPath.row == 1{
                var moneyLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 150, height: 20))
                moneyLabel.text = "我的银行卡"
                var phoneLabel = UILabel(frame: CGRect(x: 200, y: 10, width: 50, height: 20))
                phoneLabel.text = "0张"
                cell.addSubview(moneyLabel)
                cell.addSubview(phoneLabel)
            }else{
                var moneyLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 80, height: 20))
                moneyLabel.text = "优惠券"
                var phoneLabel = UILabel(frame: CGRect(x: 200, y: 10, width: 50, height: 20))
                phoneLabel.text = "0张"
                cell.addSubview(moneyLabel)
                cell.addSubview(phoneLabel)
            }
        }else{
            if indexPath.row == 0{
                var moneyLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 100, height: 20))
                moneyLabel.text = "账户安全"
                var phoneLabel = UILabel(frame: CGRect(x: 200, y: 10, width: 150, height: 20))
                phoneLabel.text = "安全等级 高 "
                cell.addSubview(moneyLabel)
                cell.addSubview(phoneLabel)
            }else{
                var moneyLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 100, height: 20))
                moneyLabel.text = "手势密码"
                var phoneLabel = UILabel(frame: CGRect(x: 200, y: 10, width: 200, height: 20))
                phoneLabel.text = "已设置，点击修改"
                cell.addSubview(moneyLabel)
                cell.addSubview(phoneLabel)
            }
        }
        
        return cell
    }
    
    //总组数
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    //每一行的高度
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        if indexPath.section == 0 {
            if indexPath.row == 0{
                return 70
            }
        }
        return 50
    }
    
    //设置标题
//    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?{
//        if section.hashValue == 0 {
//            return "个人中心"
//        }else if section.hashValue == 1{
//            return "资金管理"
//        }else{
//            return "账户安全"
//        }
//    }
    
    //Mark detail
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //每一组的索引
        var section:Int =  (self.tableView.indexPathForSelectedRow()?.section)!
        //每一行的索引
        var row:Int = (self.tableView.indexPathForSelectedRow()?.row)!
        var detailViewController:DetailViewController = segue.destinationViewController as DetailViewController
        //此处执行传值操作
        var topTitle:String!
        
        switch section {
        case 0 :
            if row == 0{
                topTitle = "账户"
            }else{
                topTitle = "记录查询"
            }
        case 1 :
            if row == 0 {
                topTitle = "资金管理"
            }else if row == 1{
                topTitle = "理财管理"
            }else if row == 2{
                topTitle = "我的银行卡"
            }else{
                topTitle = "优惠券"
            }
        case 2 :
            if row == 0{
                topTitle = "账户安全"
            }else{
                topTitle = "手势密码"
            }
        default:
            topTitle = nil
        }
        
        detailViewController.topTitle = topTitle
    }
}

