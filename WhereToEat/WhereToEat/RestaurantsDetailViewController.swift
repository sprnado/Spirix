//
//  RestaurantsDetailViewController.swift
//  WhereToEat
//
//  Created by Nick on 15-10-25.
//  Copyright (c) 2015年 Spirix. All rights reserved.
//

import UIKit

class RestaurantsDetailViewController: UIViewController {

    var currentrest : restaurants?
    
    @IBOutlet weak var currentimg: UIImageView!
    
    @IBOutlet weak var restAddress: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //add is create an image named whatever the filename is in current photo and then set that to our imageView outlet
        var image = UIImage(named: currentrest!.filename)
        currentimg.image = image

        restAddress.text = currentrest!.details
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
