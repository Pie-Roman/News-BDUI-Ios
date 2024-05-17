import DivKit

internal class DivKitComponentsFactory {
    
    private let divCustomBlockFactory: DivCustomBlockFactory = Inject.shared.instance()
    
    private let divPatchProvider: DivPatchProvider = DivPatchProviderImpl()
    
    func create() -> DivKitComponents {
        let divkitComponents = DivKitComponents(
            divCustomBlockFactory: divCustomBlockFactory,
            patchProvider: divPatchProvider
        )
        
        return divkitComponents
    }
}
