//
//  MovieItemModel.swift
//  IMDBClone
//
//  Created by Sinan Özman on 12.02.2021.
//

import Foundation
import UIKit

/// Search Table View Controller Movie Item Model
struct MovieItemModel {
    /// Image Poster
    var image: String?
    /// IMDB Rate
    var rate: Int?
    /// Rate Color
    var rateColor: UIColor?
    /// Movie Name
    var name: String?
    /// Movie Type
    var type: String?
    /// Short Description of movie
    var description: String?
    // MARK: - Declaration
    /// Create Search Table View Controller Movie Item Model
    /// - Parameters:
    ///   - image: Image Poster
    ///   - rate: IMDB Rate
    ///   - name: Movie Name
    ///   - type: Movie Type
    ///   - description: Short Description of movie
    init(image: String?, rate: Double?, name: String?, type: String?, description: String?) {
        self.image = image
        self.rate = Int(floor(rate ?? 0.0))
        self.rateColor = UIColor.getColorOfPercentage(percentage: self.rate ?? 0)
        self.name = name
        self.type = type
        self.description = description
    }
}
