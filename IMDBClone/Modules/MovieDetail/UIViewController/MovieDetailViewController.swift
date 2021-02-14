//
//  MovieDetailViewController.swift
//  IMDBClone
//
//  Created by Sinan Özman on 13.02.2021.
//  
//

import UIKit

// MARK: - UIViewController
class MovieDetailViewController: UIViewController {
    // MARK: - View Objects

    // MARK: - Local Variables
    /// Presenter Interactor Delegate
    var presenter: MovieDetailPresenterInterface?
    /// Movie Detail Table View Controller
    var tableViewController: MovieDetailTableViewController?
    // MARK: - View Did Load
    ///Called after the controller's view is loaded into memory.
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        fetchData()
    }
    // MARK: - Prepare
    /// Notifies the view controller that a segue is about to be performed.
    /// - Parameters:
    ///   - segue: The segue object containing information about the view controllers involved in the segue.
    ///   - sender: The object that initiated the segue. You might use this parameter to perform different actions based on which control (or other object) initiated the segue.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get View Controller
        if let viewController = segue.destination as? MovieDetailTableViewController {
            // Setup Local Variable
            tableViewController = viewController
            // Collection View Prepare
            tableViewController?.presenter = presenter
            // Update Table View
            tableViewController?.updateTableView()
        }
    }
    // MARK: - Interactor
    /// Data flow function
    func fetchData() {}

    // MARK: - Setup UI
    func setupUI() {
        self.title = self.presenter?.movie?.title ?? ""
        // Navigation Background Color
        self.navigationController?.navigationBar.barTintColor = UIColor.navigationColor
        // Navigation Text Color
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        // Navigation Buttons Color
        self.navigationController?.navigationBar.tintColor = UIColor.white
    }

    // MARK: - View Actions

    // MARK: - Supported functions
}

// MARK: - View Interface
/// Only responsible for presenting data in a way decided
extension MovieDetailViewController: MovieDetailViewInterface {
}
