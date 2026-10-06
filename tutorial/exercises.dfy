// Exercises suggested by the tutorial and solved here

// Methods and assertions
// Exercise 0
method Max(a: int, b: int) returns (c: int) 
    ensures a >= b ==> c == a
    ensures b >= a ==> c == b
{
    if a > b {
        return a;
    }
    return b;
}


// Exercise 2
method Abs(x: int) returns (y: int)
    requires x < 0
    ensures 0 <= y
    ensures 0 <= x ==> y == x
    ensures x < 0 ==> y == -x
{
    return -x;
}


// Exercise 3
method Abs2(x: int) returns (y: int)
    requires x == -1
    ensures 0 <= y
    ensures 0 <= x ==> y == x
    ensures x < 0 ==> y == -x
{
    y := x + 2;
}


// Exercise 3
method Abs3(x: int) returns (y: int)
    // No precodition can make this verify
    requires false
    ensures 0 <= y
    ensures 0 <= x ==> y == x
    ensures x < 0 ==> y == -x
{
    y := x + 1;
}


// Functions



method Testing()
{
    var m := Max(1, 2);
    assert m == 2;

    var n := Max(0, -1);
    assert n == 0;

    var a := Abs(-1);
    assert a == 1;
}