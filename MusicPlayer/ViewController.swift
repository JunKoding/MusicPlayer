//
//  ViewController.swift
//  MusicPlayer
//
//  Created by JunKyu Lee on 2022/03/11.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    // Mark: - Properties
    var player: AVAudioPlayer!
    var timer: Timer!
    
    // Mark: IBOutlets
    @IBOutlet var playPauseButton: UIButton!
    @IBOutlet var timeRabel: UILabel!
    @IBOutlet var progressSlider: UISlider!
    
    // Mark: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
//       self.addViewWithCode()
        // self.initializePlayer
    }
    
    // Mark: - Methods
    // Mark: Custom Method
    func initializePlayer() {
        
        guard let soundAsset: NSDataAsset = NSDataAsset(name: "sound") else {
            print("음원 파일 에셋을 가져올 수 없습니다.")
            return
        }
        
        do {
            try self.player = AVAudioPlayer(data: soundAsset.data)
            self.player.delegate = self
        } catch let error as NSError {
            print("플레이어 초기화 실패")
            print("코드: \(error.code), 메세지: \(error.localizedDescription)")
        }
        
        self.progressSlider.maximumValue = Float(self.player.duration)
        self.progressSlider.minimumValue = 0
        self.progressSlider.value = Float(self.player.currentTime)
    }
    
    


    @IBAction func touchUpPlayPauseButton(_ sender: UIButton) {
        print("button tapped.")
    }
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        print("slider value changed.")
    }
}

