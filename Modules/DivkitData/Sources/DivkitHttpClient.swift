import CommonCoreNetwork
import Foundation

class DivkitHttpClient {
    
    private let httpClient: HttpClient
    private let config: DivkitHttpClientConfig
    
    init(
        httpClient: HttpClient,
        config: DivkitHttpClientConfig
    ) {
        self.httpClient = httpClient
        self.config = config
    }
    
    func getView(
        path: String
    ) async -> String? {
        guard 
            let url = URL(string: config.host + path),
            let data = await httpClient.sendRequest(to: url),
            let dictionary = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
        else { return nil }
        
        return dictionary["divan"] as? String
    }
    
    func getPatch(
        path: String
    ) async -> String? {
        guard
            let url = URL(string: config.host + path),
            let data = await httpClient.sendRequest(to: url),
            let dictionary = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
        else { return nil }
        
        return dictionary["divanPatch"] as? String
    }
}
