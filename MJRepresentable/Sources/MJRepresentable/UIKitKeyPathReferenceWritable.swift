//
//  UIViewKeyPathReferenceWritable.swift
//
//
//  Created by MJ.Lee on 1/5/24.
//

import UIKit

public protocol UIKitKeyPathReferenceWritable {
    associatedtype T
    associatedtype VIEW
    
    func set<Value>(_ keyPath: ReferenceWritableKeyPath<T, Value>, 
                    value: Value) -> VIEW
}

public extension UIKitKeyPathReferenceWritable where Self: UIView {
    func set<Value>(_ keyPath: ReferenceWritableKeyPath<Self, Value>,
                    value: Value) -> Self {
        self[keyPath: keyPath] = value
        return self
    }
}

public extension UIKitKeyPathReferenceWritable where Self: UIViewController {
    func set<Value>(_ keyPath: ReferenceWritableKeyPath<Self, Value>,
                    value: Value) -> Self {
        self[keyPath: keyPath] = value
        return self
    }
}

extension UIView: UIKitKeyPathReferenceWritable { }
extension UIViewController: UIKitKeyPathReferenceWritable { }
