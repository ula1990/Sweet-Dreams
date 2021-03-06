//
//  StartVC.swift
//  Sweet Dreams
//
//  Created by Ulad Daratsiuk-Demchuk on 2018-01-12.
//  Copyright © 2018 Uladzislau Daratsiuk. All rights reserved.
//

import UIKit

class StartVC: UIViewController {
    
 
    @IBOutlet weak var startButton: UIButton!
    
    @IBAction func startButtonPressed(_ sender: Any) {
        
        self.performSegue(withIdentifier: "start", sender: navigationItem)
    }

    @IBAction func tutorialBut(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "tutorial", sender: navigationController)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.startButton.alpha = 0
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
      UIView.animate(withDuration: 1, animations: {
            self.startButton.alpha = 1
        }, completion: {(true) in})
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
