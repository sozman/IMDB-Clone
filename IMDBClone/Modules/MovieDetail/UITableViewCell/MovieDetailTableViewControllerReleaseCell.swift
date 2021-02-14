//
//  MovieDetailTableViewControllerReleaseCell.swift
//  IMDBClone
//
//  Created by Sinan Özman on 14.02.2021.
//

import Foundation
import UIKit

// MARK: - UITable View Cell
class MovieDetailTableViewControllerReleaseCell: UITableViewCell {
    // MARK: - View Objects
    /// Release Label
    @IBOutlet weak var releaseLabel: UILabel!
    // MARK: - Local Variable
    /// Release
    var release: String?
    // MARK: - AwakeFromNib
    /// Decleration
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    // MARK: - Setup Cell
    /// Setup User Interface
    func setupUI() {
        // Setup Description
        self.releaseLabel.text = release
    }
}
