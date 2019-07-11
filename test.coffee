KeepNFirst = require "./"

o = new KeepNFirst(100)
for i in [1000000..1]
    o.add i

console.log o.values

o = new KeepNFirst 3, (a,b) ->
    Math.max(a...) - Math.max(b...)

for e in [
    [1,2,3]
    [2,3,4]
    [102,1,212,1]
    [1,1,1,2]
    [333,2,1]
    [-1,-100]
    [1000,2,2] ]
    o.add e

console.log o.values

o =  new KeepNFirst 100
a = (Math.random() for x in [0..1000000])

for e in a
    o.add e

test = a
    .sort (x,y) -> x - y
    .slice 0, 100
    .every (x,i) ->
        x is o.values[i]

if test
    console.log "TEST PASSED SUCCESSFULLY"
else
    console.warn "TEST DIN'T PASS!!!"
