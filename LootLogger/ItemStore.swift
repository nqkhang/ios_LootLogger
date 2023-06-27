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

  func removeItem(_ item: Item) {
    if let index = allItems.firstIndex(of: item) {
      allItems.remove(at: index)
    }
  }

  func moveItem(from fromIndex: Int, to toIndex: Int) {
    if fromIndex == toIndex {
      return
    }

    let moveItem = allItems[fromIndex]

    allItems.remove(at: fromIndex)
    allItems.insert(moveItem, at: toIndex)
  }
}
