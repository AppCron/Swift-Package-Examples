import UIKit
import HelloWorld

public class HelloLabel: UILabel {

    private let generator = HelloWorldGenerator()

    public func setGreetingText(withName name: String) {
        text = generator.createHello(withName: name)
    }

}
