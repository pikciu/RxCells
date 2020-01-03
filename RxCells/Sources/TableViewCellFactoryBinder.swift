//
//  TableViewCellFactoryBinder.swift
//  RxCells
//
//  Created by Tomasz Pikć on 08/10/2019.
//

import UIKit
import RxSwift
import Reusable

struct TableViewCellFactoryBinder<Factory: TableViewCellFactory>: Binder {
    
    let factory: Factory
    
    func bind(to ui: UITableView) -> Binding<Factory.Model> {
        let source = BehaviorSubject(value: [Factory.Model]())
        let binding = source.bind(to: ui.rx.cells(using: factory))
        return Binding(observer: source, subscription: binding)
    }
}
