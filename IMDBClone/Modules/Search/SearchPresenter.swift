//
//  SearchPresenter.swift
//  IMDBClone
//
//  Created by Sinan Özman on 12.02.2021.
//  
//

import Foundation

/// All presentation logic
class SearchPresenter: SearchPresenterInterface {
    /// Any representation of information on graphical interface
    weak var view: SearchViewInterface?
    /// Business Logic
    var interactor: SearchInteractorInterface?
    /// Handles navigation between screens
    var router: SearchRouterInterface?
    /// Search Response
    var searchResponse: [SearchResponse]?
    /// Fetch Search
    /// - Parameter movieName: Movie Name
    func fetchSearch(movieName: String) {
        interactor?.getSearchResult(movieName: movieName)
    }
    /// Show Movie Detail Page
    /// - Parameter movie: Movie Detail
    func showMovieDetail(movie: SearchResponse) {
        router?.setupMovieDetail(movie: movie)
    }
}

/// This delegate which do throw response when api request has complated
extension SearchPresenter: SearchInteractorDelegate {
    /// Fetch Search
    /// - Parameter response: Parsed JSON File via Search Response Model
    func fetchSearch(response: SearchResponse?) {
        // Control Response
        if let data = response {
            /// Dummy Array
            var array = [SearchResponse]()
            array.append(data)
            self.searchResponse = array
        }
        view?.updateView()
    }
}
