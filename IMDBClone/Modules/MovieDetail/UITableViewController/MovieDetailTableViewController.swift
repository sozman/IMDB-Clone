//
//  MovieDetailTableViewController.swift
//  IMDBClone
//
//  Created by Sinan Özman on 14.02.2021.
//

import Foundation
import UIKit

// MARK: - UITable View Controller
class MovieDetailTableViewController: UITableViewController {
    // MARK: - Local Variables
    /// Presenter
    var presenter: MovieDetailPresenterInterface?
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
extension MovieDetailTableViewController {
    /// Asks the data source for a cell to insert in a particular location of the table view.
    /// - Parameters:
    ///   - tableView: A table-view object requesting the cell.
    ///   - indexPath: An index path locating a row in tableView.
    /// - Returns: An object inheriting from UITableViewCell that the table view can use for the specified row. UIKit raises an assertion if you return nil.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            return setupPosterCell(indexPath)
        case 1:
            return setupTitleCell(indexPath)
        case 2:
            return setupDescriptionCell(indexPath)
        case 3:
            return setupWriterCell(indexPath)
        case 4:
            return setupActorCell(indexPath)
        case 5:
            return setupStudioCell(indexPath)
        case 6:
            return setupGenreCell(indexPath)
        case 7:
            return setupReleaseCell(indexPath)
        default:
            return UITableViewCell()
        }
    }
    /// Tells the data source to return the number of rows in a given section of a table view.
    /// - Parameters:
    ///   - tableView: The table-view object requesting this information.
    ///   - section: An index number identifying a section in tableView.
    /// - Returns: The number of rows in section.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    /// Asks the delegate for the height to use for a row in a specified location.
    /// - Parameters:
    ///   - tableView: The table-view object requesting this information
    ///   - indexPath: An index path that locates a row in tableView.
    /// - Returns: A nonnegative floating-point value that specifies the height (in points) that row should be.
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 317
        case 1:
            return 114
        case 2:
            return UITableView.automaticDimension
        case 3:
            return 221
        case 4:
            return 221
        case 5:
            return 50
        case 6:
            return 50
        case 7:
            return 50
        default:
            return 0
        }
    }
    /// Tells the delegate that the specified row is now selected.
    /// - Parameters:
    ///   - tableView: A table-view object informing the delegate about the new row selection.
    ///   - indexPath: An index path locating the new selected row in tableView.
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
}

