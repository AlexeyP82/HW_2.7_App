//
//  DetailPersonViewController.swift
//  HW_2.7_App
//
//  Created by Алексей Подлевский on 10.06.2020.
//  Copyright © 2020 Independent Developer. All rights reserved.
//

import UIKit

class DetailPersonViewController: UIViewController {
  
  @IBOutlet weak var phoneLabel: UILabel!
  @IBOutlet weak var emailLabel: UILabel!
  
  var person: Person!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationItem.title = "\(person.personFullName)"
    
    phoneLabel.text = "Phone: \(person.phone)"
    emailLabel.text = "Email: \(person.email)"
  }
}
