//
//  ViewController.swift
//  5thWeekZoneZero
//
//  Created by Mustafa Berkay Kaya on 27.10.2021.
//

import UIKit

class ViewController: UIViewController {

    private var selectedType = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction private func boilingButtonTapped(_ sender: Any) {
        if selectedType == 0 {
            performSegue(withIdentifier: "toSoft", sender: nil)
        } else if selectedType == 1 {
            performSegue(withIdentifier: "toNormal", sender: nil)
        } else if selectedType == 2 {
            performSegue(withIdentifier: "toCoddled", sender: nil)
        } else {
            let alert = UIAlertController(title: "Error", message: "Please select the boiling range.", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction private func segmentSelected(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            selectedType = 0
        case 1:
            selectedType = 1
        case 2:
            selectedType = 2
        default:
            selectedType = -1
        }
    }
    
}
