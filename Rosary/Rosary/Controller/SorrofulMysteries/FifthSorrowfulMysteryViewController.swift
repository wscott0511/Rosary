//
//  FifthSorrowfulMysteryViewController.swift
//  Rosary
//
//  Created by Ryan Scott on 9/5/20.
//  Copyright © 2020 Ryan Scott. All rights reserved.
//

import UIKit

class FifthSorrowfulMysteryViewController: UIViewController {

    

    @IBAction func nextButton(_ sender: UIButton) {
        performSegue(withIdentifier: "FifthSorrowFulMysteryToPrayers", sender: nil)
    }
}
