//
//  LampViewController.swift
//  GiftGeine
//
//  Created by Jacob Metcalf on 3/15/18.
//  Copyright © 2018 JfMetcalf. All rights reserved.
//

import UIKit

class LampViewController: UIViewController {
    
    @IBOutlet weak var introTextLabel: UILabel!
    @IBOutlet weak var makeAWishButton: UIButton!
    @IBOutlet weak var genieImageView: UIImageView!
    @IBOutlet weak var lampButton: UIButton!
    
    var lampShakeTimer: Timer!

    var lampButtonHasBeenTapped = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        genieImageView.alpha = 0
        makeAWishButton.alpha = 0
        introTextLabel.alpha = 0
        setupLampShakeTimer()
    }
    
    @IBAction func lampGenieAppearButtonTapped(_ sender: UIButton) {
        lampButtonHasBeenTapped = true
            
        UIView.animate(withDuration: 0.5, animations: {
            self.genieImageView.alpha = 1
            self.introTextLabel.alpha = 1
        }) { (_) in
            
            UIView.animate(withDuration: 0.5, delay: 3, options: .curveEaseIn, animations: {
                self.makeAWishButton.alpha = 1
            }, completion: nil)
        }
        
        lampButton.isEnabled = false
    }
    
    func addGenieAndMakeAWishButton() {
        
    }
    
    func setupLampShakeTimer() {
        
        lampShakeTimer = Timer.scheduledTimer(withTimeInterval: 2, repeats: true, block: { (_) in
        
            guard !self.lampButtonHasBeenTapped else { return }
            
            let animation = CABasicAnimation(keyPath: "position")
            animation.duration = 0.1
            animation.repeatCount = 4
            animation.autoreverses = true
            animation.fromValue = NSValue(cgPoint: CGPoint(x: self.lampButton.center.x - 3, y: self.lampButton.center.y))
            animation.toValue = NSValue(cgPoint: CGPoint(x: self.lampButton.center.x + 3, y: self.lampButton.center.y))
        
            self.lampButton.layer.add(animation, forKey: "position")
        })
    }
}
