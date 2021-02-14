//
//  SearchViewController.swift
//  IMDBClone
//
//  Created by Sinan Özman on 12.02.2021.
//  
//

import UIKit
import SnapKit

// MARK: - UIViewController
class SearchViewController: UIViewController {
    // MARK: - View Objects
    /// Header Box View
    @IBOutlet weak var headerBoxView: UIView! {
        didSet {
            // Setup Radius
            headerBoxView.roundCorners(corners: [.bottomLeft, .bottomRight], radius: 25)
        }
    }
    /// Header Title Label
    @IBOutlet weak var headerTitleLabel: UILabel!
    /// Search Box View
    @IBOutlet weak var searchBoxView: UIView! {
        didSet {
            // Setup Radius
            searchBoxView.layer.cornerRadius = searchBoxView.layer.bounds.height / 2
        }
    }
    /// Search TextField
    @IBOutlet weak var searchTextField: UITextField! {
        didSet {
            // Setup Delegate
            searchTextField.delegate = self
        }
    }
    // MARK: - Local Variables
    /// Presenter Interactor Delegate
    var presenter: SearchPresenterInterface?
    /// Table View Controller
    var tableViewController: SearchTableViewController?
    // MARK: - View Did Load
    ///Called after the controller's view is loaded into memory.
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        fetchData()
    }
    // MARK: - View Will Appear
    /// Notifies the view controller that its view is about to be added to a view hierarchy.
    /// - Parameter animated: animation
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    // MARK: - View Will Disappear
    /// Notifies the view controller that its view is about to be removed from a view hierarchy.
    /// - Parameter animated: animation
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.navigationBar.isHidden = false
    }
    // MARK: - Interactor
    /// Data flow function
    func fetchData() {}

    // MARK: - Setup UI
    func setupUI() {
        tableViewController = SearchRouter.mainstoryboard.instantiateViewController(withIdentifier: "SearchTableViewController") as? SearchTableViewController
        tableViewController?.presenter = self.presenter
    }

    // MARK: - View Actions
    
    // MARK: - Supported functions
    private func openSearch() {
        UIView.animate(withDuration: 0.3) {
            self.headerTitleLabel.alpha = 0
            self.searchBoxView.snp.remakeConstraints { (make) in
                make.top.equalTo(self.headerBoxView.snp.top).offset(55)
            }
            self.headerBoxView.snp.remakeConstraints { (make) in
                make.height.equalTo(140)
            }
            self.view.layoutIfNeeded()
        } completion: { (status) in
            if status {
                self.addTableView()
            }
        }
    }
    private func closeSearch() {
        UIView.animate(withDuration: 0.3) {
            self.headerBoxView.snp.remakeConstraints { (make) in
                make.height.equalTo(260)
            }
            self.searchBoxView.snp.remakeConstraints { (make) in
                make.top.equalTo(self.headerTitleLabel.snp.bottom).offset(10)
            }
            self.headerTitleLabel.alpha = 1
            self.view.layoutIfNeeded()
        } completion: { (status) in
            if status {
                if (self.presenter?.searchResponse?.first?.response == "False" || self.presenter?.searchResponse == nil) {
                    self.removeTableView()
                }
            }
        }
    }
    
    
    
    private func addTableView() {
        // Adds the specified view controller as a child of the current view controller.
        self.addChild(tableViewController!)
        // Adds a view to the end of the receiver’s list of subviews.
        self.view.addSubview((tableViewController?.view)!)
        // Setup Constraint
        tableViewController?.view.snp.makeConstraints({ (make) in
            make.top.equalTo(self.headerBoxView.snp.bottom).offset(5)
            make.left.right.equalTo(0)
            make.bottom.equalTo(0)
        })
        // Called after the view controller is added or removed from a container view controller.
        tableViewController?.didMove(toParent: self)
    }
    
    private func removeTableView() {
        tableViewController?.removeFromParent()
        tableViewController?.view.removeFromSuperview()
        self.presenter?.searchResponse?.removeAll()
    }
}

// MARK: - View Interface
/// Only responsible for presenting data in a way decided
extension SearchViewController: SearchViewInterface {
    /// Update View Trigger
    func updateView() {
        // Data Control
        if (self.presenter?.searchResponse) != nil {
            tableViewController?.updateTableView()
        } else {
            if self.presenter?.searchResponse?.first?.response != "True" {
                removeTableView()
            }
        }
    }
}

// MARK: - UITextfield Delegate
extension SearchViewController: UITextFieldDelegate {
    /// Tells the delegate when editing begins in the specified text field.
    /// - Parameter textField: The text field in which an editing session began.
    func textFieldDidBeginEditing(_ textField: UITextField) {
        openSearch()
    }
    /// Tells the delegate when editing stops for the specified text field.
    /// - Parameter textField: The text field for which editing ended.
    func textFieldDidEndEditing(_ textField: UITextField) {
        /// Movie Name
        let movieName = textField.text
        // Get Search Result
        self.presenter?.fetchSearch(movieName: movieName ?? "")
        closeSearch()
    }
    /// Asks the delegate whether to process the pressing of the Return button for the text field.
    /// - Parameter textField: The text field whose return button was pressed.
    /// - Returns: true if the text field should implement its default behavior for the return button; otherwise, false.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
