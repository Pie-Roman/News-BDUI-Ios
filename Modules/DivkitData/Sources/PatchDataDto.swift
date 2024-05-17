struct PatchDataDto: Decodable {
    
    let rawPatchData: String?
    
    enum CodingKeys: String, CodingKey {
        case rawPatchData = "divanPatch"
    }
}
