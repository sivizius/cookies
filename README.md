cookies
=======
this provides functions to hash strings character by character and to get a unique identifier by using a hashtable.

*cookies* itself is just a module with the following functions:
* `init(@absorb(), @squeeze(), *data, lb(size))` - initial function, which must be called before any other.
* `new(char, *char, char.size)` - creates a new *symbol*.
* `put(char, *char, char.size)` - add a char to *symbol*.
* `fin()` - finalize *symbol* and return *state*.
* `insert()` - stores *symbol* in hashtable and return *uid*, if *symbol* is known, then carry is set, otherwise cleared.
* `get()` - return `state`, `*state`, `*symbol`, `len(symbol$)`, `symbol$` and `uid`.
* `hash(string$)` - creates a new *symbol*, add every char of `string$` and finalize it.
* `debug()` - put the whole tree to stdout. not really useful.

you can use for example [sasha](https://github.com/sivizius/sasha "sivican absorption and squeezing hash algorithm")
to get `@absorb()`, `@squeeze()` and `*data`:

    lea lib1arg, [ sbox ]
    sasha0_init , seed
    cookies_init

usage and key files
-------------------
you need [flatassembler](http://flatassembler.net/download.php "click here to download flatassembler") to build it.
* *edit.sh* - edit repository with system-editor (nano, vim, etc)
* *make.sh* - build repository
* *conf.sh* - perhaps useful sometime later
* *code/main.fasm* - the code

