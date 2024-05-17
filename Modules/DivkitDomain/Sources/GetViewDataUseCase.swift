public class GetViewDataUseCase {
    
    private let divkitRepository: DivkitRepository
    
    public init(
        divkitRepository: DivkitRepository
    ) {
        self.divkitRepository = divkitRepository
    }
    
    func execute(path: String) async -> ViewData {
        return await divkitRepository.getViewData(path: path)
    }
}
