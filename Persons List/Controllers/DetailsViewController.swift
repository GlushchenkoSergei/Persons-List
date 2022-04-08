//
//  DetailsViewController.swift
//  Persons List
//
//  Created by mac on 08.04.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var phone: UILabel!
    @IBOutlet var email: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        phone.text = "Phone: \(person.phone)"
        email.text = "Email: \(person.email)"
    }
}
