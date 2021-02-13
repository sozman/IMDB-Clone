//
//  MovieDetailProtocols.swift
//  IMDBClone
//
//  Created by Sinan Özman on 13.02.2021.
//  
//

import UIKit

// MARK: - Presenter Interface
/// All presentation logic interface
protocol MovieDetailPresenterInterface: class {
    /// Any representation of information on graphical interface
    var view: MovieDetailViewInterface? { get set }
    /// Business Logic
    var interactor: MovieDetailInteractorInterface? { get set }
    /// Handles navigation between screens
    var router: MovieDetailRouterInterface? { get set }
}
// MARK: - View Interface
/// Only responsible for presenting data in a way decided
protocol MovieDetailViewInterface: class {
    /// Presenter Interface
    var presenter: MovieDetailPresenterInterface? { get set }
}
// MARK: - Router Interface
/// Listens from the about which screen to present and executes that.
protocol MovieDetailRouterInterface: class {
    /// Module's View Controller
    var viewController: UIViewController? { get set }
    /// Setup Modules classes and viewController
    /// - returns: UIViewController
    static func createModule() -> UIViewController
}
// MARK: - Interactor
/// Responsible for making data calls
protocol MovieDetailInteractorInterface: class {
    /// Presenter Interactor Delegate
    var presenter: MovieDetailInteractorDelegate? { get set }
    /// Network layer operation variable
    var operationQueue: OperationQueue { get }
}
// MARK: - Interactor Delegate
/// A delegate which do throw response when api request has complated
protocol MovieDetailInteractorDelegate: class {
}
