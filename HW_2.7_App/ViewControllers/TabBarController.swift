//
//  TabBarController.swift
//  HW_2.7_App
//
//  Created by Алексей Подлевский on 10.06.2020.
//  Copyright © 2020 Independent Developer. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
  
  var personList = Person.getPersonList()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationItem.title = "Persons List"
  }  
}
