# assert.wren

A collection of assertion functions for wren.

## Installation

The [assert.wren](assert.wren?raw=1) file should be dropped into an existing project
and imported

```wren
import 'assert' for assert
```

## Function Reference

#### assert.equal(actual, expected)
Asserts equality (`==`) of `actual` and `expected`

#### assert.notEqual(actual, expected)
Asserts inequality (`!=`) of `actual` and `expected`

#### assert.isGreaterThan(a, b)
Asserts `a` is greater than (`>`) `b`

#### assert.isLessThan(a, b)
Asserts `a` is less than (`<`) `b`

#### assert.isAtLeast(a, b)
Asserts `a` is greater than or equal to (`>=`) `b`

#### assert.isAtMost(a, b)
Asserts `a` is less than or equal to (`<=`) `b`

#### assert.isTrue(value)
Asserts `value` is true

#### assert.isNotTrue(value)
Asserts `value` is not true

#### assert.isFalse(value)
Asserts `value` is false

#### assert.isNotFalse(value)
Asserts `value` is not false

#### assert.isNull(value)
Asserts `value` is null

#### assert.isNotNull(value)
Asserts `value` is not null

#### assert.isFiber(value)
Asserts `value` is a Fiber

#### assert.isNotFiber(value)
Asserts `value` is not a Fiber

#### assert.isFunction(value)
Asserts `value` is a Function

#### assert.isNotFunction(value)
Asserts `value` is not a Function

#### assert.isClass(value)
Asserts `value` is a Class

#### assert.isNotClass(value)
Asserts `value` is not a Class

#### assert.isList(value)
Asserts `value` is a List

#### assert.isNotList(value)
Asserts `value` is not a List

#### assert.isMap(value)
Asserts `value` is a Map

#### assert.isNotMap(value)
Asserts `value` is not a Map

#### assert.isObject(value)
Asserts `value` is an Object

#### assert.isNotObject(value)
Asserts `value` is not an Object

#### assert.isSame(obj1, obj1)
Asserts that `obj1` and `obj2` are the same.
Numbers, Strings, Booleans, and Ranges compare by value.
For all other objects, this returns true only if `obj1` and `obj2` refer to the exact same object in memory.

#### assert.isString(value)
Asserts `value` is a String

#### assert.isNotString(value)
Asserts `value` is not a String

#### assert.isNum(value)
Asserts `value` is a Num

#### assert.isNotNum(value)
Asserts `value` is not a Num

#### assert.isFinite(value)
Asserts `value` is a finite number

#### assert.isInteger(value)
Asserts `value` is an integer number

#### assert.isNotInteger(value)
Asserts `value` is not an integer number

#### assert.isNan(value)
Asserts `value` is Nan

#### assert.isNotNan(value)
Asserts `value` is not Nan

#### assert.isBool(value)
Asserts `value` is a Bool

#### assert.isNotBool(value)
Asserts `value` is not a Bool

#### assert.isRange(value)
Asserts `value` is Range

#### assert.isNotRange(value)
Asserts `value` is not Range

#### assert.isInclusive(value)
Asserts `value` is a an inclusive range

#### assert.isNotInclusive(value)
Asserts `value` is a not an inclusive range

#### assert.isTypeOf(object, value)
Asserts `object` is a `value`.

#### assert.isNotTypeOf(object, value)
Asserts `object` is not a `value`.

#### assert.contains(haystack, needle)
Asserts `haystack` contains `needle`

#### assert.doesNotContain(haystack, needle)
Asserts `haystack` does not contain `needle`

#### assert.countOf(object, length)
Asserts that the count of `object` is equal to `length`.
For Lists, Maps, and Strings this checks the `count` function.
For Functions this checks the `arity` function.

#### assert.containsAllKeys(object, keys)
Asserts `object` contains all keys from `keys` but may have more unlisted.

#### assert.throws(fn)
Asserts that `fn` will throw an error.

#### assert.doesNotThrow(fn)
Asserts that `fn` will not throw an error.

#### assert.approximately(target, expected, delta)
Asserts that the `target` is equal to `expected`, to within `delta`.

#### assert.isEmpty(target)
Asserts that `target` does not contain any values.
For Lists and Strings this checks the `count` function.
For Maps this checks the `isEmpty` function.

#### assert.isNotEmpty(target)
Asserts that `target` contains values.
For Lists and Strings this checks the `count` function.
For Maps this checks the `isEmpty` function.
