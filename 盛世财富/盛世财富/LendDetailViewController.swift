//
//  LendDetailViewController.swift
//  盛世财富
//
//  Created by xiao on 15-3-17.
//  Copyright (c) 2015年 sscf88. All rights reserved.
//



import UIKit

class LendDetailViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{

    @IBOutlet weak var mainTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTable.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        if section.hashValue == 0 {
            return 1
        }else if section.hashValue == 1  {
            return 2
        }else if section.hashValue == 2  {
            return 1
        }else if section.hashValue == 3  {
            return 1
        }else if section.hashValue == 4  {
            return 1
        }else {
            return 0
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.mainTable.dequeueReusableCellWithIdentifier("list") as UITableViewCell
        
        return cell
        
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        var sec = indexPath.section.hashValue
        var row = indexPath.row
        switch sec {
        case 0:return 130
        case 1:
            if row == 0 {
                return 150
            }else {
                return 30
            }
        case 2:return 130
        case 3:return 130
        default:return 0
        }
//        return 150
    }

}

