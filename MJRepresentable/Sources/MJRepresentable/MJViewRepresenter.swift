//
//  MJRepresenter.swift
//
//
//  Created by MJ.Lee on 1/5/24.
//

import SwiftUI

public struct MJViewRepresenter<V: UIView>: UIViewRepresentable {
    public typealias UIViewType = V
    private var child: V
    
    public init(_ child: () -> V) {
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
