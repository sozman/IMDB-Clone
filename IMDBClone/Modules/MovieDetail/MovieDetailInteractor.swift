//
//  MovieDetailInteractor.swift
//  IMDBClone
//
//  Created by Sinan Özman on 13.02.2021.
//  
//

import Foundation

/// All presentation logic via network
class MovieDetailInteractor: MovieDetailInteractorInterface {
    /// Presenter Interactor Delegate
    weak var presenter: MovieDetailInteractorDelegate?
    /// Network layer operation variable
    var operationQueue: OperationQueue = OperationQueue()
}
