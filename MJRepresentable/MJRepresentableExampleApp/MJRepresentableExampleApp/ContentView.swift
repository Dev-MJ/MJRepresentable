//
//  ContentView.swift
//  MJRepresentableExampleApp
//
//  Created by mj.lee on 1/5/24.
//

import SwiftUI
import MJRepresentable

struct ContentView: View {
    var body: some View {
        UILabel()
            .set(\.backgroundColor, value: .red)
            .set(\.text, value: "asdfasdf")
            .swiftUIView()
            .fixedSize()
        
        MJViewRepresenter {
            let b = UIButton()
            b.setTitle("asdfasdf", for: .normal)
            b.backgroundColor = .blue
            return b
        }
        .fixedSize()
    }
}

#Preview {
    ContentView()
}
