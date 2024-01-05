//
//  MJRepresenter.swift
//
//
//  Created by MJ.Lee on 1/5/24.
//

import SwiftUI

public struct MJRepresenter<UV: UIView>: UIViewRepresentable {
    private var child: UV
    
    public init(_ child: UV) {
        self.child = child
    }
    public func makeUIView(context: Context) -> UV {
        self.child
    }
    
    public func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    public func makeCoordinator() -> () {
        
    }
}

#Preview {
    UILabel()
        .set(\.frame, value: CGRect(x: 20, y: 30, width: 30, height: 60))
        .set(\.backgroundColor, value: .red)
        .set(\.text, value: "asdf")
        .swiftUIView()
//        .border(Color.blue, width: 10)
//        .fixedSize()
}
