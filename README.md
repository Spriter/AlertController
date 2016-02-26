# AlertController
iOS AlertController

## Example
```swift

let alertController = AlertController(title: "Title", message: "Lorem Ipsum", icon: UIImage(named: "Icon"), preferredStyle: UIAlertControllerStyle.Alert, blurStyle: .Dark)
      
// Adding Buttons
alertController.addAction(AlertAction(title: "Default", style: UIAlertActionStyle.Default, handler: { (action) -> Void in
}))
alertController.addAction(AlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: { (action) -> Void in
}))
alertController.addAction(AlertAction(title: "Destructive", style: UIAlertActionStyle.Destructive, handler: { (action) -> Void in
}))

// Adding Text Field
alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
}

// Present Alert Controller
self.presentViewController(alertController, animated: true) { () -> Void in
}

```
