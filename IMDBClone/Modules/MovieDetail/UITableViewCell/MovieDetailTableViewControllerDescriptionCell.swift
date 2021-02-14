//
//  MovieDetailTableViewControllerDescriptionCell.swift
//  IMDBClone
//
//  Created by Sinan Özman on 14.02.2021.
//

import Foundation
import UIKit

// MARK: - UITable View Cell
class MovieDetailTableViewControllerDescriptionCell: UITableViewCell {
    // MARK: - View Objects
    /// Description Label
    @IBOutlet weak var descriptionLabel: UILabel!
    // MARK: - Local Variable
    /// Description Content
    var descriptionContent: String?
    // MARK: - AwakeFromNib
    /// Decleration
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    // MARK: - Setup Cell
    /// Setup User Interface
    func setupUI() {
        // Setup Description
        self.descriptionLabel.text = descriptionContent
    }
}
