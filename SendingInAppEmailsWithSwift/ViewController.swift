//
//  ViewController.swift
//  SendingInAppEmailsWithSwift
//
//  Created by Gregory Omoma on 2/14/19.
//  Copyright © 2019 Gregory Omoma. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func emailButtonClicked(_ sender: Any) {
        
    }
    
    func showEmailComposer(){
        guard MFMailComposeViewController.canSendMail() else {
            print("This simiulator cannot show mail")
            return
        }
        
        let composer = MFMailComposeViewController()
        composer.mailComposeDelegate = self
        composer.setToRecipients([EmailReturn.perez.rawValue])
        composer.setSubject(EmailReturn.userReport.rawValue)
        composer.setMessageBody("Hello I have the following questions or reports about the AfterTax app", isHTML: false)
        
        present(composer, animated: true)
        
    }
}

extension ViewController : MFMailComposeViewControllerDelegate {
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        if let _ = error {
            controller.dismiss(animated: true)
            return
        }
        
        switch result {
        case .cancelled:
            print("Cancelled")
        case .failed:
            print("Failed")
        case .saved:
            print("Saved")
        case .sent:
            print("Email Sent")
        }
        
        controller.dismiss(animated: true)
    }
}
