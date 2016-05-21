var (initCount, deinitCount) = (0, 0)

class Person {
    var name: String
    var boss: Person?
    var assistant: Person?
    init(name: String, boss: Person? = nil) {
        initCount += 1
        self.name = name
        self.boss = boss
    }
    deinit {
        deinitCount += 1
    }
}

func main() {
    let alice = Person(name: "Alice")
    let bob = Person(name: "Bob", boss: alice)
    alice.assistant = bob
}

main()
print(initCount, deinitCount)
assert(initCount == 2 && deinitCount == 0)
