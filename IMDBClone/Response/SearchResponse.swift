//
//  SearchResponse.swift
//  IMDBClone
//
//  Created by Sinan Özman on 12.02.2021.
//

import Foundation

/// Search Response Model
struct SearchResponse: Codable {
    /// Title
    var title: String?
    /// Year
    var year: String?
    /// Rated
    var rated: String?
    /// Released
    var released: String?
    /// Run Time
    var runTime: String?
    /// Genre
    var genre: String?
    /// Director
    var director: String?
    /// Writer
    var writer: String?
    /// Actors
    var actors: String?
    /// Plot
    var plot: String?
    /// Language
    var language: String?
    /// Country
    var country: String?
    /// Awards
    var awards: String?
    /// Poster
    var poster: String?
    /// Ratings
    var ratings: [SearchRatingsModel]?
    /// Meta Score
    var metaScore: String?
    /// IMDB Rating
    var imdbRating: String?
    /// IMDB Votes
    var imdbVotes: String?
    /// IMDB ID
    var imdbID: String?
    /// Type
    var type: String?
    /// DVD
    var dvd: String?
    /// Box Office
    var boxOffice: String?
    /// Production
    var production: String?
    /// Web Site
    var webSite: String?
    /// Response
    var response: String?
    /// Json Key Setup
    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case rated = "Rated"
        case released = "Released"
        case runTime = "Runtime"
        case genre = "Genre"
        case director = "Director"
        case writer = "Writer"
        case actors = "Actors"
        case plot = "Plot"
        case language = "Language"
        case country = "Country"
        case awards = "Awards"
        case poster = "Poster"
        case ratings = "Ratings"
        case metaScore = "Metascore"
        case imdbRating = "imdbRating"
        case imdbVotes = "imdbVotes"
        case imdbID = "imdbID"
        case type = "Type"
        case dvd = "DVD"
        case boxOffice = "BoxOffice"
        case production = "Production"
        case webSite = "Website"
        case response = "Response"
    }
}

/// Search Ratings Model
struct SearchRatingsModel: Codable {
    /// Source
    var source: String?
    /// Value
    var value: String?
    /// Json Key Setup
    enum CodingKeys: String, CodingKey {
        case source = "Source"
        case value = "Value"
    }
}
