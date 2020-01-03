//
//  SampleCell.swift
//  RxCells
//
//  Created by Tomasz Pikć on 03/01/2020.
//

import UIKit
import Reusable

protocol SampleCellDelegate: class {
    func someDelegateMethod()
}

final class SampleCell: UITableViewCell, Configurable, Reusable, HasDelegate {
    typealias Delegate = SampleCellDelegate
    
    weak var delegate: SampleCellDelegate?
    
    func configure(with model: Int) {
        self.textLabel?.text = "value: \(model)"
    }
}
