struct ViewDataDto: Decodable {
    
    let rawDivData: String?
    
    enum CodingKeys: String, CodingKey {
        case rawDivData = "divan"
    }
}
