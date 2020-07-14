import XCTest
@testable import HelloWorld

class HelloWorldGeneratorTests: XCTestCase {

    let generator = HelloWorldGenerator()

    func testCreateHello_returnsGreetingWithName_whenNameExisits() {
        // Arrange
        let name = "Tim Apple"

        // Act
        let greeting = generator.createHello(withName: name)

        // Assert
        XCTAssertEqual(greeting, "Hello Tim Apple!")
    }

    func testCreateHello_returnsNil_whenNameIsEmpty() {
        // Arrange
        let emptyString = ""

        // Act
        let greeting = generator.createHello(withName: emptyString)

        // Assert
        XCTAssertEqual(greeting, nil)
    }

}
