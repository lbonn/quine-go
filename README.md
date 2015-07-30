quine-go
========

Some examples of simple quines in go.
Nothing new or even smart, just had some time to kill.

quine.go
--------

Simple quine, trying to be as compact as possible.
Uses the '%q' format verb to avoid re-escaping the code by hand.

size: 118 bytes

quine64.go
----------

Thanks to go extensive standard library, it is very easy to write a quine
using a base64 encoding of the code. To rebuild it, just use:

    $  make clean && make

size: 278 bytes

quinefmt.go
-----------

This quine tries to pass through gofmt without being modified. Unsurprisingly, it is significantly larger than the minimal one.

size: 154 bytes

e.go
----

Slightly degenerate version: triggers a syntax error message identical to the
source file.

This is tuned to work with the standard go compiler and can break very easily (just rename the file).
It has a short and unexplicit file name to minimize its size.

size: 47 bytes


Tests
-----

A failed quine is pretty sad.
Just run:

    $  make check

to verify that everything is in order.

Others
------

I will happily accept tricks to make these quines shorter, if you do
not have something better to do :).
