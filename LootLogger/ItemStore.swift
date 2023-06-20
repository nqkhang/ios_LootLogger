//
//  ItemStore.swift
//  LootLogger
//
//  Created by Quoc Nguyen, Khang on 15/06/2023.
//

import UIKit

class ItemStore {
  var allItems = [Item]()

  @discardableResult func createItem() -> Item {
    let newItem = Item(random: true)
    allItems.append(newItem)
    return newItem
  }
}
