// RUN: %target-swift-emit-silgen -verify %s

@propertyWrapper 
struct Wrapper {
    var wrappedValue: Int
    init(wrappedValue: Int) { self.wrappedValue = wrappedValue }
}

struct S1 {
  // synthesize init accessor for this var decl
  @Wrapper var value: Int 

  // init accessor in delayedFunctions... since referenced here it should be emitted...
  init(value: Int) {
    self.value = value
  }
}

S1(value: 21)

/*struct S2 {
  private var _value: Wrapper
  var value: Int {
    @storageRestrictions(initializes: _value)
    init(newValue)  {
      self._value = Wrapper(wrappedValue: newValue)
    }

    get { _value.wrappedValue }
    set { _value.wrappedValue = newValue }
  }

  init(value: Int) {
    self.value = value  // Calls 'init' accessor on 'self.value', newValue = value
  }
}
*/
