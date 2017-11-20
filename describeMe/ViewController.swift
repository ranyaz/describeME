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
    
    @IBAction func shoreMoreInfo(_ sender: Any) {
        let view = self.storyboard?.instantiateViewController(withIdentifier: "MoreInfo") as! MoreInfo

        let transition = CATransition()
        transition.duration = 0.0
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromLeft
        self.view.window!.layer.add(transition, forKey: kCATransition)
        
        self.present(view, animated: false)
    }
    
    @IBAction func showPassion(_ sender: Any) {
        let view = self.storyboard?.instantiateViewController(withIdentifier: "Passion") as! Passion
        let transition = CATransition()
        transition.duration = 0.0
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        self.view.window!.layer.add(transition, forKey: kCATransition)

        self.present(view, animated: false)

        
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
        passion.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 2)
    }

    

}

