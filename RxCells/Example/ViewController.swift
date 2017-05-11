//
//  ViewController.swift
//  RxCells
//
//  Created by Tomasz Pikć on 11/05/2017.
//
//

import UIKit
import RxSwift

final class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(cellType: SampleCell.self)
        
        _ = Observable.just(Array(0..<100).map({ SampleModel(value: $0) }))
            .bindTo(tableView.rx.cells(SampleCell.self))
    }


}

