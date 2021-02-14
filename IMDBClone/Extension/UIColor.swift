//
//  UIColor.swift
//  IMDBClone
//
//  Created by Sinan Özman on 12.02.2021.
//

import Foundation
import UIKit

extension UIColor {
    /// 0 - 20 IMDB Rate Color
    static var worstColor: UIColor {
        return UIColor(red: 237.0/255, green: 20.0/255, blue: 26.0/255, alpha: 1.0)
    }
    /// 20 - 30 IMDB Rate Color
    static var badColor: UIColor {
        return UIColor(red: 252.0/255, green: 102.0/255, blue: 48.0/255, alpha: 1.0)
    }
    /// 30 - 50 IMDB Rate Color
    static var normalColor: UIColor {
        return UIColor(red: 252.0/255, green: 175.0/255, blue: 54.0/255, alpha: 1.0)
    }
    /// 50 - 60 IMDB Rate Color
    static var goodColor: UIColor {
        return UIColor(red: 247.0/255, green: 218.0/255, blue: 61.0/255, alpha: 1.0)
    }
    /// 60 - 80 IMDB Rate Color
    static var betterColor: UIColor {
        return UIColor(red: 184.0/255, green: 210.0/255, blue: 55.0/255, alpha: 1.0)
    }
    /// 80 - Infinity IMDB Rate Color
    static var bestColor: UIColor {
        return UIColor(red: 112.0/255, green: 198.0/255, blue: 52.0/255, alpha: 1.0)
    }
    /// Navigation Bar Color
    static var navigationColor: UIColor {
        return UIColor(red: 112.0/255, green: 170.0/255, blue: 218.0/255, alpha: 1.0)
    }
    /// Get Color for imdb persentage
    /// - Parameter percentage: IMDB Percentage
    /// - Returns: UIColor
    public static func getColorOfPercentage(percentage: Int) -> UIColor {
        if percentage <= 20 {
            return worstColor
        } else if (percentage > 20 && percentage < 30) {
            return badColor
        } else if (percentage >= 30 && percentage < 50) {
            return normalColor
        } else if (percentage >= 50 && percentage < 60) {
            return goodColor
        } else if (percentage >= 60 && percentage < 80) {
            return betterColor
        } else {
            return bestColor
        }
    }
}
