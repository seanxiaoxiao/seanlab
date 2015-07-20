'use strict';

var volumn = function(l, w, h) {
	return l * w * h;
}

var curry = function(fn) {
	var arity = fn.length;

	return (function resolver() {
		var memory = Array.prototype.slice.call(arguments);
		return function() {
			var local = memory;
			Array.prototype.push.apply(local, arguments);
			var next = local.length >= arity ? fn : resolver;
			return next.apply(null, local);
		};
	}());
}

var currfied = curry(volumn);
var length = currfied(1);
var widthAndLength = length(2);
var volumn = widthAndLength(3);

console.log(volumn);