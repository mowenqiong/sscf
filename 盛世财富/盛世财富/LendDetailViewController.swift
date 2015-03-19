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
    @IBOutlet weak var btmBar: UIToolbar!
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
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell!
        
        switch indexPath.row {
        case 0:
            cell = self.mainTable.dequeueReusableCellWithIdentifier("bidDetail") as UITableViewCell
            
        case 1:
            cell = self.mainTable.dequeueReusableCellWithIdentifier("bidIntroduce") as UITableViewCell
        case 2:
            
            cell = self.mainTable.dequeueReusableCellWithIdentifier("bidProtocol") as UITableViewCell
        case 3:
            cell = self.mainTable.dequeueReusableCellWithIdentifier("userInfo") as UITableViewCell
        case 4:
            cell = self.mainTable.dequeueReusableCellWithIdentifier("creditProfile") as UITableViewCell
        default: cell = nil
        }
        return cell
        
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        var val = indexPath.section.hashValue
        var row = indexPath.row
        if row == 1{
            return 230
        }
        if row == 2{
            return 30
        }
        return 130
    }
    
    
}

