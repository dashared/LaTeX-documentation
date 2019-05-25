static func createChannel(with channel: Channels) {
        
        var request = URLRequest(url: channelsCreateURL)
        request.httpMethod = "POST"
        request.httpBody = try? JSONEncoder().encode(channel)
        
        request.setValue("application/json; charset=utf-8", 
            forHTTPHeaderField: "Content-Type")
        AF.request(request).response {
            (response) in
            
            isValidTocken?(response.response?.statusCode ?? 498)
        }
        
    }
