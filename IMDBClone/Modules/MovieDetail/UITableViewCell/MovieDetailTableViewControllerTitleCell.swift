//
//  MovieDetailTableViewControllerTitleCell.swift
//  IMDBClone
//
//  Created by Sinan Özman on 14.02.2021.
//

import Foundation
import Kingfisher
import UIKit

// MARK: - UITable View Cell
class MovieDetailTableViewControllerTitleCell: UITableViewCell {
    // MARK: - View Objects
    /// Movie Name Label
    @IBOutlet weak var movieNameLabel: UILabel!
    /// First Star Image View
    @IBOutlet weak var firstStarImageView: UIImageView! {
        didSet {
            // Setup Boolean value that determines whether the image is highlighted.
            firstStarImageView.isHighlighted = false
            // Setup Tag
            firstStarImageView.tag = 0
        }
    }
    /// Second Star Image View
    @IBOutlet weak var secondStarImageView: UIImageView! {
        didSet {
            // Setup Boolean value that determines whether the image is highlighted.
            secondStarImageView.isHighlighted = false
            // Setup Tag
            secondStarImageView.tag = 1
        }
    }
    /// Third Star Image View
    @IBOutlet weak var thirdStarImageView: UIImageView! {
        didSet {
            // Setup Boolean value that determines whether the image is highlighted.
            thirdStarImageView.isHighlighted = false
            // Setup Tag
            thirdStarImageView.tag = 2
        }
    }
    /// Fourth Star Image View
    @IBOutlet weak var fourthStarImageView: UIImageView! {
        didSet {
            // Setup Boolean value that determines whether the image is highlighted.
            fourthStarImageView.isHighlighted = false
            // Setup Tag
            fourthStarImageView.tag = 3
        }
    }
    /// Fifth Star Image View
    @IBOutlet weak var fifthStarImageView: UIImageView! {
        didSet {
            // Setup Boolean value that determines whether the image is highlighted.
            fifthStarImageView.isHighlighted = false
            // Setup Tag
            fifthStarImageView.tag = 4
        }
    }
    // MARK: - Local Variable
    /// Movie Rate
    var rate: Int?
    /// Movie Name
    var name: String?
    // MARK: - AwakeFromNib
    /// Decleration
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    // MARK: - Setup Cell
    /// Setup User Interface
    func setupUI() {
        // Setup Movie Name Label
        self.movieNameLabel.text = name
        // Setup Rate
        if let imdbRate = rate {
            /// Half Rate for 5 star
            let halfRate = imdbRate / 2
            for i in 0...halfRate {
                /// Star Image View
                guard let imageView = self.contentView.viewWithTag(i) as? UIImageView else { return }
                imageView.isHighlighted = true
            }
        }
    }
}
