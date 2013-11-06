// Generated by CoffeeScript 1.6.3
var f, fBroken, wrapElements, wrapElementsBroken, wrapped;

wrapElementsBroken = function(a) {
  var i, result, _i, _ref;
  result = [];
  for (i = _i = 0, _ref = a.length; 0 <= _ref ? _i <= _ref : _i >= _ref; i = 0 <= _ref ? ++_i : --_i) {
    result[i] = function() {
      return a[i];
    };
  }
  return result;
};

wrapped = wrapElementsBroken([10, 20, 30, 40, 50]);

fBroken = wrapped[0];

console.log("fBroken(): ", fBroken());

wrapElements = function(a) {
  var i, result, _i, _ref;
  result = [];
  for (i = _i = 0, _ref = a.length; 0 <= _ref ? _i <= _ref : _i >= _ref; i = 0 <= _ref ? ++_i : --_i) {
    result[i] = (function(i) {
      return function() {
        return a[i];
      };
    })(i);
  }
  return result;
};

wrapped = wrapElements([10, 20, 30, 40, 50]);

f = wrapped[0];

console.log("f(): ", f());