//
//  MovieDetailTableViewControllerGenreCell.swift
//  IMDBClone
//
//  Created by Sinan Özman on 14.02.2021.
//

import Foundation
import UIKit

// MARK: - UITable View Cell
class MovieDetailTableViewControllerGenreCell: UITableViewCell {
    // MARK: - View Objects
    /// Genre Label
    @IBOutlet weak var genreLabel: UILabel!
    // MARK: - Local Variable
    /// Genre
    var genre: String?
    // MARK: - AwakeFromNib
    /// Decleration
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    // MARK: - Setup Cell
    /// Setup User Interface
    func setupUI() {
        // Setup Description
        self.genreLabel.text = genre
    }
}
