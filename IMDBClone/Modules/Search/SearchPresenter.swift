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
}

/// This delegate which do throw response when api request has complated
extension SearchPresenter: SearchInteractorDelegate {
}
