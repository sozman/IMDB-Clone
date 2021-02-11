//
//  TestProtocols.swift
//  IMDBClone
//
//  Created by Sinan Özman on 11.02.2021.
//  
//

import UIKit

// MARK: - Presenter Interface
/// All presentation logic interface
protocol TestPresenterInterface: class {
    /// Any representation of information on graphical interface
    var view: TestViewInterface? { get set }
    /// Business Logic
    var interactor: TestInteractorInterface? { get set }
    /// Handles navigation between screens
    var router: TestRouterInterface? { get set }
}
// MARK: - View Interface
/// Only responsible for presenting data in a way decided
protocol TestViewInterface: class {
    /// Presenter Interface
    var presenter: TestPresenterInterface? { get set }
}
// MARK: - Router Interface
/// Listens from the about which screen to present and executes that.
protocol TestRouterInterface: class {
    /// Module's View Controller
    var viewController: UIViewController? { get set }
    /// Setup Modules classes and viewController
    /// - returns: UIViewController
    static func createModule() -> UIViewController
}
// MARK: - Interactor
/// Responsible for making data calls
protocol TestInteractorInterface: class {
    /// Presenter Interactor Delegate
    var presenter: TestInteractorDelegate? { get set }
    /// Network layer operation variable
    var operationQueue: OperationQueue { get }
}
// MARK: - Interactor Delegate
/// A delegate which do throw response when api request has complated
protocol TestInteractorDelegate: class {
}
