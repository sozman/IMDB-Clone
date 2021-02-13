//
//  MovieDetailRouter.swift
//  IMDBClone
//
//  Created by Sinan Özman on 13.02.2021.
//  
//

import UIKit
/// Listens from the about which screen to present and executes that.
class MovieDetailRouter: MovieDetailRouterInterface {
    /// Module's View Controller
    weak var viewController: UIViewController?
    /// Setup Modules classes and viewController
    /// - returns: UIViewController
    /// - Parameter movie: Movie Details
    static func createModule(movie: SearchResponse?) -> UIViewController {
        /// Any representation of information on graphical interface
        let viewController = mainstoryboard.instantiateViewController(withIdentifier: "MovieDetailViewController") as? MovieDetailViewController
        /// All presentation logic
        let presenter: MovieDetailPresenterInterface & MovieDetailInteractorDelegate = MovieDetailPresenter()
        /// All Business logic
        let interactor: MovieDetailInteractorInterface = MovieDetailInteractor()
        /// All Navigations  between screens logic
        let router: MovieDetailRouterInterface = MovieDetailRouter()
        viewController?.presenter =  presenter
        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor
        presenter.movie = movie
        interactor.presenter = presenter

        router.viewController = viewController
        return viewController ?? UIViewController()
    }
    /// Storyboard identifier
    static var mainstoryboard: UIStoryboard {
        return UIStoryboard(name: "MovieDetail", bundle: Bundle.main)
    }
}
