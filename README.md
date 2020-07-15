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

## MultiPackage Swift Package
- Created by hand, with two products and two targets.
- Using different names for folder, package, targets and products.
- Added as dependency to the HelloLabel package.
    - Because of the differnt names and multiple products, the definition of dependecy is bit more complex.
    - See commit [9dc83ad7](https://github.com/AppCron/Swift-Package-Examples/commit/9dc83ad71bc616a66d2316d6f8d06b3afff74a13)
- Insights gathered from this experience:
    - Under `dependencies` you have the mention to location of the package.
        - You also have to mention the package name if it is differnt from the folder name.
    - Under `target/dependencies` you have to name the product.
        - You also have to name the package if it has a different name or if there are multiple products withint the same package.
    - When using the `import` statement in your code, you have to mention the module, which is identical to the target.
