let networkModule = NetworkModule()

public class NetworkModule {
    
    fileprivate init() {
        Inject.shared.provide {_ in
            HttpClient()
        }
    }    
}
