//
//  MoreInfo.swift
//  describeMe
//
//  Created by Rany Azevedo on 15/11/2017.
//  Copyright © 2017 Rany Azevedo. All rights reserved.
//

import UIKit

class Passion: UIViewController {
    
    @IBOutlet weak var passion: UIButton!
    @IBOutlet weak var closeButton: UIButton!
        
    @IBAction func closeModal(_ sender: Any) {
        let transition = CATransition()
        transition.duration = 0
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromLeft
        self.view.window!.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false)
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
        passion.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 2)
    }
    
    
}

