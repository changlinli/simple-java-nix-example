Simple Example of How to Package Java Application with Nix
==========================================================

There's a dearth of materials on how to package Java applications for Nix that
aren't pre-built.

So here's how to do it from first principles; no fancy Nix machinery at all,
just bare bones Java source files all the way to a runnable script that can be
directly invoked.

To test this simple example out, assuming you have Nix already installed, the
following suffices:

    nix-build simple-java-example.nix
    result/bin/Hello

This should result in `Hello World!` being printed out to the screen.
