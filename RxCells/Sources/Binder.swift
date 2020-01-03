//
//  Binder.swift
//  RxCells
//
//  Created by Tomasz Pikć on 03/01/2020.
//

import Foundation

protocol Binder {
    associatedtype Model
    associatedtype UI
    
    func bind(to ui: UI) -> Binding<Model>
}
