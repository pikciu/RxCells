//
//  UICollectionView+Cells.swift
//  RxCells
//
//  Created by Tomasz Pikć on 11/05/2017.
//
//

import UIKit
import RxSwift
import RxCocoa
import Reusable

public extension Reactive where Base: UICollectionView {
    public func cells<S: Sequence, Cell: UICollectionViewCell, O: ObservableType>(_: Cell.Type)
        -> (_ _: O)
        -> Disposable
        where O.E == S, Cell: Reusable, Cell: Configurable, Cell.T == S.Iterator.Element {
            return { source in
                return source.bind(to: self.items(cellIdentifier: Cell.reuseIdentifier, cellType: Cell.self)) { _, model, cell in
                    cell.configure(with: model)
                }
            }
    }
}
