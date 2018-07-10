# assert.wren

A collection of assertion functions for wren.

## Installation

The [assert.wren](assert.wren?raw=1) file should be dropped into an existing project
and imported

```wren
import "assert" for assert
```

## Function Reference

#### assert.equal(actual, expected)
Asserts equality (`==`) of `actual` and `expected`
```wren
assert.equal(3, 3)
```

#### assert.notEqual(actual, expected)
Asserts inequality (`!=`) of `actual` and `expected`
```wren
assert.notEqual(3, 4)
```

#### assert.isGreaterThan(a, b)
Asserts `a` is greater than (`>`) `b`
```wren
assert.isGreaterThan(4, 3)
```

#### assert.isLessThan(a, b)
Asserts `a` is less than (`<`) `b`
```wren
assert.isLessThan(3, 4)
```

#### assert.isAtLeast(a, b)
Asserts `a` is greater than or equal to (`>=`) `b`
```wren
assert.isAtLeast(4, 3)
assert.isAtLeast(3, 3)
```

#### assert.isAtMost(a, b)
Asserts `a` is less than or equal to (`<=`) `b`
```wren
assert.isAtMost(3, 3)
assert.isAtMost(3, 4)
```

#### assert.isTrue(value)
Asserts `value` is true
```wren
var isUnicorn = true
assert.isTrue(isUnicorn)
```

#### assert.isNotTrue(value)
Asserts `value` is not true
```wren
var isCthulu = false
assert.isNotTrue(isCthulu)
```

#### assert.isFalse(value)
Asserts `value` is false
```wren
var isCthulu = false
assert.isFalse(isCthulu)
```

#### assert.isNotFalse(value)
Asserts `value` is not false
```wren
var isUnicorn = true
assert.isNotFalse(isUnicorn)
```

#### assert.isNull(value)
Asserts `value` is null
```wren
var cola = null
assert.isNull(cola)
```

#### assert.isNotNull(value)
Asserts `value` is not null
```wren
import "beverages" for Coffee
assert.isNotNull(Coffee)
```

#### assert.isFiber(value)
Asserts `value` is a Fiber
```wren
var fiber = Fiber.new { 0 }
assert.isFiber(fiber)
```

#### assert.isNotFiber(value)
Asserts `value` is not a Fiber
```wren
assert.isFunction(123)
```

#### assert.isFunction(value)
Asserts `value` is a Function
```wren
var prance = Fn.new { 0 }
assert.isFunction(prance)
```

#### assert.isNotFunction(value)
Asserts `value` is not a Function
```wren
assert.isFunction(true)
```

#### assert.isClass(value)
Asserts `value` is a Class
```wren
class Unicorn {}
assert.isClass(Unicorn)
```

#### assert.isNotClass(value)
Asserts `value` is not a Class
```wren
var coffee = ["Espresso", "Cortado", "Cappuccino"]
assert.isNotClass(coffee)
```

#### assert.isList(value)
Asserts `value` is a List
```wren
var beverages = ["Coffee", "Tea"]
assert.isList(beverages)
```

#### assert.isNotList(value)
Asserts `value` is not a List
```wren
var teas = "green, oolong, black"
assert.isList(teas)
```

#### assert.isMap(value)
Asserts `value` is a Map
```wren
var people = {
  "George": "Harrison",
  "John":   "Lennon",
  "Paul":   "McCartney",
  "Ringo":  "Starr"
}
assert.isMap(people)
```

#### assert.isNotMap(value)
Asserts `value` is not a Map
```wren
var people = ["George", "John", "Paul", "Ringo"]
assert.isNotMap(people)
```

#### assert.isObject(value)
Asserts `value` is an Object
```wren
assert.isObject(Num)
assert.isObject(true)
assert.isObject(null)
```

#### assert.isNotObject(value)
Asserts `value` is not an Object

#### assert.isSame(obj1, obj1)
Asserts that `obj1` and `obj2` are the same.
Numbers, Strings, Booleans, and Ranges compare by value.
For all other objects, this returns true only if `obj1` and `obj2` refer to the exact same object in memory.
```wren
assert.isSame(true, true)
assert.isSame((1 + 2), (2 + 1))
assert.isSame("ab", "a" + "b")
```

#### assert.isNotSame(obj1, obj1)
Asserts that `obj1` and `obj2` are not the same.
Numbers, Strings, Booleans, and Ranges compare by value.
For all other objects, this returns true only if `obj1` and `obj2` refer to the exact same object in memory.
```wren
assert.isNotSame(true, false)
assert.isNotSame((1 + 2), (2 + 2))
assert.isNotSame("ab", "a" + "c")
```

#### assert.isString(value)
Asserts `value` is a String
```wren
var message = "Ph"nglui mglw"nafh Cthulhu R"lyeh wgah"nagl fhtagn"
assert.isString(message)
```

