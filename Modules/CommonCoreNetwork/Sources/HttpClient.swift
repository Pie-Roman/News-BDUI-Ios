import Foundation

public class HttpClient {
    
    private let session = URLSession.shared
    
    func sendRequest(to url: URL, params: [String: String]?, completion: @escaping (Data?) -> Void) async {
        return await Task {
            let task = session.dataTask(with: url) { data, response, error in
                if let data = data {
                    completion(data)
                } else {
                    print("Could not get any content")
                    completion(nil)
                }
            }

            task.resume()
        }.value
    }
}
