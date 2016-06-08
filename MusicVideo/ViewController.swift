//
//  ViewController.swift
//  MusicVideo
//
//  Created by Abdulatif Almulhim on ١ رمضان، ١٤٣٧ هـ.
//  Copyright © ١٤٣٧ Abdulatif Almulhim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Call API
        let api = APIManager()
        api.loadData("https://itunes.apple.com/us/rss/topmusicvideos/limit=10/json", completion: didLoadData)
        

        
        
        
        
    }
    
    func didLoadData(result:String){
        

        
        
//        let alert = UIAlertController(title: (result), message: nil, preferredStyle: UIAlertControllerStyle.Alert)
//        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
//        self.presentViewController(alert, animated: true, completion: nil)  // ok only
        
        let alert = UIAlertController(title: (result), message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        
        // add the actions (buttons)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
        
        // show the alert
        self.presentViewController(alert, animated: true, completion: nil)
        
    }

   


}

