struct Stack<Element> {
    private var items: [Element] = []

    var count: Int { items.count }

    mutating func push(_ value: Element) {
        items.append(value)
    }

    mutating func pop() -> Element? {
        items.popLast()
    }

    subscript(safe index: Int) -> Element? {
        guard items.indices.contains(index) else { return nil }
        return items[index]
    }
}
