//
//  WebService.swift
//  IMDBClone
//
//  Created by Sinan Özman on 12.02.2021.
//

import Foundation
import Alamofire

class WebService {
    /// Search Movie with name on the OMDB API
    /// - Parameters:
    ///   - name: Movie Name
    ///   - completion: Parsed JSON File via Search Response Model
    /// - Returns: Void Function
    static func searchMovie(movieName name: String, completion: @escaping (SearchResponse?) -> ()) {
        /// API Address
        let api = "\(Config.BaseAPIURL)?t=\(name)\(Config.ApiKey)"
        Alamofire.request(api).responseJSON { (response) in
            do {
                if let data = response.data {
                    let json = try JSON.shared.decode(SearchResponse.self, from: data)
                    completion(json)
                } else {
                    completion(nil)
                }
            } catch {
                print("error: \(error.localizedDescription)")
                completion(nil)
            }
        }
    }
}
