//
//  CollectionViewCellFactoryBinder.swift
//  RxCells
//
//  Created by Tomasz Pikć on 08/10/2019.
//

import UIKit
import RxSwift
import Reusable

struct CollectionViewCellFactoryBinder<Factory: CollectionViewCellFactory>: Binder {
    let factory: Factory
    
    func bind(to ui: UICollectionView) -> Binding<Factory.Model> {
        let source = BehaviorSubject(value: [Factory.Model]())
        let binding = source.bind(to: ui.rx.cells(using: factory))
        return Binding(observer: source, subscription: binding)
    }
}
