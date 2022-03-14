//
//  ViewController.swift
//  MusicPlayer
//
//  Created by JunKyu Lee on 2022/03/11.
//

import UIKit

class ViewController: UIViewController {
    
    // Mark: IBOutlets
    @IBOutlet var playPauseButton: UIButton!
    @IBOutlet var timeRabel: UILabel!
    @IBOutlet var progressSlider: UISlider!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func touchUpPlayPauseButton(_ sender: UIButton) {
        
        print("button tapped.")
    }
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        print("slider value changed.")
    }
}

