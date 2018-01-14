//
//  TutorialVC.swift
//  Sweet Dreams
//
//  Created by Ulad Daratsiuk-Demchuk on 2018-01-14.
//  Copyright © 2018 Uladzislau Daratsiuk. All rights reserved.
//

import UIKit

class TutorialVC: UIViewController {

    @IBOutlet weak var firstTextlbl: UILabel!
    @IBOutlet weak var secondTextLbl: UILabel!
    @IBOutlet weak var thirdTextLbl: UILabel!
    @IBOutlet weak var fristImage: UIImageView!
    @IBOutlet weak var secondImega: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.firstTextlbl.alpha = 0
        self.secondTextLbl.alpha = 0
        self.thirdTextLbl.alpha = 0
        self.fristImage.alpha = 0
        self.secondImega.alpha = 0
        
        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.5, animations: {
            self.firstTextlbl.alpha = 0.70
        }, completion: {(true) in
            UIView.animate(withDuration: 0.5, animations: {
                self.fristImage.alpha = 1
            }, completion: {(true) in
                UIView.animate(withDuration: 0.5, animations: {
                    self.secondTextLbl.alpha = 0.75
                }, completion: {(true) in
                    UIView.animate(withDuration: 0.5, animations: {
                        self.secondImega.alpha = 1
                    }, completion: {(true ) in
                        UIView.animate(withDuration: 0.5, animations: {
                            self.thirdTextLbl.alpha = 0.75
                        }, completion: {(true) in })
                    })
                })
            })
        })
        
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
