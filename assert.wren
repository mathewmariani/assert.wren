/**
 * Copyright (c) 2018 Mathew Mariani
 *
 * This library is free software; you can redistribute it and/or modify it
 * under the terms of the MIT license. See LICENSE for details.
 */

class assert {

	/**
	 * Asserts equality (`==`) of `actual` and `expected`.
	 * @param  { Mixed } result
	 * @param  { Mixed } expect
	 */
	static equal(actual, expected) {
		if (actual == expected) return
		Fiber.abort("expected %(actual) to equal %(expected)")
	}

	/**
	 * Asserts inequality (`!=`) of `actual` and `expected`.
	 * @param  { Mixed } result
	 * @param  { Mixed } expect
	 */
	static notEqual(actual, expected) {
		if (actual != expected) return
		Fiber.abort("expected %(actual) to not equal %(expected)")
	}

	/**
	 * Asserts `a` is greater than (`>`) `b`.
	 * @param  { Num }  a
	 * @param  { Num }  b
	 */
	static isGreaterThan(a, b) {
		if (a.type != Num || b.type != Num) {
			Fiber.abort("The arguments to 'isGreaterThan' must be of type Num")
		}

		if (a > b) return

		Fiber.abort("expected %(a) to be greater than %(b)")
	}

	/**
	 * Asserts `a` is less than (`<`) `b`.
	 * @param  { Num }  a
	 * @param  { Num }  b
	 */
	static isLessThan(a, b) {
		if (a.type != Num || b.type != Num) {
			Fiber.abort("The arguments to 'isLessThan' must be of type Num")
		}

		if (a < b) return

		Fiber.abort("expected %(a) to be less than %(b)")
	}

	/**
	 * Asserts `a` is greater than or equal to (`>=`) `b`.
	 * @param  { Num }  a
	 * @param  { Num }  b
	 */
	static isAtLeast(a, b) {
		if (a.type != Num || b.type != Num) {
			Fiber.abort("The arguments to 'isAtLeast' must be of type Num")
		}

		if (a >= b) return

		Fiber.abort("expected %(a) to be at least %(b)")
	}

	/**
	 * Asserts `a` is less than or equal to (`>=`) `b`.
	 * @param  { Num }  a
	 * @param  { Num }  b
	 */
	static isAtMost(a, b) {
		if (a.type != Num || b.type != Num) {
			Fiber.abort("The arguments to 'isAtMost' must be of type Num")
		}

		if (a <= b) return

		Fiber.abort("expected %(a) to be at most least %(b)")
	}

	/**
	 * Asserts `value` is true.
	 * @param  { Mixed }  value
	 */
	static isTrue(value) {
		if (value == true) return
		Fiber.abort("expected %(value) to be true")
	}

	/**
	 * Asserts `value` is not true.
	 * @param  { Mixed }  value
	 */
	static isNotTrue(value) {
		if (value != true) return
		Fiber.abort("expected %(value) to not be true")
	}

	/**
	 * Asserts `value` is false.
	 * @param  { Mixed }  value
	 */
	static isFalse(value) {
		if (value == false) return
		Fiber.abort("expected %(value) to be false")
	}

	/**
	 * Asserts `value` is not false.
	 * @param  { Mixed }  value
	 */
	static isNotFalse(value) {
		if (value != false) return
		Fiber.abort("expected %(value) to not be false")
	}

	/**
	 * Asserts `value` is null.
	 * @param  { Mixed }  value
	 */
	static isNull(value) {
		if (value == null) return
		Fiber.abort("expected %(value) to be null")
	}

	/**
	 * Asserts `value` is not null.
	 * @param  { Mixed }  value
	 */
	static isNotNull(value) {
		if (value != null) return
		Fiber.abort("expected %(value) to not be null")
	}

	/**
	 * Asserts `value` is a Fiber.
	 * @param  { Mixed }  value
	 */
	static isFiber(value) {
		if (value is Fiber) return
		Fiber.abort("expected %(value) to be of type Fiber")
	}

	/**
	 * Asserts `value` is not a Fiber.
	 * @param  { Mixed }  value
	 */
	static isNotFiber(value) {
		if (value.type != Fiber) return
		Fiber.abort("expected %(value) to not be of type Fiber")
	}

	/**
	 * Asserts `value` is a Function.
	 * @param  { Mixed }  value
	 */
	static isFunction(value) {
		if (value is Fn) return
		Fiber.abort("Failed to assert that %(value) is a Function")
	}

