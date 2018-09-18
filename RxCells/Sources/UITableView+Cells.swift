//
//  UITableView+Cells.swift
//  RxCells
//
//  Created by Tomasz Pikć on 11/05/2017.
//
//

import UIKit
import RxSwift
import RxCocoa
import Reusable

public extension Reactive where Base: UITableView {
    public func cells<S: Sequence, Cell: UITableViewCell, O: ObservableType>(_: Cell.Type)
        -> (_ _: O)
        -> Disposable
        where O.E == S, Cell: Reusable, Cell: Configurable, Cell.Model == S.Iterator.Element {
            return { source in
                return source.bind(to: self.items(cellIdentifier: Cell.reuseIdentifier, cellType: Cell.self)) { (_, model, cell) in
                    cell.configure(with: model)
                }
            }
    }
    
    public func cells<S: Sequence, Cell: UITableViewCell, O: ObservableType, D>(_: Cell.Type, withDelegate delegate: D)
        -> (_ _: O)
        -> Disposable
        where O.E == S, Cell: HasDelegate & Reusable, Cell: Configurable, Cell.Model == S.Iterator.Element, Cell.Delegate == D {
            return { source in
                return source.bind(to: self.items(cellIdentifier: Cell.reuseIdentifier, cellType: Cell.self)) { (_, model, cell) in
                    cell.delegate = delegate
                    cell.configure(with: model)
                }
            }
    }
}
