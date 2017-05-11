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

extension Reactive where Base: UITableView {
    func cells<S: Sequence, Cell: UITableViewCell, O: ObservableType>(_: Cell.Type)
        -> (_ _: O)
        -> Disposable
        where O.E == S, Cell: Reusable, Cell: Configurable, Cell.T == S.Iterator.Element {
            return { source in
                return source.bindTo(self.items(cellIdentifier: Cell.reuseIdentifier, cellType: Cell.self)) { _, model, cell in
                    cell.configure(with: model)
                }
            }
    }
}
