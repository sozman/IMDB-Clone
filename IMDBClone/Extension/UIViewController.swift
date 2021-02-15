//
//  UIViewController.swift
//  IMDBClone
//
//  Created by Sinan Özman on 15.02.2021.
//

import Foundation
import UIKit
import MBProgressHUD

extension UIViewController {
    /// Show Loading Dialog with Text
    func showLoadingDialog() {
        MBProgressHUD.showAdded(to: view, animated: true)
    }
    /// Stop Loading Dialog
    func dismissLoadingDialog() {
        MBProgressHUD.hide(for: view, animated: true)
    }
}
