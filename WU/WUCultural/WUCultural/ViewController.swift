//
//  ViewController.swift
//  WUCultural
//
//  Created by Mar Nesbitt on 8/23/15.
//  Copyright (c) 2015 Mar Nesbitt. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    
    
    var events = [Event]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.events = [Event(name:"Event 1", date:"01/01/2016",time: "tbh", description: "", isFree: true,price: "Free", culurtalEvent: true, globalEvent: false),Event(name:"Event 2", date:"01/01/2016",time: "tbh", description: "describe", isFree: false,price: "$2.00", culurtalEvent: true, globalEvent: true),Event(name:"Event 3", date:"01/01/2016",time: "tbh", description: "", isFree: true,price: "Free", culurtalEvent: true, globalEvent: false)]
        var nib = UINib(nibName: "viewTableCell", bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: "Cell")
       
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.events.count
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        /*let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
      var event : Event
        event = events[indexPath.row]
        cell.textLabel?.text = event.name
        cell.detailTextLabel?.text = event.time*/
        
       var cell:tableCellTableViewCell = self.tableView.dequeueReusableCellWithIdentifier("Cell") as! tableCellTableViewCell
        var event : Event
        event = events[indexPath.row]
        
        
        cell.eventDate.text = event.date
        cell.eventTitle.text = event.name
        
        cell.eventTime.text = event.time
        
        if (cell.culturalEvent == true){
        cell.culturalEvent.text = "Cultural Event"
        }
        
        if (event.isFree == true){
            cell.eventPrice.text = "FREE"
        }
        else{
            cell.eventPrice.text = event.price
        }
        cell.eventDesciption.text = event.description
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 150
    }
}

