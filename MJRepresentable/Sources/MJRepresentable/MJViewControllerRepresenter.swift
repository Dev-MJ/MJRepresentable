//
//  MJViewControllerRepresenter.swift
//  
//
//  Created by mj.lee on 1/5/24.
//

import SwiftUI

public struct MJViewControllerRepresenter<V: UIViewController>: UIViewControllerRepresentable {
    public typealias UIViewControllerType = V
    private var child: V
    
    public init(_ child: V) {
        self.child = child
    }
    
    public init(_ child: () -> V) {
        self.child = child()
    }
    
    public func makeUIViewController(context: Context) -> UIViewControllerType {
        self.child
    }
    
    public func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}

