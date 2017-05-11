//
//  Delegatable.swift
//  RxCells
//
//  Created by Tomasz Pikć on 11/05/2017.
//
//

import Foundation

public protocol Delegatable: class {
    associatedtype DelegateType
    var delegate: DelegateType? { get set }
}
