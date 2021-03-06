//
//  MoreInfo.swift
//  describeMe
//
//  Created by Rany Azevedo on 15/11/2017.
//  Copyright © 2017 Rany Azevedo. All rights reserved.
//

import UIKit

class MoreInfo: UIViewController {
    
    @IBOutlet weak var moreInfo: UIButton!
    
    @IBAction func openMap(_ sender: Any) {
        let url = "http://maps.apple.com/?q=Benevento"
        UIApplication.shared.openURL(URL(string:url)!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         rotateButtons()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func rotateButtons() {
        moreInfo.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
    }
}