// MARK: - Supported Cell
extension MovieDetailTableViewController {
    /// Setup Poster Cell
    /// - Parameter indexPath: TableView's Index Path
    /// - Returns: Movie Detail Table View Controller Poster Cell
    func setupPosterCell(_ indexPath: IndexPath) -> MovieDetailTableViewControllerPosterCell {
        /// Create Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: MovieDetailTableViewControllerPosterCell.CellIdentifier,
                                                 for: indexPath) as! MovieDetailTableViewControllerPosterCell
        // MARK: - Setup Cell
        /// Poster
        let poster = self.presenter?.movie?.poster
        // Setup Data
        cell.poster = poster
        // Update View
        cell.setupUI()
        // Return Cell
        return cell
    }
    /// Setup Title Cell
    /// - Parameter indexPath: TableView's Index Path
    /// - Returns: Movie Detail Table View Controller Title Cell
    func setupTitleCell(_ indexPath: IndexPath) -> MovieDetailTableViewControllerTitleCell {
        /// Create Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: MovieDetailTableViewControllerTitleCell.CellIdentifier,
                                                 for: indexPath) as! MovieDetailTableViewControllerTitleCell
        // MARK: - Setup Cell
        /// Movie Name
        let movieName = self.presenter?.movie?.title
        /// Rate
        let rate = Int(floor((Double(self.presenter?.movie?.imdbRating ?? "0.0") ?? 0.0 * 10)))
        // Setup Data
        cell.name = movieName
        cell.rate = rate
        // Update View
        cell.setupUI()
        // Return cell
        return cell
    }
    /// Setup Description Cell
    /// - Parameter indexPath: TableView's Index Path
    /// - Returns: Movie Detail Table View Controller Description Cell
    func setupDescriptionCell(_ indexPath: IndexPath) -> MovieDetailTableViewControllerDescriptionCell {
        /// Create Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: MovieDetailTableViewControllerDescriptionCell.CellIdentifier,
                                                 for: indexPath) as! MovieDetailTableViewControllerDescriptionCell
        // MARK: - Setup Cell
        /// Description
        let description = self.presenter?.movie?.plot
        // Setup Data
        cell.descriptionContent = description
        // Update View
        cell.setupUI()
        // Return cell
        return cell
    }
    /// Setup Writer Cell
    /// - Parameter indexPath: TableView's Index Path
    /// - Returns: Movie Detail Table View Controller Writers Cell
    func setupWriterCell(_ indexPath: IndexPath) -> MovieDetailTableViewControllerWritersCell {
        /// Create Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: MovieDetailTableViewControllerWritersCell.CellIdentifier,
                                                 for: indexPath) as! MovieDetailTableViewControllerWritersCell
        // MARK: - Setup Cell
        /// Writers
        let writer = self.presenter?.movie?.writer?.components(separatedBy: ",")
        // Setup Data
        cell.writers = writer
        // Update View
        cell.setupUI()
        // Return Cell
        return cell
    }
    /// Setup Actor Cell
    /// - Parameter indexPath: TableView's Index Path
    /// - Returns: Movie Detail Table View Controller Actors Cell
    func setupActorCell(_ indexPath: IndexPath) -> MovieDetailTableViewControllerActorsCell {
        /// Create Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: MovieDetailTableViewControllerActorsCell.CellIdentifier,
                                                 for: indexPath) as! MovieDetailTableViewControllerActorsCell
        // MARK: - Setup Cell
        /// Actors
        let actor = self.presenter?.movie?.actors?.components(separatedBy: ",")
        // Setup Data
        cell.actors = actor
        // Update View
        cell.setupUI()
        // Return Cell
        return cell
    }
    /// Setup Studio Cell
    /// - Parameter indexPath: TableView's Index Path
    /// - Returns: Movie Detail Table View Controller Studio Cell
    func setupStudioCell(_ indexPath: IndexPath) -> MovieDetailTableViewControllerStudioCell {
        /// Create Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: MovieDetailTableViewControllerStudioCell.CellIdentifier,
                                                 for: indexPath) as! MovieDetailTableViewControllerStudioCell
        // MARK: - Setup Cell
        /// Studio Name
        let studio = self.presenter?.movie?.production
        // Setup Data
        cell.studio = studio
        // Update View
        cell.setupUI()
        // Return cell
        return cell
    }
    /// Setup Genre Cell
    /// - Parameter indexPath: TableView's Index Path
    /// - Returns: Movie Detail Table View Controller Genre Cell
    func setupGenreCell(_ indexPath: IndexPath) -> MovieDetailTableViewControllerGenreCell {
        /// Create Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: MovieDetailTableViewControllerGenreCell.CellIdentifier,
                                                 for: indexPath) as! MovieDetailTableViewControllerGenreCell
        // MARK: - Setup Cell
        /// Genre
        let genre = self.presenter?.movie?.genre
        // Setup Data
        cell.genre = genre
        // Update View
        cell.setupUI()
        // Return cell
        return cell
    }
    /// Setup Release Cell
    /// - Parameter indexPath: TableView's Index Path
    /// - Returns: Movie Detail Table View Controller Release Cell
    func setupReleaseCell(_ indexPath: IndexPath) -> MovieDetailTableViewControllerReleaseCell {
        /// Create Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: MovieDetailTableViewControllerReleaseCell.CellIdentifier,
                                                 for: indexPath) as! MovieDetailTableViewControllerReleaseCell
        // MARK: - Setup Cell
        /// Release
        let release = self.presenter?.movie?.released
        // Setup Data
        cell.release = release
        // Update View
        cell.setupUI()
        // Return cell
        return cell
    }
}
