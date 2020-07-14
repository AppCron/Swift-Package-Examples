class HelloWorldGenerator {

    func createHello(withName name: String) -> String? {
        guard name.count > 0 else {
            return nil
        }

        return "Hello \(name)!"
    }

}

