class DivkitNetworkDataSource {
    
    private let divkitHttpClient: DivkitHttpClient
    
    init(
        divkitHttpClient: DivkitHttpClient
    ) {
        self.divkitHttpClient = divkitHttpClient
    }
    
    func getViewData(path: String) async -> ViewDataDto {
        let rawDivData = await divkitHttpClient.getView(path: path)
        
        return ViewDataDto(
            rawDivData: rawDivData
        )
    }
    
    func getPatchData(path: String) async -> PatchDataDto {
        let rawPatchData = await divkitHttpClient.getPatch(path: path)
        
        return PatchDataDto(
            rawPatchData: rawPatchData
        )
    }
}
