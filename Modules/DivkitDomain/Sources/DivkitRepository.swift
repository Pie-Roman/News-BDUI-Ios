public protocol DivkitRepository {
    
    func getViewData(path: String) async -> ViewData
    
    func getViewPatchData(path: String) async -> ViewPatchData
}
