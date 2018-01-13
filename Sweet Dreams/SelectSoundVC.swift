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
    
    
    var historyArray = ["Winter sound","River sound","Forest sound","Sea sound ","Train sound","Rain sound"]
    
 
    var trackNumber: Int!
    
     var selectionDelegate: SelectedTrackDelegate?
  

    @IBAction func winterSoundBut(_ sender: UIButton) {
        trackNumber = 1
        
        selectionDelegate?.didSelectTrackNumber(trackNumber, historyOfSound: historyArray[0] , image: UIImage(named: "background1")!)

    }
    
    @IBAction func riverSoundBut(_ sender: UIButton) {
        trackNumber = 2
        selectionDelegate?.didSelectTrackNumber(trackNumber, historyOfSound: historyArray[1] , image: UIImage(named: "background2")!)
    }
    
    @IBAction func forestSoundBut(_ sender: UIButton) {
        trackNumber = 3
        selectionDelegate?.didSelectTrackNumber(trackNumber, historyOfSound: historyArray[2] , image: UIImage(named: "background3")!)
        
    }
    
    @IBAction func seaSoundBut(_ sender: UIButton) {
        trackNumber = 4
        selectionDelegate?.didSelectTrackNumber(trackNumber, historyOfSound: historyArray[3] , image: UIImage(named: "background4")!)
        
    }
    
    @IBAction func trainSoundBut(_ sender: UIButton) {
        trackNumber = 5
        selectionDelegate?.didSelectTrackNumber(trackNumber, historyOfSound: historyArray[4] , image: UIImage(named: "background5")!)
    }
    
    @IBAction func stormSoundBut(_ sender: UIButton) {
        trackNumber = 6
        selectionDelegate?.didSelectTrackNumber(trackNumber, historyOfSound: historyArray[5] , image: UIImage(named: "background6")!)
        
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
