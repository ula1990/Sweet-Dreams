//
//  SelectSoundVC.swift
//  Sweet Dreams
//
//  Created by Ulad Daratsiuk-Demchuk on 2018-01-12.
//  Copyright © 2018 Uladzislau Daratsiuk. All rights reserved.
//

import UIKit

protocol SelectedTrackDelegate {
    func didSelectTrackNumber(_ trackNumber: Int , historyOfSound: String , image: UIImage)
}

class SelectSoundVC: UIViewController {
    
    
    var historyArray = ["Relaxing sounds of the real Snowstorm","Relaxing sound of the mountain river","Relaxing sounds of Night Forest","Sounds of nature, relaxing ocean, waves sounds and birds singing at paradisiac tropical beach","You are in the train from Switzerland which following to Alps","Rain sound","Real fireplace with wood burning, producing soothing crackling sounds that help you relax","Amazing sound of New York City in the Morning","Sound to relax Baby To Go To Sleep Soothing Vacuum Cleaner","Hair Dryer White Noise"]
    
 
    var trackNumber: Int!
    
     var selectionDelegate: SelectedTrackDelegate?
  

    @IBAction func winterSoundBut(_ sender: UIButton) {
        trackNumber = 1
        
        selectionDelegate?.didSelectTrackNumber(trackNumber, historyOfSound: historyArray[0] , image: UIImage(named: "background1")!)

    }
    
    @IBAction func riverSoundBut(_ sender: UIButton) {
        trackNumber = 2
        selectionDelegate?.didSelectTrackNumber(trackNumber, historyOfSound: historyArray[1] , image: UIImage(named: "background10")!)
    }
    
    @IBAction func forestSoundBut(_ sender: UIButton) {
        trackNumber = 3
        selectionDelegate?.didSelectTrackNumber(trackNumber, historyOfSound: historyArray[2] , image: UIImage(named: "background8")!)
        
    }
    
    @IBAction func seaSoundBut(_ sender: UIButton) {
        trackNumber = 4
        selectionDelegate?.didSelectTrackNumber(trackNumber, historyOfSound: historyArray[3] , image: UIImage(named: "background12")!)
        
    }
    
    @IBAction func trainSoundBut(_ sender: UIButton) {
        trackNumber = 5
        selectionDelegate?.didSelectTrackNumber(trackNumber, historyOfSound: historyArray[4] , image: UIImage(named: "background9")!)
    }
    
    @IBAction func stormSoundBut(_ sender: UIButton) {
        trackNumber = 6
        selectionDelegate?.didSelectTrackNumber(trackNumber, historyOfSound: historyArray[5] , image: UIImage(named: "background11")!)
        
    }
    
    
    @IBAction func fireplaceSoundBut(_ sender: UIButton) {
        trackNumber = 7
        selectionDelegate?.didSelectTrackNumber(trackNumber, historyOfSound: historyArray[6] , image: UIImage(named: "background13")!)
        
    }
    
    @IBAction func citySoundBut(_ sender: UIButton) {
        trackNumber = 8
        selectionDelegate?.didSelectTrackNumber(trackNumber, historyOfSound: historyArray[7] , image: UIImage(named: "background14")!)
        
    }
    
    
    @IBAction func cleanerSoundBut(_ sender: UIButton) {
        trackNumber = 9
        selectionDelegate?.didSelectTrackNumber(trackNumber, historyOfSound: historyArray[8] , image: UIImage(named: "backgroundMenu")!)
    }
    
    @IBAction func dryerSoundBut(_ sender: UIButton) {
        trackNumber = 10
        selectionDelegate?.didSelectTrackNumber(trackNumber, historyOfSound: historyArray[9] , image: UIImage(named: "backgroundMenu")!)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
