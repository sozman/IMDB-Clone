//
//  SearchProtocols.swift
//  IMDBClone
//
//  Created by Sinan Özman on 12.02.2021.
//  
//

import UIKit

// MARK: - Presenter Interface
/// All presentation logic interface
protocol SearchPresenterInterface: class {
    /// Any representation of information on graphical interface
    var view: SearchViewInterface? { get set }
    /// Business Logic
    var interactor: SearchInteractorInterface? { get set }
    /// Handles navigation between screens
    var router: SearchRouterInterface? { get set }
    /// Search Response
    var searchResponse: [SearchResponse]? { get set }
    /// Fetch Search
    /// - Parameter movieName: Movie Name
    func fetchSearch(movieName: String)
    /// Show Movie Detail Page
    /// - Parameter movie: Movie Detail
    func showMovieDetail(movie: SearchResponse)
}
// MARK: - View Interface
/// Only responsible for presenting data in a way decided
protocol SearchViewInterface: class {
    /// Presenter Interface
    var presenter: SearchPresenterInterface? { get set }
    /// Update View Trigger
    func updateView()
    /// Show Loading
    func showLoading()
    /// Hide Loading
    func hideLoading()
}
// MARK: - Router Interface
/// Listens from the about which screen to present and executes that.
protocol SearchRouterInterface: class {
    /// Module's View Controller
    var viewController: UIViewController? { get set }
    /// Setup Modules classes and viewController
    /// - returns: UIViewController
    static func createModule() -> UIViewController
    /// Setup And Pushing Movie Detail Page
    /// - Parameter movie: Movie Detail
    func setupMovieDetail(movie: SearchResponse)
}
// MARK: - Interactor
/// Responsible for making data calls
protocol SearchInteractorInterface: class {
    /// Presenter Interactor Delegate
    var presenter: SearchInteractorDelegate? { get set }
    /// Get Search Result
    /// - Parameter movieName: Movie Name
    func getSearchResult(movieName: String)
}
// MARK: - Interactor Delegate
/// A delegate which do throw response when api request has complated
protocol SearchInteractorDelegate: class {
    /// Fetch Search
    /// - Parameter response: Parsed JSON File via Search Response Model
    func fetchSearch(response: SearchResponse?)
}
