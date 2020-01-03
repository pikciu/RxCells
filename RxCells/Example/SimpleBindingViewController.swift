//
//  SimpleBindingViewController.swift
//  RxCells
//
//  Created by Tomasz Pikć on 03/01/2020.
//

import UIKit
import RxSwift
import RxCocoa

final class SimpleBindingViewController: UIViewController {
    let tableView = UITableView()
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        
        tableView.register(cellType: SampleCell.self)
        
        Observable.just(Array(0..<100))
            .bind(to: tableView.rx.cells(SampleCell.self, withDelegate: self))
            .disposed(by: disposeBag)
    }
}

extension SimpleBindingViewController: SampleCellDelegate {
    func someDelegateMethod() {
        
    }
}
