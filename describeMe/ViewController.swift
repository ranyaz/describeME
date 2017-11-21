//
//  ViewController.swift
//  describeMe
//
//  Created by Rany Azevedo on 10/11/2017.
//  Copyright © 2017 Rany Azevedo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var passion: UIButton!
    @IBOutlet weak var moreInfo: UIButton!
    @IBOutlet weak var experience: UIButton!
    @IBOutlet weak var mainPic: UIButton!
    
    var arrayOfPics = [#imageLiteral(resourceName: "tony.jpeg"),#imageLiteral(resourceName: "tony2"),#imageLiteral(resourceName: "tony3"),#imageLiteral(resourceName: "tony4"),#imageLiteral(resourceName: "tony5")]
    
    
    @IBAction func changeMainPic(_ sender: Any) {
        let randomPic = Int(arc4random_uniform(UInt32(arrayOfPics.count)))
        mainPic.setImage(arrayOfPics[randomPic], for: .normal)
    }
    
    func rotateButtons() {
        moreInfo.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        passion.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 2)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rotateButtons()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

