//
//  ReferenceWritableKeyPathSettable.swift
//
//
//  Created by MJ.Lee on 1/5/24.
//

import UIKit

public protocol ReferenceWritableKeyPathSettable {
    associatedtype T
    associatedtype Object
    
    func set<Value>(_ keyPath: ReferenceWritableKeyPath<T, Value>, 
                    value: Value) -> Object
}

public extension ReferenceWritableKeyPathSettable where Self: UIView {
    func set<Value>(_ keyPath: ReferenceWritableKeyPath<Self, Value>,
                    value: Value) -> Self {
        self[keyPath: keyPath] = value
        return self
    }
}

public extension ReferenceWritableKeyPathSettable where Self: UIViewController {
    func set<Value>(_ keyPath: ReferenceWritableKeyPath<Self, Value>,
                    value: Value) -> Self {
        self[keyPath: keyPath] = value
        return self
    }
}

extension UIView: ReferenceWritableKeyPathSettable { }
extension UIViewController: ReferenceWritableKeyPathSettable { }
