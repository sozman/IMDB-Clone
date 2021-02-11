//
//  TestInteractor.swift
//  IMDBClone
//
//  Created by Sinan Özman on 11.02.2021.
//  
//

import Foundation

/// All presentation logic via network
class TestInteractor: TestInteractorInterface {
    /// Presenter Interactor Delegate
    weak var presenter: TestInteractorDelegate?
    /// Network layer operation variable
    var operationQueue: OperationQueue = OperationQueue()
}
