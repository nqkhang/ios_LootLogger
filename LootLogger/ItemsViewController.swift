//
//  ItemsViewController.swift
//  LootLogger
//
//  Created by Quoc Nguyen, Khang on 14/06/2023.
//

import UIKit

class ItemViewController: UITableViewController {
  var itemStore: ItemStore!
  
  @IBAction func addNewItem(_ sender: UIButton) {
    
  }
  
  @IBAction func toggleEditingMode(_ sender: UIButton) {
    
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return itemStore.allItems.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//    let cell = UITableViewCell(style: .value1, reuseIdentifier: "UITableViewCell")
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
    
    let item = itemStore.allItems[indexPath.row]
    
    cell.textLabel?.text = item.name
    cell.detailTextLabel?.text = "$\(item.valueInDollars)"
    
    return cell
  }
}
