class DivkitRepositoryImpl : DivkitRepository {
    
    private let divkitNetworkDataSource: DivkitNetworkDataSource
    
    init(
        divkitNetworkDataSource: DivkitNetworkDataSource
    ) {
        self.divkitNetworkDataSource = divkitNetworkDataSource
    }
    
    func getViewData(path: String) async -> ViewData {
        let viewDataDto = await divkitNetworkDataSource.getViewData(path: path)
        
        return ViewData(
            rawDivData: viewDataDto.rawDivData!
        )
    }
    
    func getViewPatchData(path: String) async -> ViewPatchData {
        let patchDataDto = await divkitNetworkDataSource.getPatchData(path: path)
        
        return ViewPatchData(
            rawPatchData: patchDataDto.rawPatchData!
        )
    }
}
