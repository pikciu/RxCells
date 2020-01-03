//
//  UsingFactoryViewModel.swift
//  RxCells
//
//  Created by Tomasz Pikć on 03/01/2020.
//

import Foundation
import RxSwift

protocol UsingFactoryViewModelDelegate: class {
    var items: AnyObserver<[Int]> { get }
}

struct UsingFactoryViewModel {
    private let disposeBag = DisposeBag()
    
    unowned var delegate: UsingFactoryViewModelDelegate
    
    init(delegate: UsingFactoryViewModelDelegate) {
        self.delegate = delegate
        
        Observable.just(Array(0..<100))
            .bind(to: delegate.items)
            .disposed(by: disposeBag)
    }
}
