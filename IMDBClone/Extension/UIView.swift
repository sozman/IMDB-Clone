//
//  UIView.swift
//  IMDBClone
//
//  Created by Sinan Özman on 12.02.2021.
//

import Foundation
import UIKit

extension UIView {
    /// Cell Identifier name for table view cell
    static var CellIdentifier: String {
        return "\(self)"
    }
    /// Custom Round Corners
    /// - Parameters:
    ///   - corners: corners
    ///   - radius: radius
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
