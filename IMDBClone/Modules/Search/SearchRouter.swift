//
//  SearchRouter.swift
//  IMDBClone
//
//  Created by Sinan Özman on 12.02.2021.
//  
//

import UIKit
/// Listens from the about which screen to present and executes that.
class SearchRouter: SearchRouterInterface {
    /// Module's View Controller
    weak var viewController: UIViewController?
    /// Setup Modules classes and viewController
    /// - returns: UIViewController
    static func createModule() -> UIViewController {
        /// Any representation of information on graphical interface
        let viewController = mainstoryboard.instantiateViewController(withIdentifier: "SearchViewController") as? SearchViewController
        /// All presentation logic
        let presenter: SearchPresenterInterface & SearchInteractorDelegate = SearchPresenter()
        /// All Business logic
        let interactor: SearchInteractorInterface = SearchInteractor()
        /// All Navigations  between screens logic
        let router: SearchRouterInterface = SearchRouter()
        viewController?.presenter =  presenter
        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter

        router.viewController = viewController
        return viewController ?? UIViewController()
    }
    /// Storyboard identifier
    static var mainstoryboard: UIStoryboard {
        return UIStoryboard(name: "Search", bundle: Bundle.main)
    }
    /// Setup And Pushing Movie Detail Page
    func setupMovieDetail() {
        /// Movie Detail Controller
        let movieDetailController = MovieDetailRouter.createModule()
        // Push Controller
        self.viewController?.navigationController?.pushViewController(movieDetailController, animated: true)
    }
}
