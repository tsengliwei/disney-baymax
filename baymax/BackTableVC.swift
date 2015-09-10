//
//  BackTableVC.swift
//  baymax
//
//  Created by Li-Wei Tseng on 8/30/15.
//  Copyright (c) 2015 liwei. All rights reserved.
//

import Foundation

class BackTableVC: UITableViewController {
    
    var TableArray = [String]()
    
    override func viewDidLoad() {
        TableArray = ["Dashboard", "Events", "Menu"]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(TableArray[indexPath.row], forIndexPath: indexPath) as! UITableViewCell

        let attriString = NSAttributedString(string:TableArray[indexPath.row], attributes:
            [NSForegroundColorAttributeName: UIColor.whiteColor(), NSFontAttributeName: UIFont(name: "Helvetica-Bold", size: 20.0)! ])
        
        cell.textLabel?.attributedText = attriString
        return cell
    }
}