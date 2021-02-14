//
//  MovieDetailWriterCollectionViewCell.swift
//  IMDBClone
//
//  Created by Sinan Özman on 14.02.2021.
//

import Foundation
import UIKit

// MARK: - UICollection View Cell
class MovieDetailWriterCollectionViewCell: UICollectionViewCell {
    // MARK: - View Objects
    /// Writer's Image View
    @IBOutlet weak var writerImageView: UIImageView! {
        didSet {
            // Setup Masks to bound
            writerImageView.layer.masksToBounds = true
            // Setup Radius
            writerImageView.layer.cornerRadius = writerImageView.layer.bounds.height / 2
        }
    }
    /// Writer Name Label
    @IBOutlet weak var nameLabel: UILabel!
    // MARK: - AwakeFromNib
    /// Decleration
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    // MARK: - Setup Cell
    /// Setup User Interface
    func setupUI(_ writerName: String?) {
        // Setup Writer Name
        self.nameLabel.text = writerName
    }
}
