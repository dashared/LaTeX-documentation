struct GeneralRequest<T: Codable>: Codable
{
    var direction: String
    var limit: Int
    var exclusiveFrom: Int?
    var request: T
    
    init(direction: String = "forward", limit: Int, exclusiveFrom: Int?,
                                                     request: T) {
        self.direction = direction
        self.limit = limit
        self.exclusiveFrom = exclusiveFrom
        self.request = request
    }
    
    enum CodingKeys: String, CodingKey {
        case limit
        case exclusiveFrom
        case request
        case direction
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(limit, forKey: .limit)
        try container.encode(exclusiveFrom, forKey: .exclusiveFrom)
        try container.encode(request, forKey: .request)
        try container.encode(direction, forKey: .direction)
    }
}
