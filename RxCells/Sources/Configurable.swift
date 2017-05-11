//
//  Configurable.swift
//  RxCells
//
//  Created by Tomasz Pikć on 11/05/2017.
//
//

import Foundation

protocol Configurable {
    associatedtype T
    func configure(with model: T)
}
