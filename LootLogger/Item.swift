//
//  Item.swift
//  LootLogger
//
//  Created by Quoc Nguyen, Khang on 14/06/2023.
//

import UIKit

class Item {
  var name: String
  var valueInDollars: Int
  var serialNumber: String?
  let dateCreate: Date

  init(name: String, valueInDollars: Int, serialNumber: String? = nil) {
    self.name = name
    self.valueInDollars = valueInDollars
    self.serialNumber = serialNumber
    self.dateCreate = Date()
  }

  convenience init(random: Bool = false) {
    if random {
      let adjectives = ["Happy", "Beautiful", "Intelligent", "Courageous", "Creative", "Reliable", "Exciting", "Serene", "Ambitious", "Playful"]
      let nouns = ["Cat", "Tree", "Car", "Book", "Sun", "Ocean", "Mountain", "Phone", "Friend", "Coffee"]
      
      let randomAdjective = adjectives.randomElement()!
      let randomNoun = nouns.randomElement()!

      let randomName = "\(randomAdjective) \(randomNoun)"
      let randomValue = Int.random(in: 10..<100)
      
      let randomSerialNumber = UUID().uuidString.components(separatedBy: "-").first!
      self.init(name: randomName,
                valueInDollars: randomValue,
                serialNumber: randomSerialNumber)

    } else {
      self.init(name : "", valueInDollars: 0, serialNumber: nil)
    }
  }
}
