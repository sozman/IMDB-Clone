//
//  json.swift
//  IMDBClone
//
//  Created by Sinan Özman on 11.02.2021.
//  
//

import Foundation
import UIKit

/// Json Helper
class JSON {
    /// Decoder for json file
    private let decoder = JSONDecoder()
    /// Encoder for object
    private let encoder = JSONEncoder()
    /// static type property, which is guaranteed to be lazily initialized only once, even when accessed across multiple threads simultaneously
    class var shared: JSON {
        struct Static {
            static let instance: JSON = JSON()
        }
        return Static.instance
    }
    /// Declaration
    init() {
        decoder.dateDecodingStrategy = .customISO8601
        encoder.dateEncodingStrategy = .formatted(Formatter.iso8601)
    }
    /// Decode Json file
    /// - Parameters:
    ///   - type: Model type
    ///   - data: Json File
    /// - Throws: Error type
    /// - Returns: Object which is wanted
    func decode<T>(_ type: T.Type, from data: Data) throws -> T where T: Decodable {
        return try decoder.decode(type, from: data)
    }
    /// Encode object
    /// - Parameter value: Object
    /// - Throws: Error Type
    /// - Returns: Json string
    func encode<T>(_ value: T) throws -> Data where T: Encodable {
        return try encoder.encode(value)
    } 
}
/// Date Coding Strategy
extension JSONDecoder.DateDecodingStrategy {
    static let customISO8601 = custom { decoder throws -> Date in
        let container = try decoder.singleValueContainer()
        let string = try container.decode(String.self)
        if let date = Formatter.iso8601.date(from: string) ?? Formatter.iso8601noFS.date(from: string) {
            return date
        }
        throw DecodingError.dataCorruptedError(in: container, debugDescription: "Invalid date: \(string)")
    }
}