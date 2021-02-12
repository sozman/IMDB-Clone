//
//  SearchInteractor.swift
//  IMDBClone
//
//  Created by Sinan Özman on 12.02.2021.
//  
//

import Foundation

/// All presentation logic via network
class SearchInteractor: SearchInteractorInterface {
    /// Presenter Interactor Delegate
    weak var presenter: SearchInteractorDelegate?
    /// Get Search Result
    /// - Parameter movieName: Movie Name
    func getSearchResult(movieName: String) {
        WebService.searchMovie(movieName: movieName) { (response) in
            self.presenter?.fetchSearch(response: response)
        }
    }
}
