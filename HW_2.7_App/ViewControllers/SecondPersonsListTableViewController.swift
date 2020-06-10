//
//  SecondPersonsListTableViewController.swift
//  HW_2.7_App
//
//  Created by Алексей Подлевский on 10.06.2020.
//  Copyright © 2020 Independent Developer. All rights reserved.
//

import UIKit

class SecondPersonsListTableViewController: UITableViewController {
  
  var personList: [Person]!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    personList = (tabBarController as! TabBarController).personList
  }
  
  // MARK: - Table view data source
  override func numberOfSections(in tableView: UITableView) -> Int {
    personList.count
  }
  
  override func tableView(_ tableView: UITableView,
                          numberOfRowsInSection section: Int) -> Int {
    2
  }
  
  override func tableView(_ tableView: UITableView,
                          titleForHeaderInSection section: Int) -> String? {
    personList[section].personFullName
  }
  
  override func tableView(_ tableView: UITableView,
                          cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell",
                                             for: indexPath)
    
    switch indexPath.row {
    case 0:
      cell.textLabel?.text = personList[indexPath.section].phone
      cell.imageView?.image = UIImage.init(systemName: "phone")
    default:
      cell.textLabel?.text = personList[ indexPath.section].email
      cell.imageView?.image = UIImage.init(systemName: "tray")
    }
    
    return cell
  }
  
  override func tableView(_ tableView: UITableView,
                          didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
  }
}
