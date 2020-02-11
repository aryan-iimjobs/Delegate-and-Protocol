//
//  NewViewController.swift
//  Delegate and Protocol
//
//  Created by iim jobs on 11/02/20.
//  Copyright © 2020 iim jobs. All rights reserved.
//

import UIKit

protocol SendTextDeligate {
    func sendText(text: String)
}

class NewViewController: UIViewController {

    @IBOutlet weak var textInput: UITextField!
    
    var deligate: SendTextDeligate!
    
    @IBAction func sendData(_ sender: Any) {
        deligate.sendText(text: textInput.text!)
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

