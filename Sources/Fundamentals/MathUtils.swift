public enum MathUtils {
    public static func add(_ a: Int, _ b: Int) -> Int { a + b }
    public static func mul(_ a: Int, _ b: Int) -> Int { a * b }
    public static func mean(_ values: [Double]) -> Double {
        guard !values.isEmpty else { return 0 }
        let s = values.reduce(0, +)
        return s / Double(values.count)
    }
}