	/**
	 * Asserts `value` is not a Function.
	 * @param  { Mixed }  value
	 */
	static isNotFunction(value) {
		if (value.type != Fn) return
		Fiber.abort("Failed to assert that %(value) is not a Function")
	}

	/**
	 * Asserts `value` is a Class.
	 * @param  { Mixed }  value
	 */
	static isClass(value) {
		if (value is Class) return
		Fiber.abort("Failed to assert")
		Fiber.abort("Failed to assert that %(value) is a Class")
	}

	/**
	 * Asserts `value` is not a Class.
	 * @param  { Mixed }  value
	 */
	static isNotClass(value) {
		if (value.type != Class) return
		Fiber.abort("Failed to assert that %(value) is not a Class")
	}

	/**
	 * Asserts `value` is a List.
	 * @param  { Mixed }  value
	 */
	static isList(value) {
		if (value is List) return
		Fiber.abort("Failed to assert that %(value) is a List")
	}

	/**
	 * Asserts `value` is not a List.
	 * @param  { Mixed }  value
	 */
	static isNotList(value) {
		if (value.type != List) return
		Fiber.abort("Failed to assert that %(value) is not a List")
	}

	/**
	 * Asserts `value` is a Map.
	 * @param  { Mixed }  value
	 */
	static isMap(value) {
		if (value is Map) return
		Fiber.abort("Failed to assert that %(value) is a Map")
	}

	/**
	 * Asserts `value` is not a Map.
	 * @param  { Mixed }  value
	 */
	static isNotMap(value) {
		if (value.type != Map) return
		Fiber.abort("Failed to assert that %(value) is not a Map")
	}

	/**
	 * Asserts `value` is an Object.
	 * @param  { Mixed }  value
	 */
	static isObject(value) {
		if (value is Object) return
		Fiber.abort("Failed to assert that %(value) is an Object")
	}

	/**
	 * Asserts `value` is not an Object.
	 * @param  { Mixed }  value
	 */
	static isNotObject(value) {
		if (value.type != Object) return
		Fiber.abort("Failed to assert that %(value) is not an Object")
	}

	/**
	 * Asserts that `obj1` and `obj2` are the same.
	 * Numbers, Strings, Booleans, and Ranges compare by value.
	 * For all other objects, this returns true only if `obj1` and `obj2` refer to the exact same object in memory.
	 * @param  { Mixed }  obj1
	 * @param  { Mixed }  obj2
	 */
	static isSame(obj1, obj2) {
		if (obj1.type != Object && obj2.type != Object) {
			Fiber.abort("The arguments to 'isSame' must be of type Object")
		}

		if (Object.same(obj1, obj2)) return

		Fiber.abort("Failed to assert that %(obj1) is that same as %(obj2)")
	}

	/**
	 * Asserts `value` is a String.
	 * @param  { Mixed }  value
	 */
	static isString(value) {
		if (value is String) return
		Fiber.abort("Failed to assert that %(value) is a String")
	}

	/**
	 * Asserts `value` is not a String.
	 * @param  { Mixed }  value
	 */
	static isNotString(value) {
		if (value.type != String) return
		Fiber.abort("Failed to assert that %(value) is not a String")
	}

	/**
	 * Asserts `value` is a Number.
	 * @param  { Mixed }  value
	 */
	static isNum(value) {
		if (value is Num) return
		Fiber.abort("Failed to assert that %(value) is a Num")
	}

	/**
	 * Asserts `value` is not a Number.
	 * @param  { Mixed }  value
	 */
	static isNotNum(value) {
		if (value.type != Num) return
		Fiber.abort("Failed to assert that %(value) is not a Num")
	}

	/**
	 * Asserts `value` is a finite number.
	 * @param  { Num }  value
	 */
	static isFinite(value) {
		if (value.type != Num) {
			Fiber.abort("The arguments to 'isFinite' must be of type Num")
		}

		if (!value.isInfinity) return

		Fiber.abort("Failed to assert that %(value) is finite")
	}

	/**
	 * Asserts `value` is not a finite number.
	 * @param  { Num }  value
	 */
	static isNotFinite(value) {
		if (value.type != Num) {
			Fiber.abort("The arguments to 'isNotFinite' must be of type Num")
		}

		if (value.isInfinity) return

		Fiber.abort("Failed to assert that %(value) is not finite")
	}

