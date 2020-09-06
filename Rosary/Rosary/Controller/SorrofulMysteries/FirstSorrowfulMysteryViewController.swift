//
//  FirstSorrowfulMysteryViewController.swift
//  Rosary
//
//  Created by Ryan Scott on 9/5/20.
//  Copyright © 2020 Ryan Scott. All rights reserved.
//

import UIKit

class FirstSorrowfulMysteryViewController: UIViewController {
    
    // Outlets
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        performSegue(withIdentifier: "Mystery1ToPrayers", sender: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
