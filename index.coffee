class KeepNFirst
    constructor: (@n = 3, @compare = (x,y) -> x - y) ->
        @values = []
    _findIndex: (x) ->
        left=0
        right=@values.length
        while left < right
            i = (left + right) // 2
            if 0 < @compare(x, @values[i])
                left = i + 1
            else
                right = i
        return left
    add: (x) ->
        i = @_findIndex x
        if i < @n
            @values.splice i, 0, x
            if @values.length > @n
                @values.splice @n, 1
        this


module.exports = KeepNFirst
