# ios-Templates
This repo is for Xcode iOS project and file template, revised on Xcode 12 **(Life Cycle: UIKit App Delegate)**.
**Only for Swift projects (UIKit and SwiftUI) (Not available for Ojective-C)**

# Requirements
You have to install **SwiftLint(code smell tool)** before download the templates.

# Features
- Project template:
  - MVVM-C architecture
  - No storyboard based (Programmatically views)
  - Debug Menu based (Made easy to create mock cases)
  - Base Localizable (English)
  - SwiftLint
  - API layer (BaseApi.Swift and ApiRouter.swift) **this layer is based on Alamofire and RxSwift, all content is commented, its your choice to use or not (sample how to use on VCViewModel.swift)**
- File template:
  - Coordinator
  - View Controller (view programmatically)
  - Table View Controller (view programmatically)
  - Api Router (using Alamofire)
  - Card Collection View Controller (view programmatically)

# How to use
1. Download the all the files
2. cut the root folder (Templates)
3. paste on ```~/Library/Developer/Xcode/``` (Tip: on Finder press ```Cmd + Shift + G``` paste the folder path)
4. Done, re-start your XCode you will see the template when tou start a new project on template selection

### TODO
- File template: more file templates (viewModel, etc.)
- Project template: link with basic thrid-party libraries (Ex: Alamofire)

License
----

MIT
