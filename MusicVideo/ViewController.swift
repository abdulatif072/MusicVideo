//
//  ViewController.swift
//  MusicVideo
//
//  Created by Abdulatif Almulhim on ١ رمضان، ١٤٣٧ هـ.
//  Copyright © ١٤٣٧ Abdulatif Almulhim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 var videos = [Videos]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Call API
        let api = APIManager()
        api.loadData("https://itunes.apple.com/us/rss/topmusicvideos/limit=10/json", completion: didLoadData)
        

        
        
        
        
    }
    
    func didLoadData(videos:[Videos]){
        

     
        
//        for var i = 0 ; i<videos.count;i+=1{
//            let video = videos[i]                // another way in loop to display data
//        print("name \(video.vName)")
//        }
        
        
        for item in videos {
            
            print(item.vName)
        }
    
////        let alert = UIAlertController(title: (result), message: nil, preferredStyle: UIAlertControllerStyle.Alert)
////        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
////        self.presentViewController(alert, animated: true, completion: nil)  // ok only
//        
//        let alert = UIAlertController(title: (result), message: nil, preferredStyle: UIAlertControllerStyle.Alert)
//        
//        // add the actions (buttons)
//        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
//        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
//        
//        // show the alert
//        self.presentViewController(alert, animated: true, completion: nil)
        
}

}
   




