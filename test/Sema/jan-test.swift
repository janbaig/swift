// RUN: %target-run-simple-swift -verify %s

@propertyWrapper 
struct Wrapper {
    var wrappedValue: [Int]
    init(wrappedValue: [Int]) { self.wrappedValue = wrappedValue }
}

struct myStruct {
    @Wrapper var x: [Int]
    init(x: [Int]) { self.x = x}
}

myStruct(x: [4])




