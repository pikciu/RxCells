//
//  SecondSampleCell.swift
//  RxCells
//
//  Created by Tomasz Pikć on 03/01/2020.
//

import UIKit
import Reusable

final class SecondSampleCell: UITableViewCell, Reusable, Configurable {
    
    func configure(with model: Int) {
        self.textLabel?.text = "value: \(model) - second cell type"
    }
}
