static func getCompletion(tree: CompletionTree, word: String) -> [String] {
    if word == "" {
        return getValues(tree: tree)
    }
    
    let character = String(word.first!)
    
    if tree.subtree[character] == nil {
        return []
    } else {
        return getCompletion(tree: tree.subtree[character]!,
                             word: String(word.dropFirst()))
    }
}

static func getValues(tree: CompletionTree) -> [String] {
    var out = [String]()
    
    if let treeVal = tree.value {
        out.append(treeVal)
    }
    
    for (_, subtree) in tree.subtree {
        out += getValues(tree: subtree)
    }
    
    return out
}
