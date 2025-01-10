// RUN: %target-swift-emit-silgen -verify %s

@propertyWrapper 
struct Wrapper {
    var wrappedValue: Int
    init(wrappedValue: Int) { self.wrappedValue = wrappedValue }
}

struct S1 {
    @Wrapper var value = Int 

    init(value: Int) {
        self.value = value
    }
}

S1(value:13)
