//
//  RestaurantsTableViewController.swift
//  WhereToEat
//
//  Created by Nick on 15-10-25.
//  Copyright (c) 2015年 Spirix. All rights reserved.
//

import UIKit

class RestaurantsTableViewController: UITableViewController {

    var rests = [restaurants]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        var newRest = restaurants(name: "川菜", filename: "chuan", details: "Address: 6528 Kingsway, Burnaby, V59 2J9" )
        rests.append(newRest)
        
        newRest = restaurants(name: "上海小笼包", filename: "bao", details: "Address: 7728 Main Street, Vancouver, V9F 4K9" )
        rests.append(newRest)
        
        newRest = restaurants(name: "好吃的烧烤", filename: "bbq", details: "Address: 9988 Granville Aven, Vancouver, 8HD 72H" )
        rests.append(newRest)
        
        newRest = restaurants(name: "小肥羊火锅", filename: "fat_sheep", details: "Address: 2228 Inernational Street, Richmond, 9J2 7C6" )
        rests.append(newRest)
        
        newRest = restaurants(name: "湘菜的泡椒鱼头", filename: "xiang", details: "Address: 9273 What_fuck Street, Moon, 9C7 7K1" )
        rests.append(newRest)
        // Uncomment the following line  to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return rests.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("restsCell", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...
        //create a new var of current photo
        var currentRestaurant = rests[indexPath.row]
        // pull out the corresponding entry from the Photos array, then I will set the text for that cell to the name of the photo
        cell.textLabel?.text = currentRestaurant.name

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        var secondScene = segue.destinationViewController as RestaurantsDetailViewController
        // Pass the selected object to the new view controller.
        
        //using Swift's if let format to say while I'm hoping that this indexPath will actually have a value. If it does, we can now start to work with it.
        if let indexPath = self.tableView.indexPathForSelectedRow() {
            let seletedRest = rests[indexPath.row]
            secondScene.currentrest = seletedRest
        }
        
    }
    

}