#### assert.isNotString(value)
Asserts `value` is not a String
```wren
var lovecraftCount = 31
assert.isNotString(lovecraftCount)
```

#### assert.isNum(value)
Asserts `value` is a Num
```wren
var cups = 4
assert.isNum(cups)
```

#### assert.isNotNum(value)
Asserts `value` is not a Num
```wren
var cups = "four"
assert.isNotNum(cups)
```

#### assert.isFinite(value)
Asserts `value` is a finite number
```wren
assert.isFinite(123)
```

#### assert.isNotFinite(value)
Asserts `value` is not a finite number
```wren
assert.isNotFinite((10/0))
```

#### assert.isInteger(value)
Asserts `value` is an integer number
```wren
assert.isInteger(123.0)
```

#### assert.isNotInteger(value)
Asserts `value` is not an integer number
```wren
assert.isInteger(123.4)
```

#### assert.isNan(value)
Asserts `value` is Nan
```wren
assert.isNan(1)
```

#### assert.isNotNan(value)
Asserts `value` is not Nan
```wren
assert.isNotNan(1/0)
```

#### assert.isBool(value)
Asserts `value` is a Bool
```wren
var coffeeReady = true
var coffeeServed = false
assert.isBoolean(coffeeReady)
assert.isBoolean(coffeeServed)
```

#### assert.isNotBool(value)
Asserts `value` is not a Bool
```wren
var coffeeReady = "true"
var coffeeServed = "false"
assert.isNotBool(coffeeReady)
assert.isNotBool(coffeeServed)
```

#### assert.isRange(value)
Asserts `value` is Range
```wren
var diceNumbers = 1..6
var monopolyNodes = -1...41
assert.isRange(diceNumbers)
assert.isRange(monopolyNodes)
```

#### assert.isNotRange(value)
Asserts `value` is not Range
```wren
var hirsute = ["sideburns", "porkchops", ""stache", "goatee"]
assert.isNotRange(hirsute)
```

#### assert.isInclusive(value)
Asserts `value` is a an inclusive range
```wren
var diceNumbers = 1..6
assert.isInclusive(diceNumbers)
```

#### assert.isNotInclusive(value)
Asserts `value` is a not an inclusive range
```wren
var monopolyNodes = -1...41
assert.isNotInclusive(monopolyNodes)
```

#### assert.isTypeOf(object, value)
Asserts `object` is a `value`.
```wren
assert.isTypeOf(Num, Class)
assert.isTypeOf(true, Bool)
assert.isTypeOf(null is Null)
```

#### assert.isNotTypeOf(object, value)
Asserts `object` is not a `value`.
```wren
assert.isNotTypeOf(123, String)
```

#### assert.contains(haystack, needle)
Asserts `haystack` contains `needle`
```wren
var hirsute = ["sideburns", "porkchops", ""stache", "goatee"]
assert.contains(hirsute, "sideburns")
```

#### assert.doesNotContain(haystack, needle)
Asserts `haystack` does not contain `needle`
```wren
var hirsute = ["sideburns", "porkchops", "stache", "goatee"]
assert.doesNotContain(hirsute, "muttonchops")
```

#### assert.countOf(object, length)
Asserts that the count of `object` is equal to `length`.
For Lists, Maps, and Strings this checks the `count` function.
For Functions this checks the `arity` function.
```wren
assert.countOf([1, 2, 3], 3)
assert.countOf("matcha", 6)
```

#### assert.containsAllKeys(object, keys)
Asserts `object` contains all keys from `keys` but may have more unlisted.

#### assert.throws(fn)
Asserts that `fn` will throw an error.
```wren
var foo = Fn.new {
	Fiber.abort("Something bad happened")
}
assert.throws(foo)
```

#### assert.doesNotThrow(fn)
Asserts that `fn` will not throw an error.
```wren
var foo = Fn.new {
	return "bar"
}
assert.doesNotThrow(foo)
```

#### assert.approximately(target, expected, delta)
Asserts that the `target` is equal to `expected`, to within `delta`.
```wren
assert.approximately(1.5, 1, 0.5)
```

#### assert.isEmpty(target)
Asserts that `target` does not contain any values.
For Lists and Strings this checks the `count` function.
For Maps this checks the `isEmpty` function.
```wren
assert.isEmpty([])
assert.isEmpty("")
assert.isEmpty({})
```

#### assert.isNotEmpty(target)
Asserts that `target` contains values.
For Lists and Strings this checks the `count` function.
For Maps this checks the `isEmpty` function.
```wren
assert.isNotEmpty([1, 2, 3])
assert.isNotEmpty("Beatles")
assert.isNotEmpty({ "George": "Harrison" })
```
