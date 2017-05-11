//
//  Configurable.swift
//  RxCells
//
//  Created by Tomasz Pikć on 11/05/2017.
//
//

import Foundation

public protocol Configurable {
    associatedtype ModelType
    func configure(with model: ModelType)
}
