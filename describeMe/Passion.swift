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
    
    @IBAction func growInClick(_ sender: UIButton) {
        let btnsendtag: UIButton = sender
        if btnsendtag.tag == 1 {
            btnsendtag.transform = CGAffineTransform(scaleX: 0.01, y: 0.1)
            UIView.animate(withDuration: 2.0,
                       delay: 0,
                       usingSpringWithDamping: 0.2,
                       initialSpringVelocity: 6.0,
                       options: .allowUserInteraction,
                       animations: { 
                        btnsendtag.transform = .identity
            },
                       completion: nil)
        }
    }

    
    
    
    @IBAction func closeModal(_ sender: Any) {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionReveal
        transition.subtype = kCATransitionFromLeft
        self.view.window!.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false)
    }
    

    
    override func viewDidLoad() {
        for btn in passionsList {
            btn.layer.shadowColor = UIColor.black.cgColor
            btn.layer.shadowOffset = CGSize(width: 0.3, height: 2.0)
            btn.layer.shadowOpacity = 0.5            
            btn.addTarget(self, action: #selector(growInClick), for: .touchUpInside)
            btn.tag = 1
        }
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

