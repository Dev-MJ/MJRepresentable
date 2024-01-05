//
//  UIViewKeyPathReferenceWritable.swift
//
//
//  Created by MJ.Lee on 1/5/24.
//

import UIKit

public protocol UIViewKeyPathReferenceWritable {
    associatedtype T
    associatedtype VIEW
    
    func set<Value>(_ keyPath: ReferenceWritableKeyPath<T, Value>, 
                    value: Value) -> VIEW
}

public extension UIViewKeyPathReferenceWritable {
    func set<Value>(_ keyPath: ReferenceWritableKeyPath<Self, Value>, 
                    value: Value) -> Self {
        self[keyPath: keyPath] = value
        return self
    }
}

extension UIView: UIViewKeyPathReferenceWritable { }
