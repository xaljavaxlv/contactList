//
//  ViewController.swift
//  contactList
//
//  Created by Vlad Zavada on 03.11.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    @IBOutlet var fullNameTittle: UINavigationItem!
    
    var label1 = ""
    var label2 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberLabel.text = label1
        emailLabel.text = label2
    }


}

