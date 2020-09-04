//
//  FirstFourViewController.swift
//  Rosary
//
//  Created by Ryan Scott on 9/3/20.
//  Copyright © 2020 Ryan Scott. All rights reserved.
//

import UIKit

class FirstFourViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var prayerLabel: UILabel!
    @IBOutlet weak var nextPrayer: BottomButton!
    
    //Variables
    var prayerNumber = 0
    
    let prayer = [
        Prayers(t: "Sign of the Cross", p: "In the name of the Father, and of the Son, and of the Holy Spirit. Amen"),
        Prayers(t: "Apostles' Creed", p: "I believe in God, the Father almighty, creator of heaven and earth. I believe in Jesus Christ, his only Son, our Lord. He was conceived by the power of the Holy Spirit and born of the Virgin Mary. He suffered under Pontius Pilate, was crucified, died and was buried. On the third dayHe rose again. He ascended into heaven, and is seated at the right hand of the Father. He will come again to judge the living and the dead. I believe in the Holy Spirit, the Catholic Church, the communion of saints, the forgiveness of sins, the resurrection of the body, and live everlasting. Amen"),
        Prayers(t: "The Lord's Prayer", p: "Our Father, who art in heaven, hallowed be they name; thy kingdom come; thy will be done on earth as it is in heaven. Give us this day our daily bread; and forgive us our trespasses; as we forgive those who trespass against us; and lead us not into temptation, but deliver us from evil"),
        Prayers(t: "Hail Mary #1", p: "Hail Mary, full of grace, the Lord is with thee; blessed art thou among women; and blessed is the fruit of thy womb, Jesus. Holy Mary, Mother of God, pray for us sinners, now and at the hour of our death. Amen."),
        Prayers(t: "Hail Mary #2", p: "Hail Mary, full of grace, the Lord is with thee; blessed art thou among women; and blessed is the fruit of thy womb, Jesus. Holy Mary, Mother of God, pray for us sinners, now and at the hour of our death. Amen."),
        Prayers(t: "Hail Mary #3", p: "Hail Mary, full of grace, the Lord is with thee; blessed art thou among women; and blessed is the fruit of thy womb, Jesus. Holy Mary, Mother of God, pray for us sinners, now and at the hour of our death. Amen."),
        Prayers(t: "Glory Be", p: "Glory be to the Father, and to the Son, and to the Holy Spirit, as it was in the beginning, is now and ever shall be, world without end. Amen")
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func nextPrayerButton(_ sender: UIButton) {
        
        if prayerNumber + 1 < prayer.count {
            prayerNumber += 1
            updateUI()
            print(prayerNumber)
        } else {
            performSegue(withIdentifier: "FirstPrayersToDay", sender: nil)
        }
        
    }
    
    
    @objc func updateUI() {
        titleLabel.text = prayer[prayerNumber].title
        prayerLabel.text = prayer[prayerNumber].prayer
        print(prayer.count)
    }
    
}
