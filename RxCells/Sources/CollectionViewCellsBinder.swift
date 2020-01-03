//
//  CollectionViewCellsBinder.swift
//  RxCells
//
//  Created by Tomasz Pikć on 08/10/2019.
//

import UIKit
import RxSwift
import Reusable

struct CollectionViewCellBinder<Cell: UICollectionViewCell>: Binder where Cell: Reusable, Cell: Configurable {
    
    func bind(to ui: UICollectionView) -> Binding<Cell.Model> {
        let source = BehaviorSubject(value: [Cell.Model]())
        let binding = source.bind(to: ui.rx.cells(Cell.self))
        return Binding(observer: source, subscription: binding)
    }
}
