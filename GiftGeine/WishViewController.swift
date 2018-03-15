//
//  WishViewController.swift
//  GiftGeine
//
//  Created by Jacob Metcalf on 3/15/18.
//  Copyright © 2018 JfMetcalf. All rights reserved.
//

import UIKit

class WishViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func wish1ButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func wish2ButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func wish3ButtonTapped(_ sender: UIButton) {
        
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toWish1" {
            if let giftViewVC = segue.destination as? GiftViewController{
                let newImage = #imageLiteral(resourceName: "MillionDollars")
                giftViewVC.giftImage = #imageLiteral(resourceName: "MillionDollars")
            }
        }
        if segue.identifier == "toWish2" {
            if let giftViewVC = segue.destination as? GiftViewController {
                let newImage = #imageLiteral(resourceName: "YellowCorvet")
                giftViewVC.giftImage = #imageLiteral(resourceName: "YellowCorvet")
            }
        }
        if segue.identifier == "toWish3" {
            if let giftViewVC = segue.destination as? GiftViewController{
                let newImage = #imageLiteral(resourceName: "Vacation")
                giftViewVC.giftImage = #imageLiteral(resourceName: "Vacation")
            }
        }
    }
}


