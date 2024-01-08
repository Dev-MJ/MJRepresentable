//
//  UIViewRepresenter.swift
//
//
//  Created by MJ.Lee on 1/5/24.
//

import SwiftUI

public struct UIViewRepresenter<V: UIView>: UIViewRepresentable {
    public typealias UIViewType = V
    private var child: UIViewType
    
    init(_ child: UIViewType) {
        self.child = child
    }
    
    public init(_ child: () -> UIViewType) {
        self.child = child()
    }
    
    public func makeUIView(context: Context) -> UIViewType {
        self.child
    }
    
    public func updateUIView(_ uiView: UIViewType, context: Context) {

    }
    
    public func makeCoordinator() -> () {
        
    }
}
