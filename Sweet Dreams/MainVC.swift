//
//  MainVC.swift
//  Sweet Dreams
//
//  Created by Ulad Daratsiuk-Demchuk on 2018-01-12.
//  Copyright © 2018 Uladzislau Daratsiuk. All rights reserved.
//

import UIKit



class MainVC: UIViewController {

    var recivedTrackNumber: Int!
    @IBOutlet weak var historyOfSoundLbl: UILabel!
    

    @IBAction func aboutButton(_ sender: Any) {
        self.performSegue(withIdentifier: "about", sender: navigationController)
        

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
    func didSelectTrackNumber(_ trackNumber: Int) {
        historyOfSoundLbl.text = String(trackNumber)
    }
    
    
}


