//
//  TestViewController.swift
//  IMDBClone
//
//  Created by Sinan Özman on 11.02.2021.
//  
//

import UIKit

// MARK: - UIViewController
class TestViewController: UIViewController {
    // MARK: - View Objects

    // MARK: - Local Variables
    /// Presenter Interactor Delegate
    var presenter: TestPresenterInterface?

    // MARK: - View Did Load
    ///Called after the controller's view is loaded into memory.
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        fetchData()
    }

    // MARK: - Interactor
    /// Data flow function
    func fetchData() {}

    // MARK: - Setup UI
    func setupUI() {}

    // MARK: - View Actions

    // MARK: - Supported functions
}

// MARK: - View Interface
/// Only responsible for presenting data in a way decided
extension TestViewController: TestViewInterface {
}
