//
//  CollectionViewCellFactory.swift
//  RxCells
//
//  Created by Tomasz Pikć on 08/10/2019.
//

import UIKit

public protocol CollectionViewCellFactory {
    associatedtype Model
    
    func create(collectionView: UICollectionView, indexPath: IndexPath, model: Model) -> UICollectionViewCell
}
