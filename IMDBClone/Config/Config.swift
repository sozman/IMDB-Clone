//
//  Config.swift
//  IMDBClone
//
//  Created by Sinan Özman on 11.02.2021.
//  
//

import Foundation
import CoreLocation

/// Configration Class
class Config {
    /// Project's Version Name
    static var VersionName = "Lupin"
    /// Project's Build Number
    static var BuildNumber = "1.0"
    /** Request Data Visibility settings
     - returns: Data Request Visibility Status
     */
    static var DataRequestDebugMode: Bool {
        #if DEBUG
        return true
        #else
        return false
        #endif
    }
    /** Response Data Visibility settings
     - returns: Data Response Visibility Status
     */
    static var DataResponseDebugMode: Bool {
        #if DEBUG
        return true
        #else
        return false
        #endif
    }
    /// Base API URL
    static var BaseAPIURL = "http://www.omdbapi.com/"
    /// API Key
    static var ApiKey = "&apikey=your api key"
    /// Read Config Function
    static func readConfig() {
        print("IMDB-Clone")
        print("This Application has been created by Sinan OZMAN")
        print("Build Number: \(BuildNumber)")
        print("Version Name: \(VersionName)")
    }
}
