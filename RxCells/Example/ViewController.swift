//
//  ViewController.swift
//  RxCells
//
//  Created by Tomasz Pikć on 11/05/2017.
//
//

import UIKit
import RxSwift
import Reusable

final class ViewController: UIViewController {

    @IBAction func simpleBinding(_ sender: UIButton) {
        let simpleBindingViewController = SimpleBindingViewController()
        show(simpleBindingViewController, sender: sender)
    }
    
    @IBAction func usingFactory(_ sender: UIButton) {
        let factoryBindingViewController = UsingFactoryViewController()
        show(factoryBindingViewController, sender: sender)
    }
}
