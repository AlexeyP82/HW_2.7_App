//
//  PersonsListTableViewController.swift
//  HW_2.7_App
//
//  Created by Алексей Подлевский on 09.06.2020.
//  Copyright © 2020 Independent Developer. All rights reserved.
//

import UIKit

class PersonsListTableViewController: UITableViewController {
  
  var personList: [Person]!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    personList = (tabBarController as! TabBarController).personList
  }
  
  // MARK: - Table view data source
  override func tableView(_ tableView: UITableView,
                          numberOfRowsInSection section: Int) -> Int {
    personList.count
  }
  
  override func tableView(_ tableView: UITableView,
                          cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell",
                                             for: indexPath)
    
    cell.textLabel?.text = personList[indexPath.row].personFullName
    
    return cell
  }
  
  override func tableView(_ tableView: UITableView,
                          didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
  }
  
  // MARK: - Navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let indexPath = tableView.indexPathForSelectedRow else { return }
    let detailVC = segue.destination as! DetailPersonViewController
    detailVC.person = personList[indexPath.row]
  }
}
