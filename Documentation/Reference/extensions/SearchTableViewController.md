**EXTENSION**

# `SearchTableViewController`
```swift
extension SearchTableViewController
```

## Methods
### `tableView(_:cellForRowAt:)`

```swift
override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
```

Asks the data source for a cell to insert in a particular location of the table view.
- Parameters:
  - tableView: A table-view object requesting the cell.
  - indexPath: An index path locating a row in tableView.
- Returns: An object inheriting from UITableViewCell that the table view can use for the specified row. UIKit raises an assertion if you return nil.

#### Parameters

| Name | Description |
| ---- | ----------- |
| tableView | A table-view object requesting the cell. |
| indexPath | An index path locating a row in tableView. |

### `tableView(_:numberOfRowsInSection:)`

```swift
override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
```

Tells the data source to return the number of rows in a given section of a table view.
- Parameters:
  - tableView: The table-view object requesting this information.
  - section: An index number identifying a section in tableView.
- Returns: The number of rows in section.

#### Parameters

| Name | Description |
| ---- | ----------- |
| tableView | The table-view object requesting this information. |
| section | An index number identifying a section in tableView. |

### `tableView(_:heightForRowAt:)`

```swift
override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
```

Asks the delegate for the height to use for a row in a specified location.
- Parameters:
  - tableView: The table-view object requesting this information
  - indexPath: An index path that locates a row in tableView.
- Returns: A nonnegative floating-point value that specifies the height (in points) that row should be.

#### Parameters

| Name | Description |
| ---- | ----------- |
| tableView | The table-view object requesting this information |
| indexPath | An index path that locates a row in tableView. |

### `tableView(_:didSelectRowAt:)`

```swift
override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
```

Tells the delegate that the specified row is now selected.
- Parameters:
  - tableView: A table-view object informing the delegate about the new row selection.
  - indexPath: An index path locating the new selected row in tableView.

#### Parameters

| Name | Description |
| ---- | ----------- |
| tableView | A table-view object informing the delegate about the new row selection. |
| indexPath | An index path locating the new selected row in tableView. |

### `setupCell(_:)`

```swift
func setupCell(_ indexPath: IndexPath) -> SearchTableViewControllerItemCell
```

Setup Search Item Cell
- Parameter indexPath: TableView's Index Path
- Returns: Search Table View Controller Item Cell

#### Parameters

| Name | Description |
| ---- | ----------- |
| indexPath | TableView’s Index Path |