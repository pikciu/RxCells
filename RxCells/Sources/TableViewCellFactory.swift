//
//  TableViewCellFactory.swift
//  RxCells
//
//  Created by Tomasz Pikć on 08/10/2019.
//

import UIKit

public protocol TableViewCellFactory {
    associatedtype Model
    
    func create(tableView: UITableView, indexPath: IndexPath, model: Model) -> UITableViewCell
}
