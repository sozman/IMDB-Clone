//
//  Formatter.swift
//  IMDBClone
//
//  Created by Sinan Özman on 11.02.2021.
//  
//
import Foundation

/// Formatter
extension Formatter {
    /** 
    Iso 8601 Standart
    - returns: iso 8601 standart formatter
    */
    static let iso8601: DateFormatter = {
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXXXX"
        return formatter
    }()
    /**
    Iso8601noFS Standart 
    - returns: Iso8601noFS standart formatter
    */
    static let iso8601noFS: DateFormatter = {
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssXXXXX"
        return formatter
    }()
}