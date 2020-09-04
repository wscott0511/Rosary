//
//  JoyfulNumberTwoViewController.swift
//  Rosary
//
//  Created by Ryan Scott on 9/3/20.
//  Copyright © 2020 Ryan Scott. All rights reserved.
//

import UIKit

class JoyfulNumberTwoViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var prayerTitle: UILabel!
    @IBOutlet weak var prayerLabel: UILabel!
    
    
    // Variables
    var prayerNumber = 0
    
    let prayer = [
        Prayers(t: "The Second Decade", p: "For a full and speedy recovery for those suffering from the coravirus. For protection of their family members and all those who are at risk of getting or transmitting the virus. Our Lady, Help of Christians, Intercede for us!"),
        Prayers(t: "The Lord's Prayer", p: "Our Father, who art in heaven, hallowed be they name; thy kingdom come; thy will be done on earth as it is in heaven. Give us this day our daily bread; and forgive us our trespasses; as we forgive those who trespass against us; and lead us not into temptation, but deliver us from evil"),
        Prayers(t: "Hail Mary #1", p: "Hail Mary, full of grace, the Lord is with thee; blessed art thou among women; and blessed is the fruit of thy womb, Jesus. Holy Mary, Mother of God, pray for us sinners, now and at the hour of our death. Amen."),
        Prayers(t: "Hail Mary #2", p: "Hail Mary, full of grace, the Lord is with thee; blessed art thou among women; and blessed is the fruit of thy womb, Jesus. Holy Mary, Mother of God, pray for us sinners, now and at the hour of our death. Amen."),
        Prayers(t: "Hail Mary #3", p: "Hail Mary, full of grace, the Lord is with thee; blessed art thou among women; and blessed is the fruit of thy womb, Jesus. Holy Mary, Mother of God, pray for us sinners, now and at the hour of our death. Amen."),
        Prayers(t: "Hail Mary #4", p: "Hail Mary, full of grace, the Lord is with thee; blessed art thou among women; and blessed is the fruit of thy womb, Jesus. Holy Mary, Mother of God, pray for us sinners, now and at the hour of our death. Amen."),
        Prayers(t: "Hail Mary #5", p: "Hail Mary, full of grace, the Lord is with thee; blessed art thou among women; and blessed is the fruit of thy womb, Jesus. Holy Mary, Mother of God, pray for us sinners, now and at the hour of our death. Amen."),
        Prayers(t: "Hail Mary #6", p: "Hail Mary, full of grace, the Lord is with thee; blessed art thou among women; and blessed is the fruit of thy womb, Jesus. Holy Mary, Mother of God, pray for us sinners, now and at the hour of our death. Amen."),
        Prayers(t: "Hail Mary #7", p: "Hail Mary, full of grace, the Lord is with thee; blessed art thou among women; and blessed is the fruit of thy womb, Jesus. Holy Mary, Mother of God, pray for us sinners, now and at the hour of our death. Amen."),
        Prayers(t: "Hail Mary #8", p: "Hail Mary, full of grace, the Lord is with thee; blessed art thou among women; and blessed is the fruit of thy womb, Jesus. Holy Mary, Mother of God, pray for us sinners, now and at the hour of our death. Amen."),
        Prayers(t: "Hail Mary #9", p: "Hail Mary, full of grace, the Lord is with thee; blessed art thou among women; and blessed is the fruit of thy womb, Jesus. Holy Mary, Mother of God, pray for us sinners, now and at the hour of our death. Amen."),
        Prayers(t: "Hail Mary #10", p: "Hail Mary, full of grace, the Lord is with thee; blessed art thou among women; and blessed is the fruit of thy womb, Jesus. Holy Mary, Mother of God, pray for us sinners, now and at the hour of our death. Amen."),
        Prayers(t: "Glory Be", p: "Glory be to the Father, and to the Son, and to the Holy Spirit, as it was in the beginning, is now and ever shall be, world without end. Amen"),
        Prayers(t: "Fatima Prayer", p: "O my Jesus, forgive us our sins, save us form the fires of hel; lead all souls to heaven, especially those in most need of thy mercy.")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        if prayerNumber + 1 < prayer.count {
            prayerNumber += 1
            updateUI()
        } else {
            performSegue(withIdentifier: "Joyful2ToJoyful3", sender: nil)
        }
    }
    
    @objc func updateUI() {
        prayerTitle.text = prayer[prayerNumber].title
        prayerLabel.text = prayer[prayerNumber].prayer
    }
    
    

}
