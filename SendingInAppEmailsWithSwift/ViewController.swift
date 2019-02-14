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
        com
    }
}

