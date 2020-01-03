//
//  UsingFactoryViewController.swift
//  RxCells
//
//  Created by Tomasz Pikć on 03/01/2020.
//

import UIKit
import Reusable
import RxSwift
import RxCocoa

final class UsingFactoryViewController: UIViewController, UsingFactoryViewModelDelegate {
    
    private let tableView = UITableView()
    
    private let disposeBag = DisposeBag()
    private var viewModel: UsingFactoryViewModel!
    private let factory = SampleCellFactory()
    
    var items: AnyObserver<[Int]> {
        return tableView.rx.cells(factory: factory).disposed(by: disposeBag)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        tableView.register(cellType: SampleCell.self)
        tableView.register(cellType: SecondSampleCell.self)
        
        factory.delegate = self
        
        viewModel = UsingFactoryViewModel(delegate: self)
    }
}

extension UsingFactoryViewController: SampleCellDelegate {
    func someDelegateMethod() {
        
    }
}
