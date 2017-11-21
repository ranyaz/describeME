//
//  MoreInfo.swift
//  describeMe
//
//  Created by Rany Azevedo on 15/11/2017.
//  Copyright © 2017 Rany Azevedo. All rights reserved.
//

import UIKit

class Experience: UIViewController {
    
    @IBOutlet var experienceList: [UIButton]!
    
    @IBAction func growInClick(_ sender: UIButton) {
        let btnsendtag: UIButton = sender
        if btnsendtag.tag == 1 {
            btnsendtag.transform = CGAffineTransform(scaleX: 0.01, y: 0.1)
            UIView.animate(withDuration: 2.0,
                           delay: 0,
                           usingSpringWithDamping: 0.2,
                           initialSpringVelocity: 6.0,
                           options: .allowUserInteraction,
                           animations: { [weak self] in
                            btnsendtag.transform = .identity
                },
                           completion: nil)
        }
    }

    
    @IBAction func closeModal(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        for btn in experienceList {
            btn.addTarget(self, action: #selector(growInClick), for: .touchUpInside)
            btn.tag = 1
        }
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

