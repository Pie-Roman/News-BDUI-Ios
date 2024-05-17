import DivKit
import DivkitDomain
import Serialization
import Foundation

internal class DivPatchProviderImpl : DivPatchProvider {
    
    private let getViewPatchDataUseCase: GetViewPatchDataUseCase = Inject.shared.instance()
    
    func getPatch(url: URL, completion: @escaping DivKit.DivPatchProviderCompletion) {
        Task {
            let viewPatchData = await getViewPatchDataUseCase.execute(path: url.absoluteString)
            guard
                let data = viewPatchData.rawPatchData.data(using: .utf8),
                let divPatch = try? parseDivPatch(data)
            else { return }
            
            DispatchQueue.main.async {
                completion(Result.success(divPatch))
            }
        }
    }
    
    func cancelRequests() {
    }
}
