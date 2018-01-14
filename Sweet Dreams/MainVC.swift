//
//  MainVC.swift
//  Sweet Dreams
//
//  Created by Ulad Daratsiuk-Demchuk on 2018-01-12.
//  Copyright © 2018 Uladzislau Daratsiuk. All rights reserved.
//

import UIKit
import AVFoundation

class MainVC: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    var recivedTrackNumber: Int! = 0
    @IBOutlet weak var historyOfSoundLbl: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var currenTimeOfAudio: UILabel!
    @IBOutlet weak var playButton: RoundButton!
    @IBOutlet weak var pauseButton: RoundButton!
    @IBOutlet weak var repeatButton: RoundButton!
    
    
    
    var updater: CADisplayLink! = nil
    
   
    var trackListArray = ["start", "winter","river","forest","sea","train","rain"]
    
   
    
    @IBAction func playButton(_ sender: Any) {
        if audioPlayer.isPlaying == false {
            
            audioPlayer.play()
        }else if audioPlayer.isPlaying == true {
            audioPlayer.pause()
        }else{
            print(Error.self)
            
        }
     
    }
    
    @IBAction func pauseButton(_ sender: Any) {
        if audioPlayer.isPlaying{
            audioPlayer.pause()
        }else{
            audioPlayer.play()
        }
    }
    
    @IBAction func replayButton(_ sender: Any) {
        if audioPlayer.isPlaying{
            audioPlayer.currentTime = 0
            audioPlayer.play()
        }else{
            audioPlayer.play()
        }
        
    }
    
    
    //ABOUT BUTTON
    
    @IBAction func aboutButton(_ sender: Any) {
        self.performSegue(withIdentifier: "about", sender: navigationController)
        

    }
    
    
    @IBAction func shareButton(_ sender: Any) {
        
        let activityVC = UIActivityViewController(activityItems: ["Take a look on this amazing App. called Sweet Dreams"], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        self.present(activityVC, animated: true, completion: nil)
        
    }
    
    
    
    //FUNCTION TO SELECT A TRACK
    
    func selectSound(){
        UIView.animate(withDuration: 0.3, animations: {
            self.playButton.alpha = 0.75
        }, completion: {(true) in
            UIView.animate(withDuration: 0.3, animations: {
                self.pauseButton.alpha = 0.75
            }, completion: {(true) in
                UIView.animate(withDuration: 0.3, animations: {
                    self.repeatButton.alpha = 0.75
                }, completion: {(true) in
                    UIView.animate(withDuration: 0.3, animations: {
                        self.slider.alpha = 0.75
                    }, completion: {(true) in
                        UIView.animate(withDuration: 0.3, animations: {
                            self.currenTimeOfAudio.alpha = 0.75
                        }, completion: {(true) in})
                    })
                }
                )
            })
        })
        if recivedTrackNumber == 1{
            playTrack(trackName: trackListArray[1])
        }else if recivedTrackNumber == 2 {
            playTrack(trackName: trackListArray[2])

        }else if recivedTrackNumber == 3 {
            playTrack(trackName: trackListArray[3])

        }else if recivedTrackNumber == 4 {
            playTrack(trackName: trackListArray[4])

        }else if recivedTrackNumber == 5 {
            playTrack(trackName: trackListArray[5])

        }else if recivedTrackNumber == 6 {
            playTrack(trackName: trackListArray[6])

        }else{
            playTrack(trackName: trackListArray[0])
        }
    }
    
  //FUNCTION TO PLAY A TRACK
    
    func playTrack(trackName: String){
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: trackName, ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            
           
            
            
            let session = AVAudioSession.sharedInstance()
            slider.minimumValue = 0.0
            slider.maximumValue = Float(audioPlayer.duration)
            _ = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(MainVC.updateSlider), userInfo: nil, repeats: true )
            do {
                try session.setCategory(AVAudioSessionCategoryPlayback)
            }catch{
                print("error")
            }
            
            audioPlayer.play()
            
            
            
        }catch {
            
            print(error)
            
        }
        
    }
    
    
    @IBAction func changeAudioTime(_ sender: Any) {
        
        audioPlayer.stop()
        audioPlayer.currentTime = TimeInterval(slider.value)
        audioPlayer.prepareToPlay()
        audioPlayer.play()
        
        
    }
    

   


    
    @objc func updateSlider(){
        slider.value = Float(audioPlayer.currentTime)
        
        let time = Int(audioPlayer.currentTime)
        let trackSeconds = Int(time) % 60
        let trackMin = Int(time / 60)
        currenTimeOfAudio.text = String(trackMin) + ":" + String(trackSeconds)
     //   currenTimeOfAudio.text = String(Int(audioPlayer.currentTime))
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.slider.alpha = 0
        self.playButton.alpha = 0
        self.pauseButton.alpha = 0
        self.repeatButton.alpha = 0
        self.currenTimeOfAudio.alpha = 0
        
        

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SelectSoundVC, segue.identifier == "SelectSoundVC" {
            viewController.selectionDelegate = self
        }
    }

    
    override func viewDidAppear(_ animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension MainVC: SelectedTrackDelegate {
    func didSelectTrackNumber(_ trackNumber: Int , historyOfSound: String, image: UIImage ) {
        historyOfSoundLbl.text = historyOfSound
        recivedTrackNumber = trackNumber
        self.backgroundImage.alpha = 0
        func updateImgage(){
            UIView.animate(withDuration: 0.9, animations: {
                self.backgroundImage.image = image
                self.backgroundImage.alpha = 1
            }, completion: {(true) in })
        }
        
        updateImgage()
        selectSound()
        
    }
    
    
}


