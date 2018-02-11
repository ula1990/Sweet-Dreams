//
//  AboutVC.swift
//  Sweet Dreams
//
//  Created by Ulad Daratsiuk-Demchuk on 2018-01-12.
//  Copyright © 2018 Uladzislau Daratsiuk. All rights reserved.
//

import UIKit
import StoreKit
import MessageUI

class AboutVC: UIViewController, MFMailComposeViewControllerDelegate {
    
    
    @IBAction func rateBut(_ sender: UIButton) {
        
        if #available(iOS 10.3, *) {
            SKStoreReviewController.requestReview()
        } else {
            print("error")
        }
        
    }
    
    @IBAction func fbBut(_ sender: UIButton) {
        openButtonUrl(urlStr: "https://www.facebook.com/Uladzislau-Daratsiuk-Swift-Developer-1565603270155394/")
    }
    
    @IBAction func youtubeBut(_ sender: UIButton) {
        openButtonUrl(urlStr: "https://www.youtube.com/c/iOSDeveloperUla")
        
    }
    
    @IBAction func twitterBut(_ sender: UIButton) {
        openButtonUrl(urlStr: "https://twitter.com/daratsiuk")
    }
    
    @IBAction func emailBut(_ sender: UIButton) {
        let mailComposeViewController = configureMailController()
        if MFMailComposeViewController.canSendMail(){
            self.present(mailComposeViewController, animated: true, completion: nil)
        }else{
            showMailError()}
        
    }
    
    
    //CONFIGURE EMAIL
    func configureMailController()-> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        mailComposerVC.setToRecipients(["uladzislau.daratsiuk@gmail.com"])
        mailComposerVC.setSubject("Hi Developer ")
        mailComposerVC.setMessageBody("Hi Developer,", isHTML: false)
        
        return mailComposerVC
    }
    
    func showMailError(){
        
        let sendMailErrorAlert = UIAlertController (title: "Could not send email", message: "Your device could not send email", preferredStyle: .alert)
        let dismiss = UIAlertAction(title:"OK",style: .default, handler: nil)
        sendMailErrorAlert.addAction(dismiss)
        self.present(sendMailErrorAlert, animated: true, completion: nil)
        
    }
    
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil )
    }
    
    func openButtonUrl(urlStr:String!) {
        if let url = NSURL(string:urlStr) {
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //CONFIGURE NAVIGATION CONTROLLER
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