	/**
	 * Asserts `value` is an integer number.
	 * @param  { Num }  value
	 */
	static isInteger(value) {
		if (value.type != Num) {
			Fiber.abort("The arguments to 'isInteger' must be of type Num")
		}

		if (value.isInteger) return

		Fiber.abort("Failed to assert that %(value) is an Integer")
	}

	/**
	 * Asserts `value` is not an integer number.
	 * @param  { Num }  value
	 */
	static isNotInteger(value) {
		if (value.type != Num) {
			Fiber.abort("The arguments to 'isNotInteger' must be of type Num")
		}

		if (!value.isInteger) return

		Fiber.abort("Failed to assert that %(value) is not an Integer")
	}

	/**
 	 * Asserts `value` is Nan.
	 * @param  { Num }  value
	 */
	static isNan(value) {
		if (value.type != Num) {
			Fiber.abort("The arguments to 'isNaN' must be of type Num")
		}

		if (value.isNan) return

		Fiber.abort("Failed to assert")
	}

	/**
	 * Asserts `value` is not Nan.
	 * @param  { Num }  value
	 */
	static isNotNan(value) {
		if (value.type != Num) {
			Fiber.abort("The arguments to 'isNotNaN' must be of type Num")
		}

		if (!value.isNan) return

		Fiber.abort("Failed to assert")
	}

	/**
	 * Asserts `value` is a Bool.
	 * @param  { Mixed }  value
	 */
	static isBool(value) {
		if (value is Bool) return
		Fiber.abort("Failed to assert that %(value) is a Bool")
	}

	/**
	 * Asserts `value` is not a Bool.
	 * @param  { Mixed }  value
	 */
	static isNotBool(value) {
		if (value.type != Bool) return
		Fiber.abort("Failed to assert that %(value) is not a Bool")
	}

	/**
	 * Asserts `value` is a Range.
	 * @param  { Mixed }  value
	 */
	static isRange(value) {
		if (value is Range) return
		Fiber.abort("Failed to assert that %(value) is an Range")
	}

	/**
	 * Asserts `value` is not a Range.
	 * @param  { Mixed }  value
	 */
	static isNotRange(value) {
		if (value is Range) return
		Fiber.abort("Failed to assert that %(value) is not an Range")
	}

	/**
	 * Asserts `value` is a an inclusive range
	 * @param  { Range }  value
	 */
	static isInclusive(value) {
		if (value.type != Range) {
			Fiber.abort("The arguments to 'isInclusive' must be of type Num")
		}

		if (value.isInclusive) return

		Fiber.abort("Failed to assert")
	}

	/**
	 * Asserts that 'value' is not an inclusive range.
	 * @param  { Range }  value
	 */
	static isNotInclusive(value) {
		if (value.type != Range) {
			Fiber.abort("The arguments to 'isNotInclusive' must be of type Num")
		}

		if (!value.isInclusive) return

		Fiber.abort("Failed to assert")
	}

	/**
	 * Asserts `object` is a `value`.
	 * @param  { Mixed }  value
	 */
	static isTypeOf(object, value) {
		if (object.type == value) return
		Fiber.abort("Failed to assert that %(object) is of type %(value.type)")
	}

	/**
	 * Asserts `object` is not a `value`.
	 * @param  { Mixed }  value
	 */
	static isNotTypeOf(object, value) {
		if (object.type != value) return
		Fiber.abort("Failed to assert that %(object) is not of type %(value.type)")
	}

	/**
	 * Asserts `haystack` contains `needle`.
	 * @param  { List | Range | String } haystack
	 * @param  { Mixed } needle
	 */
	static contains(haystack, needle) {
		if (haystack.type == List || haystack.type == Range || haystack.type == String) {
			Fiber.abort("The arguments to 'contains' must be of type List, Range, or String")
		}

		if (object.type == List) {
			if (haystack.contains(needle)) return
		} else if (object.type == Range) {
			if (haystack.contains(needle)) return
		} else if (object.type == String) {
			if (haystack.contains(needle)) return
		}

		Fiber.abort("Failed to assert that %(haystack) contains %(needle)")
	}

