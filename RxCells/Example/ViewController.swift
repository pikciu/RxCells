//
//  ViewController.swift
//  RxCells
//
//  Created by Tomasz Pikć on 11/05/2017.
//
//

import UIKit
import RxSwift
import Reusable

final class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(cellType: SampleCell.self)
        
        _ = Observable.just(Array(0..<100)).bind(to: tableView.rx.cells(SampleCell.self, withDelegate: self))
    }


}

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

extension ViewController: SampleCellDelegate {
    func someDelegateMethod() {
        
    }
}
