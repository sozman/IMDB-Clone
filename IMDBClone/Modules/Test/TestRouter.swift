//
//  TestRouter.swift
//  IMDBClone
//
//  Created by Sinan Özman on 11.02.2021.
//  
//

import UIKit
/// Listens from the about which screen to present and executes that.
class TestRouter: TestRouterInterface {
    /// Module's View Controller
    weak var viewController: UIViewController?
    /// Setup Modules classes and viewController
    /// - returns: UIViewController
    static func createModule() -> UIViewController {
        /// Any representation of information on graphical interface
        let viewController = mainstoryboard.instantiateViewController(withIdentifier: "TestViewController") as? TestViewController
        /// All presentation logic
        let presenter: TestPresenterInterface & TestInteractorDelegate = TestPresenter()
        /// All Business logic
        let interactor: TestInteractorInterface = TestInteractor()
        /// All Navigations  between screens logic
        let router: TestRouterInterface = TestRouter()
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
        return UIStoryboard(name: "Test", bundle: Bundle.main)
    }
}
