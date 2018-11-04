# cweed
Sketch of a C-like, low-level language that emphasizes memory safety.

I will probably never end up writing a compiler for this.

## Features
* Types like `int`, `short`, have guaranteed size, regardless of platform.
* Classes are pass-by-reference by default - no pointers needed in majority of cases.
* Pointers cannot be cast to arrays, except in methods marked `unsafe`.
* Transparent, low-cost (*not* zero-cost) C interop.
* RAII