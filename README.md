# Swift Package Examples
Collection of examples creating and using Swift Packages and the Swift Package Manager.

## HelloWorld Swift Package
- Created via `swift package init`.
- Removed Linux specific testing stuff.
    - LinuxMain.swift
    - XCTestManifests.swift
    - HelloWorldTests.allTests
    - This might not be required for Linux in the future: https://forums.swift.org/t/pitch-enable-test-discovery-by-default/36619
- Implemented some simple behavior, including tests.
- Test can be run via command line `swift test`.
- Made sure to mark functionality (functions, properties, etc.) as public.
    - This includes an empty `public init()` in order to initilize the class from outside of the package.

## HelloLabel Swift Package
- Created by hand.
    - This means I had to create the gitignore file by hand as well.
- Created a label subclass, which required to import UIKit.
    - Importing UIKit breaks `swift build` and `swift test` on the command line.
    - The package itself and all consumers require Xcode from now on.
    - You have to select an iPhone Simulator to build, `My Mac` no longer works.
- Added `.iOS(.v13)` as plattform.
- Added `HelloWorld` package as dependency.
- Implemented basic functionality.
