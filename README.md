# RxCells
## Usage
Binding
```swift
Observable.just(Array(0..<100)).bind(to: tableView.rx.cells(SampleCell.self))
```
Cell configuration
```swift
final class SampleCell: UITableViewCell, Configurable, Reusable {
    func configure(with model: Int) {
        self.textLabel?.text = "value: \(model)"
    }
}
```
## Installation
via CocoaPods:
```
pod 'RxCells'
```
