//
//  MovieDetailTableViewControllerPosterCell.swift
//  IMDBClone
//
//  Created by Sinan Özman on 13.02.2021.
//

import Foundation
import Kingfisher
import SkeletonView
import UIKit

// MARK: - UITable View Cell
class MovieDetailTableViewControllerPosterCell: UITableViewCell {
    // MARK: - View Objects
    /// Poster Image View
    @IBOutlet weak var posterImageView: UIImageView! {
        didSet {
            // Setup Masks to bounds
            posterImageView.layer.masksToBounds = true
            // Setup Radius
            posterImageView.roundCorners(corners: [.bottomLeft, .bottomRight], radius: 15)
            // Setup view will be skeletonables
            posterImageView.isSkeletonable = true
        }
    }
    // MARK: - Local Variable
    /// Poster Image URL
    var poster: String?
    // MARK: - AwakeFromNib
    /// Decleration
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    // MARK: - Setup Cell
    /// Setup User Interface
    func setupUI() {
        // Show Loading Image Animation
        self.posterImageView.showAnimatedSkeleton()
        // Setup Image
        self.posterImageView.kf.setImage(with: "\(poster ?? "")".url(), completionHandler:  { result in
            switch result {
            case .success:
                self.posterImageView.hideSkeleton()
            case .failure(let errorMessage):
                print("Image Download Error: \(errorMessage.localizedDescription)")
            }
        })
    }
}
