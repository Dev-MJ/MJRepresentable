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
        MJRepresenter(self)
    }
}
