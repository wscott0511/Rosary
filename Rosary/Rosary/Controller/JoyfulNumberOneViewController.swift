//
//  JoyfulViewController.swift
//  Rosary
//
//  Created by Ryan Scott on 9/3/20.
//  Copyright © 2020 Ryan Scott. All rights reserved.
//

import UIKit

class JoyfulNumberOneViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var prayerTitle: UILabel!
    @IBOutlet weak var thePrayerLabel: UILabel!
    
    // Variables
    var prayerNumber = 0
    
    let prayers = [
        Prayers(t: "The First Decade", p: "For the protection of the first responders, doctors, and nurses who care for those made critically ill by coronavirus. For wisdom and guidance on those scientists and researchers seeking vaccines and rapid testing platforms. Our lady, Help of Christians, intercede for us!"),
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
    
    @IBAction func nextPrayerButton(_ sender: UIButton) {
        
        if prayerNumber + 1 < prayers.count {
            prayerNumber += 1
            updateUI()
        } else {
            performSegue(withIdentifier: "Joyful1To2", sender: nil)
        }
    }
    
    @objc func updateUI() {
        prayerTitle.text = prayers[prayerNumber].title
        thePrayerLabel.text = prayers[prayerNumber].prayer
    }
    
}
