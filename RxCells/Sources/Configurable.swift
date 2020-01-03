//
//  Configurable.swift
//  RxCells
//
//  Created by Tomasz Pikć on 11/05/2017.
//

import Foundation

public protocol Configurable {
    associatedtype Model
    func configure(with model: Model)
}
