import UIKit
import HelloWorld
import MultiPackageTargetOne

public class HelloLabel: UILabel {

    private let generator = HelloWorldGenerator()

    public func setGreetingText(withName name: String) {
        text = generator.createHello(withName: name)
    }

    public func doSomething() {
        MultiPackageClassOne().doSomethingOne()
    }

}
