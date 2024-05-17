let divkitDomainModule = DivkitDomainModule()

public class DivkitDomainModule {
    
    fileprivate init() {
        
        Inject.shared.provide { resolver in
            return GetViewDataUseCase(
                divkitRepository: resolver.resolve(DivkitRepository.self)!
            )
        }
        
        Inject.shared.provide { resolver in
            return GetViewPatchDataUseCase(
                divkitRepository: resolver.resolve(DivkitRepository.self)!
            )
        }
    }
}
