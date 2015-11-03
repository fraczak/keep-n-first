# keep-n-first
Maintain a sorted list of `n` smallest elements

    KeepNFirst = require "./KeepNFirst"
    o = new KeepNFirst(3)
    o.add(10).add(9).add(8).add(7).add(6).values
    -> [ 6, 7, 8 ]
