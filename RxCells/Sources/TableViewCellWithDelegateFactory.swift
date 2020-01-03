//
//  TableViewCellWithDelegateFactory.swift
//  RxCells
//
//  Created by Tomasz Pikć on 03/01/2020.
//

import UIKit
import Reusable

struct TableViewCellWithDelegateFactory<Cell: UITableViewCell>: TableViewCellFactory where Cell: HasDelegate & Reusable & Configurable {
    
    let delegate: Cell.Delegate
    
    func create(tableView: UITableView, indexPath: IndexPath, model: Cell.Model) -> UITableViewCell {
        let cell: Cell = tableView.dequeueReusableCell(for: indexPath)
        cell.delegate = delegate
        cell.configure(with: model)
        return cell
    }
}
