//
//  PersonModel.swift
//  HW_2.7_App
//
//  Created by Алексей Подлевский on 09.06.2020.
//  Copyright © 2020 Independent Developer. All rights reserved.
//

struct Person {
  let name: String
  let surname: String
  let phone: String
  let email: String
  
  var personFullName: String {
    "\(name) \(surname)"
  }
}

extension Person {
  static func getPersonList() -> [Person] {
    let data = DataManager()
    data.names.shuffle()
    data.surnames.shuffle()
    data.phones.shuffle()
    data.emails.shuffle()
    
    var persons: [Person] = []
    
    for num in 0..<data.names.count {
      persons.append(Person(name: data.names[num],
                            surname: data.surnames[num],
                            phone: data.phones[num],
                            email: data.emails[num]))
    }
    
    return persons
  }
}
