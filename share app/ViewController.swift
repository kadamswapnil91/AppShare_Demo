//
//  ViewController.swift
//  share app
//
//  Created by Apple on 27/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn_share: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func share_Tapped(_ sender: Any) {
 /// working link 1
                UIGraphicsBeginImageContext(view.frame.size)
                view.layer.render(in: UIGraphicsGetCurrentContext()!)
                let image = UIGraphicsGetImageFromCurrentImageContext()
                UIGraphicsEndImageContext()

                let textToShare = "Check out my app"

                if let myWebsite = URL(string: "http://itunes.apple.com/app/idXXXXXXXXX") {//Enter link to your app here
                    let objectsToShare = [textToShare, myWebsite, image ?? #imageLiteral(resourceName: "app-logo")] as [Any]
                    let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)

                    //Excluded Activities
                    activityVC.excludedActivityTypes = [UIActivity.ActivityType.airDrop, UIActivity.ActivityType.addToReadingList]
                    //

                //    activityVC.popoverPresentationController?.sourceView = sender
                    self.present(activityVC, animated: true, completion: nil)
                }    }

        
        
        
        
        
        
    }
    
    


