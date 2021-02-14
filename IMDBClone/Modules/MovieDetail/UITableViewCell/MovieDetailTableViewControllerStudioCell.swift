//
//  MovieDetailTableViewControllerStudioCell.swift
//  IMDBClone
//
//  Created by Sinan Özman on 14.02.2021.
//

import Foundation
import UIKit

// MARK: - UITable View Cell
class MovieDetailTableViewControllerStudioCell: UITableViewCell {
    // MARK: - View Objects
    /// Studio Label
    @IBOutlet weak var studioLabel: UILabel!
    // MARK: - Local Variable
    /// Studio
    var studio: String?
    // MARK: - AwakeFromNib
    /// Decleration
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    // MARK: - Setup Cell
    /// Setup User Interface
    func setupUI() {
        // Setup Description
        self.studioLabel.text = studio
    }
}
