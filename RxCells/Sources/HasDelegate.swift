//
//  HasDelegate.swift
//  RxCells
//
//  Created by Tomasz Pikć on 11/05/2017.
//

import Foundation

public protocol HasDelegate: class {
    associatedtype Delegate
    var delegate: Delegate? { get set }
}
