//
//  UIViewControllerRepresenter.swift
//  
//
//  Created by mj.lee on 1/5/24.
//

import SwiftUI

public struct UIViewControllerRepresenter<V: UIViewController>: UIViewControllerRepresentable {
    
    public typealias UIViewControllerType = V
    private var child: UIViewControllerType
    
    init(_ child: UIViewControllerType) {
        self.child = child
    }
    
    public init(_ child: () -> UIViewControllerType) {
        self.child = child()
    }
    
    public func makeUIViewController(context: Context) -> UIViewControllerType {
        self.child
    }
    
    public func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}

