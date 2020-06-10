//
//  DataManager.swift
//  HW_2.7_App
//
//  Created by Алексей Подлевский on 10.06.2020.
//  Copyright © 2020 Independent Developer. All rights reserved.
//

class DataManager {
  let names = ["Alex",
               "Bob",
               "John",
               "Andy",
               "Bruce",
               "Steven",
               "Aaron",
               "Tim",
               "Allan",
               "Ted"].shuffled()
  var surnames = ["Black",
                  "Grey",
                  "Brown",
                  "Smith",
                  "Butler",
                  "Robertson",
                  "Murphy",
                  "Williams",
                  "Obama",
                  "Trump"].shuffled()
  var phones = ["123-456",
                "234-567",
                "345-678",
                "456-789",
                "567-890",
                "678-901",
                "789-012",
                "890-123",
                "901-234",
                "999-999"].shuffled()
  var emails = ["a@mail.ru",
                "b@mail.ru",
                "c@mail.ru",
                "d@mail.ru",
                "e@mail.ru",
                "f@mail.ru",
                "h@mail.ru",
                "i@mail.ru",
                "j@mail.ru",
                "k@mail.ru"].shuffled()
}
