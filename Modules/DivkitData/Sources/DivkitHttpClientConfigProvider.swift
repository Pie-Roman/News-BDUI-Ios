class DivkitHttpClientConfigProvider {
    
    func provide() -> DivkitHttpClientConfig {
        return DivkitHttpClientConfig(
            host: "http://127.0.0.1:8080/"
        )
    }
}
