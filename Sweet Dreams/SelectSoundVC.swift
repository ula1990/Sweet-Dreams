//
//  SelectSoundVC.swift
//  Sweet Dreams
//
//  Created by Ulad Daratsiuk-Demchuk on 2018-01-12.
//  Copyright © 2018 Uladzislau Daratsiuk. All rights reserved.
//

import UIKit

protocol SelectedTrackDelegate {
    func didSelectTrackNumber(_ trackNumber: Int)
}

class SelectSoundVC: UIViewController {
    
    
 
    var trackNumber: Int!
     var selectionDelegate: SelectedTrackDelegate?
  

    @IBAction func winterSoundBut(_ sender: UIButton) {
        trackNumber = 1
        selectionDelegate?.didSelectTrackNumber(trackNumber)

    }
    
    @IBAction func riverSoundBut(_ sender: UIButton) {
        trackNumber = 2
        selectionDelegate?.didSelectTrackNumber(trackNumber)
    }
    
    @IBAction func forestSoundBut(_ sender: UIButton) {
        trackNumber = 3
        selectionDelegate?.didSelectTrackNumber(trackNumber)
        
    }
    
    @IBAction func seaSoundBut(_ sender: UIButton) {
        trackNumber = 4
        selectionDelegate?.didSelectTrackNumber(trackNumber)
        
    }
    
    @IBAction func trainSoundBut(_ sender: Any) {
        trackNumber = 5
        selectionDelegate?.didSelectTrackNumber(trackNumber)
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
