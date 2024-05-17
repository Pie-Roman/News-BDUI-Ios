import Swinject

public class Inject {
    
    private init() { }
    
    static let shared = Inject()
    
    private var _container: Container? = nil
    
    public var container: Container {
        get { return  _container! }
    }
    
    func createDependencies(container: Container) {
        _container = container
    }
    
    func instance<T>() -> T {
        return container.resolve(T.self)!
    }
    
    func provide<T>(_ factory: @escaping (any Resolver) -> T) {
        container.register(T.self, factory: factory)
    }
}
