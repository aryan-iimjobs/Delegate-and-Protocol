//
//  ViewController.swift
//  Delegate and Protocol
//
//  Created by iim jobs on 11/02/20.
//  Copyright © 2020 iim jobs. All rights reserved.
//

import UIKit

class ViewController: UIViewController { // sender
    
    @IBOutlet weak var label: UILabel!
        
    @IBAction func buttonSend(_ sender: Any) {
       let newVC = storyboard?.instantiateViewController(withIdentifier: "NewViewController") as? NewViewController
        
        newVC?.deligate = self
        
        navigationController?.pushViewController(newVC!, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: SendTextDeligate {
    func sendText(text: String) {
        self.label.text = text
    }
}

