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
    @IBOutlet weak var searchTextField: UITextField!
    // MARK: - Local Variables
    /// Presenter Interactor Delegate
    var presenter: SearchPresenterInterface?

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
    @IBAction func testAction(_ sender: UIButton) {
        openSearch()
        
    }

    @IBAction func test2Action(_ sender: UIButton) {
        closeSearch()
    }
    
    // MARK: - Supported functions
    private func openSearch() {
        UIView.animate(withDuration: 0.6) {
            self.headerTitleLabel.alpha = 0
            self.searchBoxView.snp.remakeConstraints { (make) in
                make.top.equalTo(self.headerBoxView.snp.top).offset(55)
            }
            self.headerBoxView.snp.remakeConstraints { (make) in
                make.height.equalTo(140)
            }
            self.view.layoutIfNeeded()
        }
    }
    private func closeSearch() {
        UIView.animate(withDuration: 0.6) {
            self.headerBoxView.snp.remakeConstraints { (make) in
                make.height.equalTo(260)
            }
            self.searchBoxView.snp.remakeConstraints { (make) in
                make.top.equalTo(self.headerTitleLabel.snp.bottom).offset(10)
            }
            self.headerTitleLabel.alpha = 1
            self.view.layoutIfNeeded()
        }
    }
}

// MARK: - View Interface
/// Only responsible for presenting data in a way decided
extension SearchViewController: SearchViewInterface {
}
