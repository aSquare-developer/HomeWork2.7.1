//
//  PersonViewController.swift
//  HomeWork2.7.1
//
//  Created by Artur Anissimov on 09.11.2021.
//

import UIKit

class PersonViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.fullName
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }
    
}
