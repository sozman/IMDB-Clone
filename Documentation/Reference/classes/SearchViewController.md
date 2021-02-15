**CLASS**

# `SearchViewController`

```swift
class SearchViewController: UIViewController
```

## Properties
### `headerBoxView`

```swift
@IBOutlet weak var headerBoxView: UIView!
```

Header Box View

### `headerTitleLabel`

```swift
@IBOutlet weak var headerTitleLabel: UILabel!
```

Header Title Label

### `searchBoxView`

```swift
@IBOutlet weak var searchBoxView: UIView!
```

Search Box View

### `searchTextField`

```swift
@IBOutlet weak var searchTextField: UITextField!
```

Search TextField

### `presenter`

```swift
var presenter: SearchPresenterInterface?
```

Presenter Interactor Delegate

### `tableViewController`

```swift
var tableViewController: SearchTableViewController?
```

Table View Controller

## Methods
### `viewDidLoad()`

```swift
override func viewDidLoad()
```

Called after the controller's view is loaded into memory.

### `viewWillAppear(_:)`

```swift
override func viewWillAppear(_ animated: Bool)
```

Notifies the view controller that its view is about to be added to a view hierarchy.
- Parameter animated: animation

#### Parameters

| Name | Description |
| ---- | ----------- |
| animated | animation |

### `viewWillDisappear(_:)`

```swift
override func viewWillDisappear(_ animated: Bool)
```

Notifies the view controller that its view is about to be removed from a view hierarchy.
- Parameter animated: animation

#### Parameters

| Name | Description |
| ---- | ----------- |
| animated | animation |

### `fetchData()`

```swift
func fetchData()
```

Data flow function

### `setupUI()`

```swift
func setupUI()
```

### `openSearch()`

```swift
private func openSearch()
```

### `closeSearch()`

```swift
private func closeSearch()
```

### `addTableView()`

```swift
private func addTableView()
```

### `removeTableView()`

```swift
private func removeTableView()
```
