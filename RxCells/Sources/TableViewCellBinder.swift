//
//  TableViewCellBinder.swift
//  RxCells
//
//  Created by Tomasz Pikć on 08/10/2019.
//

import UIKit
import RxSwift
import Reusable

struct TableViewCellBinder<Cell: UITableViewCell>: Binder where Cell: Reusable, Cell: Configurable {
    
    func bind(to ui: UITableView) -> Binding<Cell.Model> {
        let source = BehaviorSubject(value: [Cell.Model]())
        let binding = source.bind(to: ui.rx.cells(Cell.self))
        return Binding(observer: source, subscription: binding)
    }
}
