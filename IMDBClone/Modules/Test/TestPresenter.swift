//
//  TestPresenter.swift
//  IMDBClone
//
//  Created by Sinan Özman on 11.02.2021.
//  
//

import Foundation

/// All presentation logic
class TestPresenter: TestPresenterInterface {
    /// Any representation of information on graphical interface
    weak var view: TestViewInterface?
    /// Business Logic
    var interactor: TestInteractorInterface?
    /// Handles navigation between screens
    var router: TestRouterInterface?
}

/// This delegate which do throw response when api request has complated
extension TestPresenter: TestInteractorDelegate {
}
