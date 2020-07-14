# Swift Package Examples
Collection of examples creating and using Swift Packages and the Swift Package Manager.

## HelloWorld Swift Package
- Created via `swift package init`
- Removed Linux specific testing stuff
  - LinuxMain.swift
  - XCTestManifests.swift
  - HelloWorldTests.allTests
  - This might not be required for Linux in the future: https://forums.swift.org/t/pitch-enable-test-discovery-by-default/36619
- Implemented some simple behavior, including tests
- Test can be run via command line `swift test`
- Made sure to mark functionality (functions, properties, etc.) as public
