//
//  ChooseDayViewController.swift
//  Rosary
//
//  Created by Ryan Scott on 9/3/20.
//  Copyright © 2020 Ryan Scott. All rights reserved.
//

import UIKit

class ChooseDayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func mondayTuesdayButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "MondayAndTuesdayToJoful", sender: nil)
    }
    
    @IBAction func tuesdayButton(_ sender: UIButton) {
        performSegue(withIdentifier: "TuesdayToSorroful", sender: nil)
    }
    

}
