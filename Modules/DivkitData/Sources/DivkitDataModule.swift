import Swinject

let divkitDataModule = DivkitDataModule()

public class DivkitDataModule {
    
    fileprivate init() {
        
        Inject.shared.provide { resolver in
            DivkitHttpClientConfigProvider()
        }
        
        Inject.shared.provide { resolve in
            DivkitNetworkDataSource(
                divkitHttpClient: resolve.resolve(DivkitHttpClient.self)!
            )
        }
        
        Inject.shared.provide { resolve in
            self.provideDivkitRepsotory(resolver: resolve)
        }
    }
    
    private func provideDivkitRepsotory(resolver: Resolver) -> DivkitRepository {
        return DivkitRepositoryImpl(
            divkitNetworkDataSource: resolver.resolve(DivkitNetworkDataSource.self)!
        )
    }
}
