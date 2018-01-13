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
    var recivedTrackNumber: Int!
    @IBOutlet weak var historyOfSoundLbl: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var slider: UISlider!
    
    var trackListArray = ["test"]
    
   
    
    @IBAction func playButton(_ sender: Any) {
        if audioPlayer.play(){
            audioPlayer.stop()
        }else{
            selectSound()
        }
        
        
    }
    
    @IBAction func pauseButton(_ sender: Any) {
        audioPlayer.pause()
    }
    
    @IBAction func replayButton(_ sender: Any) {
        audioPlayer.play(atTime: 0)
        
    }
    
    
    //ABOUT BUTTON
    
    @IBAction func aboutButton(_ sender: Any) {
        self.performSegue(withIdentifier: "about", sender: navigationController)
        

    }
    
    //FUNCTION TO SELECT A TRACK
    
    func selectSound(){
        if recivedTrackNumber == 1{
            playTrack(trackName: trackListArray[0])
        }else if recivedTrackNumber == 2 {
            playTrack(trackName: trackListArray[0])
        }else if recivedTrackNumber == 3 {
            playTrack(trackName: trackListArray[0])
        }else if recivedTrackNumber == 4 {
            playTrack(trackName: trackListArray[0])
        }else if recivedTrackNumber == 5 {
            playTrack(trackName: trackListArray[0])
        }else if recivedTrackNumber == 6 {
            playTrack(trackName: trackListArray[0])
        }else{
            audioPlayer.stop()
        }
    }
    
  //FUNCTION TO PLAY A TRACK
    
    func playTrack(trackName: String){
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: trackName, ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
            
        }catch {
            
            print(error)
            
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()        


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
        backgroundImage.image = image
        selectSound()
    }
    
    
}


