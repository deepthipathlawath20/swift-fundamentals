public struct StringUtils {
    public static func greet(name: String?) -> String {
        // Optionals + nil coalescing
        let safe = name?.trimmingCharacters(in: .whitespacesAndNewlines)
        return "Hello, \(safe?.isEmpty == false ? safe! : "there")!"
    }
}

// Protocol + Generic example
public protocol IdentifiableValue { 
    associatedtype ID: Hashable 
    var id: ID { get } 
}

public struct Box<T>: IdentifiableValue { 
    public let id: Int 
    public let value: T 
}
