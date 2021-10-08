# Changelua
A simple program to change lua versions in termux 

# Setup lua53

You need lua 5.3, install it by running:

```bash
pkg update
pkg install lua53 -y

ln -s /data/data/com.termux/files/usr/bin/luac5.3 /data/data/com.termux/files/usr/bin/luac

ln -s /data/data/com.termux/files/usr/bin/lua5.3 /data/data/com.termux/files/usr/bin/lua

```

## Installation 

```bash
pkg install luarocks make
luarocks install ansicolors 

# And run:

git clone https://github.com/Yisus7u7/changelua.git
cd changelua
make install
```

## Use

```bash
changelua --help
change lua - change lua versions quickly

 Options : 
   --help : show help message
   --about : show about message
   lua52  : use lua 5.2
   lua53  : use lua 5.3
   lua54  : use lua 5.4
   Example of switching to lua53:
   changelua lua53
   
```

Example of using lua54 as default interpreter:

`changelua lua54`

Thanks for using my project.
