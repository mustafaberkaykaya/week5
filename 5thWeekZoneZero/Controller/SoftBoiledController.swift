//
//  softBoiledController.swift
//  5thWeekZoneZero
//
//  Created by Mustafa Berkay Kaya on 30.10.2021.
//

import UIKit

class SoftBoiledController: UIViewController {

    private var counter = 240.00
    var timer: Timer = Timer()
    @IBOutlet private weak var timeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
        
    }
    
    @objc
    func countDown() {
        
        var  newEgg = Egg(boilingOption: 0, sizeOffEgg: "Small", status: "unboiled")
        if counter > 0 {
        
            let minutes = Int(counter) / 60
            let seconds = counter - Double(minutes) * 60
            timeLabel.text = String(format: "%02i:%02i", minutes, Int(seconds))
            counter -= 1
        } else if counter == 0 {
            newEgg.status = "boiled"
            timeLabel.text = "Bon appetit!"
            timer.invalidate()
        }
        
    }
    
}
