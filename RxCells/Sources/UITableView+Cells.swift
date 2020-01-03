//
//  UITableView+Cells.swift
//  RxCells
//
//  Created by Tomasz Pikć on 11/05/2017.
//

import UIKit
import RxSwift
import RxCocoa
import Reusable

public extension Reactive where Base: UITableView {
    func cells<S: Sequence, Cell: UITableViewCell, O: ObservableType>(_: Cell.Type)
        -> (_ _: O)
        -> Disposable
        where O.Element == S, Cell: Reusable & Configurable, Cell.Model == S.Iterator.Element {
            return { source in
                return source.bind(to: self.items(cellIdentifier: Cell.reuseIdentifier, cellType: Cell.self)) { (_, model, cell) in
                    cell.configure(with: model)
                }
            }
    }
    
    func cells<S: Sequence, Cell: UITableViewCell, O: ObservableType>(_: Cell.Type, withDelegate delegate: Cell.Delegate)
        -> (_ _: O)
        -> Disposable
        where O.Element == S, Cell: HasDelegate & Reusable & Configurable, Cell.Model == S.Iterator.Element {
            return { source in
                return source.bind(to: self.items(cellIdentifier: Cell.reuseIdentifier, cellType: Cell.self)) { (_, model, cell) in
                    cell.delegate = delegate
                    cell.configure(with: model)
                }
            }
    }
    
    func cells<F: TableViewCellFactory, S: Sequence, O: ObservableType>(using factory: F)
        -> (_ _: O)
        -> Disposable
        where O.Element == S, F.Model == S.Iterator.Element {
            return { (source) in
                let items = self.items(source)
                return items { (tableView, index, model) in
                    let indexPath = IndexPath(row: index, section: 0)
                    return factory.create(tableView: tableView, indexPath: indexPath, model: model)
                }
            }
    }
    
    func cells<Cell: UITableViewCell>(type: Cell.Type) -> Binding<Cell.Model> where Cell: Reusable & Configurable {
        return TableViewCellBinder<Cell>().bind(to: base)
    }
    
    func cells<Cell: UITableViewCell>(type: Cell.Type, withDelegate delegate: Cell.Delegate) -> Binding<Cell.Model> where Cell: HasDelegate & Reusable & Configurable {
        return TableViewCellFactoryBinder(factory: TableViewCellWithDelegateFactory<Cell>(delegate: delegate)).bind(to: base)
    }
    
    func cells<Factory: TableViewCellFactory>(factory: Factory) -> Binding<Factory.Model> {
        return TableViewCellFactoryBinder(factory: factory).bind(to: base)
    }
}
