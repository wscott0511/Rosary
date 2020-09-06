//
//  ThirdSorrowfulMysteryViewController.swift
//  Rosary
//
//  Created by Ryan Scott on 9/5/20.
//  Copyright © 2020 Ryan Scott. All rights reserved.
//

import UIKit

class ThirdSorrowfulMysteryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        performSegue(withIdentifier: "ThirdSorrowfulToPrayers", sender: nil)
    }
    

}
