//
//  GiftViewController.swift
//  GiftGeine
//
//  Created by Jacob Metcalf on 3/15/18.
//  Copyright © 2018 JfMetcalf. All rights reserved.
//

import UIKit

class GiftViewController: UIViewController {

    @IBOutlet weak var congratsTextLabel: UILabel!
    @IBOutlet weak var giftImageView: UIImageView!
    
    var giftImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCongratsTextLabel()
        self.giftImageView.image = giftImage
    }
    
    // TextField
    func setupCongratsTextLabel() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.07
        animation.repeatCount = 4
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: congratsTextLabel.center.x - 10, y: congratsTextLabel.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: congratsTextLabel.center.x + 10, y: congratsTextLabel.center.y))

        congratsTextLabel.layer.add(animation, forKey: "position")
    }
}

