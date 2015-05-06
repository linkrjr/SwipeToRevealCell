//
//  ViewController.swift
//  SwipeToRevealCell
//
//  Created by Ronaldo Gomes on 6/05/2015.
//  Copyright (c) 2015 Technophile. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var content = ["Ronaldo", "Gomes", "Keila", "Duarte"]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.content.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! SwipeCell
        let foregroundCell = tableView.dequeueReusableCellWithIdentifier("ForegroundCell") as! UITableViewCell
        let backgroundCell = tableView.dequeueReusableCellWithIdentifier("BackgroundCell") as! UITableViewCell
        
        cell.foregroundCell = foregroundCell
        cell.backgroundCell = backgroundCell
        foregroundCell.textLabel?.text = self.content[indexPath.row]
        
        return cell
    }


}

