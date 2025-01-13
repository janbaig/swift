// RUN: %target-swift-emit-silgen -verify %s

struct S1 {
    var value: Int

    // would a memberwise initializer STILL be emitted?
}

S1(value: 21)

/* 
--- NOTES ---
Signature emission 
Definition emission

*/
