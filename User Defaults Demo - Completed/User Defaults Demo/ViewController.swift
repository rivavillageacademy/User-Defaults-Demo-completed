//
//  ViewController.swift
//  User Defaults Demo
//
//  Created by Muhamed Alkhatib on 02/09/2020.
//

import UIKit

class ViewController: UIViewController {
    
    var defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true))

        print (defaults.bool(forKey: "muteSwitch"))
        muteSwitch.isOn=defaults.bool(forKey: "muteSwitch")
        
        
        print (defaults.float(forKey: "levelSlider"))
        levelSlider.value=defaults.float(forKey: "levelSlider")
        
        
        print(defaults.integer(forKey: "speakerSegment"))
        speakerSegment.selectedSegmentIndex=defaults.integer(forKey: "speakerSegment")
        
        modeSwitch.selectedSegmentIndex=defaults.integer(forKey: "modeSwitch")
        
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var muteSwitch: UISwitch!
    
    @IBOutlet weak var levelSlider: UISlider!
    
    @IBOutlet weak var speakerSegment: UISegmentedControl!
    
    @IBOutlet weak var modeSwitch: UISegmentedControl!
    
    
    @IBAction func modeChanged(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex==0 {
            view.backgroundColor=#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            
        }
        else {
            view.backgroundColor=#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        }

        
        
    }
    
    
    @IBAction func savePressed(_ sender: UIButton) {
        print (muteSwitch.isOn)
        print (levelSlider.value)
        print (speakerSegment.selectedSegmentIndex)
        print (modeSwitch.selectedSegmentIndex)
        
        defaults.set(muteSwitch.isOn,forKey: "muteSwitch")
        defaults.set(levelSlider.value,forKey: "levelSlider")
        defaults.set(speakerSegment.selectedSegmentIndex, forKey: "speakerSegment")
        defaults.set(modeSwitch.selectedSegmentIndex, forKey: "modeSwitch")
        
        
    }
}

