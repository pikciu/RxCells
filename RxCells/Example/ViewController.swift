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
        
        _ = Observable.just(Array(0..<100)).bind(to: tableView.rx.cells(SampleCell.self))
    }


}

final class SampleCell: UITableViewCell, Configurable, Reusable {
    func configure(with model: Int) {
        self.textLabel?.text = "value: \(model)"
    }
}
