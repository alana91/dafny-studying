// Examples copied manually from the tutorial, to exercise memory. Some are expanded beyond copying. 

method Abs(x: int) returns (y: int)
    ensures 0 <= y
    ensures 0 <= x ==> y == x
    ensures x < 0 ==> y == -x
{
    if x < 0 {
        return -x;
    }
    return x;
}

method MultipleReturns(x: int, y: int) returns (less: int, more: int)
    requires 0 < y
    ensures less < x
    ensures x < more
{
    more := x + y;
    less := x - y;
}

method Testing()
{
    var v := Abs(-3);
    assert v == 3;

    var b := Abs(3);
    assert v == 3;

    var a := Abs(0);
    assert v == 0; // ?
}