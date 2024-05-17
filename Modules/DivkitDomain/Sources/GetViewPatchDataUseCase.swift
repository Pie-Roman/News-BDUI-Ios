public class GetViewPatchDataUseCase {
    
    private let divkitRepository: DivkitRepository
    
    public init(
        divkitRepository: DivkitRepository
    ) {
        self.divkitRepository = divkitRepository
    }
    
    func execute(path: String) async -> ViewPatchData {
        return await divkitRepository.getViewPatchData(path: path)
    }
}
