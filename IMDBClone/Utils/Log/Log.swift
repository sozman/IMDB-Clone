//
//  Log.swift
//  IMDBClone
//
//  Created by Sinan Özman on 11.02.2021.
//  
//

import Foundation

/// Informations are added on the log file by this function
/// - Parameters:
///   - file: File name
///   - function: function name
///   - line: which line information
///   - message: message which you write
public func log<T>(file: String = #file, function: String = #function, line: Int = #line, _ message: T) {
    // get the current date and time
    let currentDateTime = Date()
    // initialize the date formatter and set the style
    let formatter = DateFormatter()
    formatter.timeStyle = .medium
    formatter.dateStyle = .long
    // get the date time String from the date object
    let date = formatter.string(from: currentDateTime)
    #if DEBUG
    print("[ LOG ] [\(date)]  message: [[ \(message) ]], func: \(function), line: \(line), file: \(file)")
    #endif
}
/// Informations are added on the console by this function
/// - Parameters:
///   - file: File name
///   - function: function name
///   - line: which line information
///   - message: message which you write
public func error<T>(file: String = #file, function: String = #function, line: Int = #line, _ message: T) {
    // get the current date and time
    let currentDateTime = Date()
    // initialize the date formatter and set the style
    let formatter = DateFormatter()
    formatter.timeStyle = .medium
    formatter.dateStyle = .long
    // get the date time String from the date object
    let date = formatter.string(from: currentDateTime)
    print("[ ERROR ] [\(date)]  message: [[ \(message) ]], func: \(function), line: \(line), file: \(file)")
}
/// Informations are added on the console by this function
/// - Parameters:
///   - file: File name
///   - function: function name
///   - line: which line information
///   - message: message which you write
public func info<T>(file: String = #file, function: String = #function, line: Int = #line, _ message: T) {
    // get the current date and time
    let currentDateTime = Date()
    // initialize the date formatter and set the style
    let formatter = DateFormatter()
    formatter.timeStyle = .medium
    formatter.dateStyle = .long
    // get the date time String from the date object
    let date = formatter.string(from: currentDateTime)
    print("[ INFO ] [\(date)]  message: [[ \(message) ]], func: \(function), line: \(line), file: \(file)")
}
/// Informations are added on the console by this function
/// - Parameters:
///   - file: File name
///   - function: function name
///   - line: which line information
///   - message: message which you write
public func warning<T>(file: String = #file, function: String = #function, line: Int = #line, _ message: T) {
    // get the current date and time
    let currentDateTime = Date()
    // initialize the date formatter and set the style
    let formatter = DateFormatter()
    formatter.timeStyle = .medium
    formatter.dateStyle = .long
    // get the date time String from the date object
    let date = formatter.string(from: currentDateTime)
    #if DEBUG
    print("[ WARNING ] [\(date)]  message: [[ \(message) ]], func: \(function), line: \(line), file: \(file)")
    #endif
}
/// Informations are added on the console by this function
/// - Parameters:
///   - file: File name
///   - function: function name
///   - line: which line information
///   - message: message which you write
public func debug<T>(file: String = #file, function: String = #function, line: Int = #line, _ message: T) {
    // get the current date and time
    let currentDateTime = Date()
    // initialize the date formatter and set the style
    let formatter = DateFormatter()
    formatter.timeStyle = .medium
    formatter.dateStyle = .long
    // get the date time String from the date object
    let date = formatter.string(from: currentDateTime)
    #if DEBUG
    print("[ DEBUG ] [\(date)]  message: [[ \(message) ]], func: \(function), line: \(line), file: \(file)")
    #endif
}
