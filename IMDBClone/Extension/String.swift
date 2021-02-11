//
//  String.swift
//  IMDBClone
//
//  Created by Sinan Özman on 11.02.2021.
//  
//

import Foundation
import UIKit

/// String Custom functions and variables
extension String {
    /// Declaration
    /// - Parameter path: Path
    init(absoluteURLStringWithPercentEscapedPath path: String) {
        if !path.hasPrefix("http") {
            self = Config.BaseAPIURL + ((path.hasPrefix("/") || path.hasPrefix("_test")) ? path : "/" + path)
        } else {
            self = path
        }
    }
    /// Email Control with regex
    /// - Returns: is email valid
    func isValidEmail() -> Bool {
        /// Regex
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        /// Email
        let email = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        // Status
        return email.evaluate(with: self)
    }
    /// String to URL Converter
    /// - Returns: URL
    func url() -> URL? {
        let utf8 = self.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        return URL(string: utf8)
    }
    /// String to Bool
    var bool: Bool {
        switch self.lowercased() {
        case "true", "t", "yes", "y", "1":
            return true
        case "false", "f", "no", "n", "0":
            return false
        default:
            return false
        }
    }
    /// Float to string
    var floatValue: Float {
        return (self as NSString).floatValue
    }
    /// Number Formatter
    static let numberFormatter = NumberFormatter()
    /// Double to string
    var doubleValue: Double {
        String.numberFormatter.decimalSeparator = "."
        if let result = String.numberFormatter.number(from: self) {
            return result.doubleValue
        } else {
            String.numberFormatter.decimalSeparator = ","
            if let result = String.numberFormatter.number(from: self) {
                return result.doubleValue
            }
        }
        return 0
    }
    /// String lenght
    var length: Int {
        return count
    }

    // MARK: - Substring

    subscript(i: Int) -> String {
        return self[i..<i + 1]
    }

    func substring(fromIndex: Int) -> String {
        return self[min(fromIndex, length)..<length]
    }

    func substring(toIndex: Int) -> String {
        return self[0..<max(0, toIndex)]
    }

    subscript(r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return String(self[start..<end])
    }

    /// Remove back space
    var isBackspace: Bool {
        let char = self.cString(using: String.Encoding.utf8)!
        return strcmp(char, "\\b") == -92
    }
    /// String to Date
    /// - Parameter format: format type
    /// - Returns: Date
    func dateValue(_ format: String = "yyyy-MM-dd'T'HH:mm:ssZ") -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.date(from: self) ?? Date()
    }
    /// String to date via europe standart
    /// - Returns: Date
    func dateValueGregorian() -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.calendar = Calendar(identifier: .gregorian)
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssXXXXX"
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT")
        return dateFormatter.date(from: self) ?? Date()
    }
    /// Phone Regex 
    enum RegularExpressions: String {
        case phone = "^\\s*(?:\\+?(\\d{1,3}))?([-. (]*(\\d{3})[-. )]*)?((\\d{3})[-. ]*(\\d{2,4})(?:[-.x ]*(\\d+))?)\\s*$"
    }
    /// Regex validation via regular expressions type
    /// - Parameter regex: RegularExpressions
    /// - Returns: Regex valid status
    func isValid(regex: RegularExpressions) -> Bool {
        return isValid(regex: regex.rawValue)
    }
    /// Custom regex validation
    /// - Parameter regex: Regex standart
    /// - Returns: Regex valid status
    func isValid(regex: String) -> Bool {
        return range(of: regex, options: .regularExpression) != nil
    }
    /// Number filter
    /// - Returns: Only numbers
    func onlyDigits() -> String {
        let filtredUnicodeScalars = unicodeScalars.filter {
            CharacterSet.decimalDigits.contains($0)
        }
        return String(String.UnicodeScalarView(filtredUnicodeScalars))
    }
    /// Html String to NSAttributed Text
    var html2AttributedString: NSAttributedString? {
        do {
            return try NSAttributedString(data: Data(utf8),
                    options: [.documentType: NSAttributedString.DocumentType.html,
                              .characterEncoding: String.Encoding.utf8.rawValue],
                    documentAttributes: nil)
        } catch {
            print("error: ", error)
            return nil
        }
    }
    /// Html to String
    var html2String: String {
        return html2AttributedString?.string ?? ""
    }
}