	/**
	 * Asserts `haystack` does not contain `needle`.
	 * @param  { List | Range | String } haystack
	 * @param  { Mixed } needle
	 */
	static doesNotContain(haystack, needle) {
		if (haystack.type == List || haystack.type == Range || haystack.type == String) {
			Fiber.abort("The arguments to 'doesNotContain' must be of type List, Range, or String")
		}

		if (object.type == List) {
			if (!haystack.contains(needle)) return
		} else if (object.type == Range) {
			if (!haystack.contains(needle)) return
		} else if (object.type == String) {
			if (!haystack.contains(needle)) return
		}

		Fiber.abort("Failed to assert that %(haystack) does not contain %(needle)")
	}

	/**
	 * Asserts that the count of `object` is equal to `length`.
	 * For Lists, Maps, and Strings this checks the `count` function.
	 * For Functions this checks the `arity` function.
 	 * @param  { Fn | List | Map | String } object
	 * @param  { Num } length
	 */
	static countOf(object, length) {
		if (object.type == Fn || object.type == List || object.type == Map || object.type == String) {
			Fiber.abort("The arguments to 'countOf' must be of type Fn, List, Map, or String")
		}

		if (object.type == Fn) {
			if (object.arity == length) return
		} else if (object.type == List) {
			if (object.count == length) return
		} else if (object.type == Map) {
			if (object.count == length) return
		} else if (object.type == String) {
			if (object.count == length) return
		}

		Fiber.abort("an error was thrown")
	}

	/**
	 * Asserts `object` contains all keys from `keys` but may have more unlisted.
	 * @param  { Map }  object
	 * @param  { List }  keys
	 */
	static containsAllKeys(object, keys) {
		if (object.type == Map && keys.type == List) {
			Fiber.abort("The arguments to 'containsAllKeys' must be of type Map and List")
		}

		var shouldError = false
		for (key in keys) {
			if (!object.containsKey(key)) {
				shouldError = true
			}
		}

		if (shouldError) {
			Fiber.abort("expected %(object) to contain all keys %(keys)")
		}
	}

	/**
	 * Asserts that `fn` will throw an error.
	 * @param  { Fn } fn
	 */
	static throws(fn) {
		if (fn.type == Fn) {
			Fiber.abort("The arguments to 'throws' must be of type Fn")
		}

		var fiber = Fiber.new { fn.call() }
		if (fiber.try() != null) return

		Fiber.abort("an error was thrown")
	}

	/**
	 * Asserts that `fn` will not throw an error.
	 * @param  { Fn } fn
	 */
	static doesNotThrow(fn) {
		if (fn.type == Fn) {
			Fiber.abort("The arguments to 'doesNotThrow' must be of type Fn")
		}

		var fiber = Fiber.new { fn.call() }
		if (fiber.try() == null) return

		Fiber.abort("an error was thrown")
	}

	/**
	 * Asserts that the `target` is equal to `expected`, to within `delta`.
	 * @param  { Num } target
	 * @param  { Num } expected
	 * @param  { Num } delta
	 */
	static approximately(target, expected, delta) {
		if (target.type != Num || expected.type != Num || delta.type != Num) {
			Fiber.abort("The arguments to 'approximately' must be of type Num")
		}

		if ((target - expected).abs <= delta) return

		Fiber.abort("an error was thrown")
	}

	/**
	 * Asserts that `target` does not contain any values.
	 * For Lists and Strings this checks the `count` function.
	 * For Maps this checks the `isEmpty` function.
	 * @param  { List | Map | String }  target
	 */
	static isEmpty(target) {
		if (target.type != List || target.type != Map || target.type == String) {
			Fiber.abort("The arguments to 'isEmpty' must be of type List, Map, or String")
		}

		if (target.type == List) {
			if (target.count == 0) return
		} else if (target.type == Map) {
			if (target.isEmpty) return
		} else if (target.type == String) {
			if (target.count == 0) return
		}

		Fiber.abort("expected %(target) to be empty")
	}

	/**
	 * Asserts that `target` contains values.
	 * For Lists, and Strings this checks the `count` function.
	 * For Maps this checks the `isEmpty` function.
	 * @param  { List | Map | String }  target
	 */
	static isNotEmpty(target) {
		if (target.type != List || target.type != Map || target.type == String ) {
			Fiber.abort("The arguments to 'isNotEmpty' must be of type List, Map, or String")
		}

		if (target.type == List) {
			if (target.count > 0) return
		} else if (target.type == Map) {
			if (!target.isEmpty) return
		} else if (target.type == String) {
			if (target.count > 0) return
		}

		Fiber.abort("expected %(target) to not be empty")
	}
}
