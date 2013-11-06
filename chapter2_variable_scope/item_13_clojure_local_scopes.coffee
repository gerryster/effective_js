wrapElementsBroken = (a)->
  result = []
  for i in [0..a.length]
    # WRONG: i is bound by reference, so when the function executes, i is 5
    result[i] = -> a[i]

  result

wrapped = wrapElementsBroken [10, 20, 30, 40, 50]
fBroken = wrapped[0]
console.log "fBroken(): ", fBroken()

wrapElements = (a)->
  result = []
  for i in [0..a.length]
    # The "do" keywords creates the IFFY to create a local variable for i and
    # bind it to the returned function.
    result[i] = do(i)->
       -> a[i]

  result

wrapped = wrapElements [10, 20, 30, 40, 50]
f = wrapped[0]
console.log "f(): ", f()
