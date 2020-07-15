public class HelloWorldGenerator {

    public init() {
        // Allow class to be initialized from outside the package
    }

    public func createHello(withName name: String) -> String? {
        guard name.count > 0 else {
            return nil
        }

        return "Hello \(name)!"
    }

}
