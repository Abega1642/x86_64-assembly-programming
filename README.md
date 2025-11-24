# Assembly programming

_Initiation to assembly programming_

_Assembly on x86_64 ISA_

## Compliation :

Make sure you have `nasm` installed on your computer. In my case, I use debian
so, in order to install it, just use the following command :

```bash
┌─[user@debian] - [~] - [10019]
└─[$]  sudo apt-get install nasm
```

Suppose your assembly file is `my_program.asm`

First thing to do is compiling the code using `nasm` compiler to generate us an
output file `my_program.o`:

```bash
┌─[user@debian] - [~] - [10019]
└─[$]  nasm -f elf64 my_program.asm -o my_program
```

Second, we use the GNU linker `ld` to generate us the executable program :

```bash
┌─[user@debian] - [~] - [10019]
└─[$]  ld my_program.o -o my_program
```

Then run your program :

```bash
┌─[user@debian] - [~] - [10019]
└─[$]  ./my_program
```

> Razafindratelo Abegà

