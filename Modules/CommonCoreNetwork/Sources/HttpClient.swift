import Foundation

public class HttpClient {
    
    private let session = URLSession.shared
    
    func sendRequest(to url: URL) async -> Data? {
        let urlRequest = URLRequest(url: url)
        return try? await session.data(for: urlRequest).0
    }
}
