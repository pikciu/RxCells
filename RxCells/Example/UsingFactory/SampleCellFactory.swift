//
//  SampleCellFactory.swift
//  RxCells
//
//  Created by Tomasz Pikć on 03/01/2020.
//

import UIKit
import Reusable

final class SampleCellFactory: TableViewCellFactory {
    
    weak var delegate: SampleCellDelegate?
    
    func create(tableView: UITableView, indexPath: IndexPath, model: Int) -> UITableViewCell {
        if model % 2 == 0 {
            let cell: SampleCell = tableView.dequeueReusableCell(for: indexPath)
            cell.delegate = delegate
            cell.configure(with: model)
            return cell
        } else {
            let cell: SecondSampleCell = tableView.dequeueReusableCell(for: indexPath)
            cell.configure(with: model)
            return cell
        }
    }
}
