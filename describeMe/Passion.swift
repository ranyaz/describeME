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
    
    @IBOutlet var passionsList: [UIButton]!
    @IBOutlet var passionLabel: [UITextField]!
    
    
    func showLabel(){
        for label in passionLabel {
            label.isHidden = true
        }
    }
    
    @IBAction func closeModal(_ sender: Any) {
        let transition = CATransition()
//        transition.duration = 0.5
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromLeft
        self.view.window!.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        rotateButtons()
        self.navigationController?.navigationBar.barTintColor = .white

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func rotateButtons() {
        passion.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 2)
    }
    
    
}

