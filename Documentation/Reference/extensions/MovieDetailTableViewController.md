**EXTENSION**

# `MovieDetailTableViewController`
```swift
extension MovieDetailTableViewController
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

### `setupPosterCell(_:)`

```swift
func setupPosterCell(_ indexPath: IndexPath) -> MovieDetailTableViewControllerPosterCell
```

Setup Poster Cell
- Parameter indexPath: TableView's Index Path
- Returns: Movie Detail Table View Controller Poster Cell

#### Parameters

| Name | Description |
| ---- | ----------- |
| indexPath | TableView’s Index Path |

### `setupTitleCell(_:)`

```swift
func setupTitleCell(_ indexPath: IndexPath) -> MovieDetailTableViewControllerTitleCell
```

Setup Title Cell
- Parameter indexPath: TableView's Index Path
- Returns: Movie Detail Table View Controller Title Cell

#### Parameters

| Name | Description |
| ---- | ----------- |
| indexPath | TableView’s Index Path |

### `setupDescriptionCell(_:)`

```swift
func setupDescriptionCell(_ indexPath: IndexPath) -> MovieDetailTableViewControllerDescriptionCell
```

Setup Description Cell
- Parameter indexPath: TableView's Index Path
- Returns: Movie Detail Table View Controller Description Cell

#### Parameters

| Name | Description |
| ---- | ----------- |
| indexPath | TableView’s Index Path |

### `setupWriterCell(_:)`

```swift
func setupWriterCell(_ indexPath: IndexPath) -> MovieDetailTableViewControllerWritersCell
```

Setup Writer Cell
- Parameter indexPath: TableView's Index Path
- Returns: Movie Detail Table View Controller Writers Cell

#### Parameters

| Name | Description |
| ---- | ----------- |
| indexPath | TableView’s Index Path |

### `setupActorCell(_:)`

```swift
func setupActorCell(_ indexPath: IndexPath) -> MovieDetailTableViewControllerActorsCell
```

Setup Actor Cell
- Parameter indexPath: TableView's Index Path
- Returns: Movie Detail Table View Controller Actors Cell

#### Parameters

| Name | Description |
| ---- | ----------- |
| indexPath | TableView’s Index Path |

### `setupStudioCell(_:)`

```swift
func setupStudioCell(_ indexPath: IndexPath) -> MovieDetailTableViewControllerStudioCell
```

Setup Studio Cell
- Parameter indexPath: TableView's Index Path
- Returns: Movie Detail Table View Controller Studio Cell

#### Parameters

| Name | Description |
| ---- | ----------- |
| indexPath | TableView’s Index Path |

### `setupGenreCell(_:)`

```swift
func setupGenreCell(_ indexPath: IndexPath) -> MovieDetailTableViewControllerGenreCell
```

Setup Genre Cell
- Parameter indexPath: TableView's Index Path
- Returns: Movie Detail Table View Controller Genre Cell

#### Parameters

| Name | Description |
| ---- | ----------- |
| indexPath | TableView’s Index Path |

### `setupReleaseCell(_:)`

```swift
func setupReleaseCell(_ indexPath: IndexPath) -> MovieDetailTableViewControllerReleaseCell
```

Setup Release Cell
- Parameter indexPath: TableView's Index Path
- Returns: Movie Detail Table View Controller Release Cell

#### Parameters

| Name | Description |
| ---- | ----------- |
| indexPath | TableView’s Index Path |