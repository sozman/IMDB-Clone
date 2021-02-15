**EXTENSION**

# `MovieDetailTableViewControllerActorsCell`
```swift
extension MovieDetailTableViewControllerActorsCell: UICollectionViewDelegate, UICollectionViewDataSource
```

## Methods
### `numberOfSections(in:)`

```swift
func numberOfSections(in collectionView: UICollectionView) -> Int
```

Asks your data source object for the number of sections in the collection view.
- Parameter collectionView: The collection view requesting this information.
- Returns: The number of sections in collectionView.

#### Parameters

| Name | Description |
| ---- | ----------- |
| collectionView | The collection view requesting this information. |

### `collectionView(_:numberOfItemsInSection:)`

```swift
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
```

Asks your data source object for the number of items in the specified section.
- Parameters:
  - collectionView: The collection view requesting this information.
  - section: An index number identifying a section in collectionView. This index value is 0-based.
- Returns: The number of rows in section.

#### Parameters

| Name | Description |
| ---- | ----------- |
| collectionView | The collection view requesting this information. |
| section | An index number identifying a section in collectionView. This index value is 0-based. |

### `collectionView(_:cellForItemAt:)`

```swift
func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
) -> UICollectionViewCell
```

Asks your data source object for the cell that corresponds to the specified item in the collection view.
- Parameters:
  - collectionView: The collection view requesting this information.
  - indexPath: The index path that specifies the location of the item.
- Returns: A configured cell object. You must not return nil from this method.

#### Parameters

| Name | Description |
| ---- | ----------- |
| collectionView | The collection view requesting this information. |
| indexPath | The index path that specifies the location of the item. |

### `collectionView(_:didSelectItemAt:)`

```swift
func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
```

Tells the delegate that the item at the specified index path was selected.
- Parameters:
  - collectionView: The collection view object that is notifying you of the selection change.
  - indexPath: The index path of the cell that was selected.

#### Parameters

| Name | Description |
| ---- | ----------- |
| collectionView | The collection view object that is notifying you of the selection change. |
| indexPath | The index path of the cell that was selected. |