//
//  MovieDetailPresenter.swift
//  IMDBClone
//
//  Created by Sinan Özman on 13.02.2021.
//  
//

import Foundation

/// All presentation logic
class MovieDetailPresenter: MovieDetailPresenterInterface {
    /// Any representation of information on graphical interface
    weak var view: MovieDetailViewInterface?
    /// Business Logic
    var interactor: MovieDetailInteractorInterface?
    /// Handles navigation between screens
    var router: MovieDetailRouterInterface?
}

/// This delegate which do throw response when api request has complated
extension MovieDetailPresenter: MovieDetailInteractorDelegate {
}
