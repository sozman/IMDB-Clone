//
//  SearchTableViewController.swift
//  IMDBClone
//
//  Created by Sinan Özman on 12.02.2021.
//

import Foundation
import UIKit

// MARK: - UITable View Controller
class SearchTableViewController: UITableViewController {
    // MARK: - Local Variable
    /// Presenter
    weak var presenter: SearchPresenterInterface?
    // MARK: - View Did Load
    ///Called after the controller's view is loaded into memory.
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    /// Update Data
    func updateTableView() {
        self.tableView.reloadData()
    }
}
// MARK: - Table View Setup
extension SearchTableViewController {
    /// Asks the data source for a cell to insert in a particular location of the table view.
    /// - Parameters:
    ///   - tableView: A table-view object requesting the cell.
    ///   - indexPath: An index path locating a row in tableView.
    /// - Returns: An object inheriting from UITableViewCell that the table view can use for the specified row. UIKit raises an assertion if you return nil.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return setupCell(indexPath)
    }
    /// Tells the data source to return the number of rows in a given section of a table view.
    /// - Parameters:
    ///   - tableView: The table-view object requesting this information.
    ///   - section: An index number identifying a section in tableView.
    /// - Returns: The number of rows in section.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.presenter?.searchResponse?.count ?? 0
    }
    /// Asks the delegate for the height to use for a row in a specified location.
    /// - Parameters:
    ///   - tableView: The table-view object requesting this information
    ///   - indexPath: An index path that locates a row in tableView.
    /// - Returns: A nonnegative floating-point value that specifies the height (in points) that row should be.
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 225
    }
    /// Tells the delegate that the specified row is now selected.
    /// - Parameters:
    ///   - tableView: A table-view object informing the delegate about the new row selection.
    ///   - indexPath: An index path locating the new selected row in tableView.
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

// MARK: - Supported Cell
extension SearchTableViewController {
    /// Setup Search Item Cell
    /// - Parameter indexPath: TableView's Index Path
    /// - Returns: Search Table View Controller Item Cell
    func setupCell(_ indexPath: IndexPath) -> SearchTableViewControllerItemCell {
        /// Create Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: SearchTableViewControllerItemCell.CellIdentifier,
                for: indexPath) as! SearchTableViewControllerItemCell
        /// Response
        let response = self.presenter?.searchResponse?.first
        /// Rate
        let rate = (Double(response?.imdbRating ?? "0.0") ?? 0.0 * 10)
        /// Data
        let data = MovieItemModel(image: response?.poster,
                                  rate: rate,
                                  name: response?.title,
                                  type: response?.genre,
                                  description: response?.plot)
        // Setup Data
        cell.model = data
        // Update View
        cell.setupUI()
        // Return Cell
        return cell
    }
}
