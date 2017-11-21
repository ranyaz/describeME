//
//  CloseModalLeft.swift
//  describeMe
//
//  Created by Rany Azevedo on 21/11/2017.
//  Copyright © 2017 Rany Azevedo. All rights reserved.
//

import UIKit

class CloseModalLeft: UIStoryboardSegue {
    
    override func perform() {
        
        let src = self.source as UIViewController
        let dst = self.destination as UIViewController
        
        src.view.superview?.willRemoveSubview(src.view)

        src.view.transform = CGAffineTransform(translationX: 0, y: 0)
        
        UIView.animate(withDuration: 2,
                       delay: 0.0,
                       options: UIViewAnimationOptions.curveEaseInOut,
                       animations: {
                            src.view.transform = CGAffineTransform(translationX: -src.view.frame.size.width, y: 0)
                       },
                    completion: { finished in
                    src.dismiss(animated: false, completion: nil)
        }
        )
    }
}


