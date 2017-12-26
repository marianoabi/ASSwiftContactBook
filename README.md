
# ASSwiftContactBook
ContactBook Picker written in Swift

Supports iOS 9 and later

![Swift 3.0](https://img.shields.io/badge/Swift-3.0-green.svg?style=flat)

### Install:
```
pod 'ASSwiftContactBook'
```

### Usage:

```swift
import ASSwiftContactBook
````

```swift
 // init contact picker with custom desire subtitle
 
 func showContactPicker {
    
  let contactsVC = ASContactPicker(subTitle: .phone, multipleSelection: true, shouldOpenContactDetail: true)
  let nav = UINavigationController(rootViewController: contactsVC)
  self.present(nav, animated: true, completion: nil)
 
 
   // init handler for selected contacts
   contacts.didSelectContacts = { contacts in
       contacts.forEach { contact in debugPrint("\(contact.firstName) \(contact.lastName)") }
   }

   // init handler for single phone number from contact details, in case you choosed single selection
    contactsVC.didSelectSinglePhoneNumber = { contact in
            debugPrint("Selected Phone number ===> \(contact.digits)")
    }
}

```

### Options:
- **.phone**
- **.email**
- **.birthday**
- **.organization**

### DEMO:
![Screenshot](https://media.giphy.com/media/xUOrw1rYanIvZegIEw/giphy.gif)


## Author:
@antons81 - Anton Stremovskiy
