//
//  UIView+SwiftUIView.swift
//
//
//  Created by MJ.Lee on 1/5/24.
//

import UIKit
import SwiftUI

public extension UIView {
    func swiftUIView() -> some View {
        MJViewRepresenter(self)
    }
}

public extension UIViewController {
    func swiftUIView() -> some View {
        MJViewControllerRepresenter(self)
    }
}
