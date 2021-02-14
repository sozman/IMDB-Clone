//
//  MovieDetailActorCollectionViewCell.swift
//  IMDBClone
//
//  Created by Sinan Özman on 14.02.2021.
//

import Foundation
import UIKit

// MARK: - UICollection View Cell
class MovieDetailActorCollectionViewCell: UICollectionViewCell {
    // MARK: - View Objects
    /// Actor's Image View
    @IBOutlet weak var actorImageView: UIImageView! {
        didSet {
            // Setup Masks to bound
            actorImageView.layer.masksToBounds = true
            // Setup Radius
            actorImageView.layer.cornerRadius = actorImageView.layer.bounds.height / 2
        }
    }
    /// Actor Name Label
    @IBOutlet weak var nameLabel: UILabel!
    // MARK: - AwakeFromNib
    /// Decleration
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    // MARK: - Setup Cell
    /// Setup User Interface
    func setupUI(_ actorName: String?) {
        // Setup Writer Name
        self.nameLabel.text = actorName
    }
}
