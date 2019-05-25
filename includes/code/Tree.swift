struct CompletionTree: Codable {
    var value: String?
    var subtree: [String : CompletionTree]
}