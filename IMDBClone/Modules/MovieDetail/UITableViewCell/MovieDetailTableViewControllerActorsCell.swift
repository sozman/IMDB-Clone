//
//  MovieDetailTableViewControllerActorsCell.swift
//  IMDBClone
//
//  Created by Sinan Özman on 14.02.2021.
//

import Foundation
import UIKit

// MARK: - UITable View Cell
class MovieDetailTableViewControllerActorsCell: UITableViewCell {
    // MARK: - View Objects
    /// Actors Collection View
    @IBOutlet weak var actorsCollectionView: UICollectionView! {
        didSet {
            // Collection View Setup
            actorsCollectionView.dataSource = self
            actorsCollectionView.delegate = self
        }
    }
    // MARK: - Local Variable
    /// Actors
    var actors: [String]?
    // MARK: - AwakeFromNib
    /// Decleration
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    // MARK: - Setup Cell
    /// Setup User Interface
    func setupUI() {
        // Control Model
        guard let _ = actors else {
            print("Actors not found")
            return
        }
        // Update Collection View
        self.actorsCollectionView.reloadData()
    }
}
// MARK: - Collection View Setup
extension MovieDetailTableViewControllerActorsCell: UICollectionViewDelegate, UICollectionViewDataSource {
    /// Asks your data source object for the number of sections in the collection view.
    /// - Parameter collectionView: The collection view requesting this information.
    /// - Returns: The number of sections in collectionView.
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    /// Asks your data source object for the number of items in the specified section.
    /// - Parameters:
    ///   - collectionView: The collection view requesting this information.
    ///   - section: An index number identifying a section in collectionView. This index value is 0-based.
    /// - Returns: The number of rows in section.
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return actors?.count ?? 0
    }
    /// Asks your data source object for the cell that corresponds to the specified item in the collection view.
    /// - Parameters:
    ///   - collectionView: The collection view requesting this information.
    ///   - indexPath: The index path that specifies the location of the item.
    /// - Returns: A configured cell object. You must not return nil from this method.
    func collectionView(
            _ collectionView: UICollectionView,
            cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        // Create Cell With Nib
        /// Actor Collection View Controller Cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MovieDetailActorCollectionViewCell.CellIdentifier, for: indexPath) as! MovieDetailActorCollectionViewCell
        // Configure Cell
        /// Index actor
        let data = self.actors?[indexPath.row]
        // Setup cell
        cell.setupUI(data)
        // Return final cell
        return cell
    }
    /// Tells the delegate that the item at the specified index path was selected.
    /// - Parameters:
    ///   - collectionView: The collection view object that is notifying you of the selection change.
    ///   - indexPath: The index path of the cell that was selected.
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: false)
    }
}
