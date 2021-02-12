//
//  SearchTableViewControllerItemCell.swift
//  IMDBClone
//
//  Created by Sinan Özman on 12.02.2021.
//

import Foundation
import UIKit
import Kingfisher
import SkeletonView

// MARK: - UITable View Cell
class SearchTableViewControllerItemCell: UITableViewCell {
    // MARK: - View Objects
    /// Poster Image View
    @IBOutlet weak var posterImageView: UIImageView! {
        didSet {
            // Setup Masks To Bounds
            posterImageView.layer.masksToBounds = true
            // Setup Radius
            posterImageView.layer.cornerRadius = 10
            // Setup view will be skeletonables
            posterImageView.isSkeletonable = true
        }
    }
    /// IMDB Rate View
    @IBOutlet weak var rateBoxView: UIView! {
        didSet {
            // Setup Radius
            rateBoxView.layer.cornerRadius = rateBoxView.layer.bounds.height / 2
        }
    }
    /// IMDB Rate Label
    @IBOutlet weak var rateLabel: UILabel!
    /// Movie Name Label
    @IBOutlet weak var nameLabel: UILabel!
    /// Movie Type Label
    @IBOutlet weak var typeLabel: UILabel!
    /// Description Label
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // MARK: - Local Variable
    /// Data
    var model: MovieItemModel?
    // MARK: - AwakeFromNib
    /// Decleration
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    // MARK: - Setup Cell
    /// Setup User Interface
    func setupUI() {
        // Download Image Action
        downloadImagePoster()
        // Setup IMDB Rate
        self.rateLabel.text = "\(model?.rate ?? 0) / 10"
        // Setup IMDB Rate Color
        self.rateBoxView.backgroundColor = model?.rateColor ?? .clear
        // Setup Name
        self.nameLabel.text = model?.name
        // Setup Type
        self.typeLabel.text = model?.type
        // Setup Description
        self.descriptionLabel.text = model?.description
    }
    /// Download Image Poster
    private func downloadImagePoster() {
        // Show Loading Image Animation
        self.posterImageView.showAnimatedGradientSkeleton()
        // Setup Image
        self.posterImageView.kf.setImage(with: "\(model?.image ?? "")".url(), completionHandler:  { result in
            switch result {
            case .success:
                self.posterImageView.stopSkeletonAnimation()
            case .failure(let errorMessage):
                print("Image Download Error: \(errorMessage.localizedDescription)")
            }
        })
    }
}
