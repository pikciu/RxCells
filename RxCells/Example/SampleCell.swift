//
//  SampleCell.swift
//  RxCells
//
//  Created by Tomasz Pikć on 11/05/2017.
//
//

import UIKit
import Reusable

final class SampleCell: UITableViewCell {
    @IBOutlet weak var valueLabel: UILabel!
    
}

extension SampleCell: NibLoadable {

}

extension SampleCell: Configurable {
	func configure(with model: SampleModel) {
        valueLabel.text = "value: \(model.value)"
    }
}
