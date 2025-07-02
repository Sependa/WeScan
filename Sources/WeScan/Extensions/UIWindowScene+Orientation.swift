//
//  UIWindowScene+Orientation.swift
//  WeScan
//
//  Created by Michał Bażyński on 02/07/2025.
//

import UIKit

extension UIWindowScene {
    static func rotationAngleForCurrentOrientation() -> CGFloat? {
        guard let orientation = (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.interfaceOrientation else {
            return nil
        }

        switch orientation {
        case .portrait: return 0
        case .landscapeRight: return -.pi / 2
        case .landscapeLeft: return .pi / 2
        case .portraitUpsideDown: return .pi
        default: return nil
        }
    }
}
