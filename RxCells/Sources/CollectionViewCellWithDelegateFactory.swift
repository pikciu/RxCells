//
//  CollectionViewCellWithDelegateFactory.swift
//  RxCells
//
//  Created by Tomasz Pikć on 03/01/2020.
//

import UIKit
import Reusable

struct CollectionViewCellWithDelegateFactory<Cell: UICollectionViewCell>: CollectionViewCellFactory where Cell: HasDelegate & Reusable & Configurable {
    
    let delegate: Cell.Delegate
    
    func create(collectionView: UICollectionView, indexPath: IndexPath, model: Cell.Model) -> UICollectionViewCell {
        let cell: Cell = collectionView.dequeueReusableCell(for: indexPath)
        cell.delegate = delegate
        cell.configure(with: model)
        return cell
    }
}
