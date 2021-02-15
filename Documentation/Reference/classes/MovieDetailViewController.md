**CLASS**

# `MovieDetailViewController`

```swift
class MovieDetailViewController: UIViewController
```

## Properties
### `presenter`

```swift
var presenter: MovieDetailPresenterInterface?
```

Presenter Interactor Delegate

### `tableViewController`

```swift
var tableViewController: MovieDetailTableViewController?
```

Movie Detail Table View Controller

## Methods
### `viewDidLoad()`

```swift
override func viewDidLoad()
```

Called after the controller's view is loaded into memory.

### `prepare(for:sender:)`

```swift
override func prepare(for segue: UIStoryboardSegue, sender: Any?)
```

Notifies the view controller that a segue is about to be performed.
- Parameters:
  - segue: The segue object containing information about the view controllers involved in the segue.
  - sender: The object that initiated the segue. You might use this parameter to perform different actions based on which control (or other object) initiated the segue.

#### Parameters

| Name | Description |
| ---- | ----------- |
| segue | The segue object containing information about the view controllers involved in the segue. |
| sender | The object that initiated the segue. You might use this parameter to perform different actions based on which control (or other object) initiated the segue. |

### `fetchData()`

```swift
func fetchData()
```

Data flow function

### `setupUI()`

```swift
func setupUI()
```
