#!/data/data/com.termux/files/usr/bin/lua5.3

-- Options

option = arg[1]

-- Variables

use_lua52="lua52"
use_lua53="lua53"
use_lua54="lua54"
show_help="--help"
show_about="--about"
local colors = require 'ansicolors'

function about()
   print("Made by @Yisus7u7 <jesuspixel5@gmail.com>")
end

function help()
   print(colors('%{bright white cyanbg blink}change lua - change lua versions quickly\n'))
   print(colors('%{bright white } Options : \
   --help : show help message\
   --about : show about message\
   lua52  : use lua 5.2\
   lua53  : use lua 5.3\
   lua54  : use lua 5.4\
   Example of switching to lua53:\
   changelua lua53\
   '))
end

function error()
   print(colors('%{bright red }Error: invalid option ==>'), option)
   print(colors('%{bright yellow blink}Run changelua --help for help'))
end

--print (option)

if option == show_help then
  help()
end

if option == show_about then
  about()
end

if option == use_lua52 then
  print(colors('%{bright cyan blink}Using lua 5.2 ...\n'))
  os.execute("apt install lua52 -y")
  os.execute("rm /data/data/com.termux/files/usr/bin/lua")
  os.execute("rm /data/data/com.termux/files/usr/bin/luac")
  os.execute("ln -s /data/data/com.termux/files/usr/bin/lua5.2 /data/data/com.termux/files/usr/bin/lua")
  os.execute("ln -s /data/data/com.termux/files/usr/bin/luac5.2 /data/data/com.termux/files/usr/bin/luac")
  print(colors('%{bright green blink}Done.\n'))
  os.execute("lua -v")
end
  
if option == use_lua53 then
  print(colors('%{bright cyan blink}Using lua 5.3 ...\n'))
  os.execute("apt install lua53 -y")
  os.execute("rm /data/data/com.termux/files/usr/bin/lua")
  os.execute("rm /data/data/com.termux/files/usr/bin/luac")
  os.execute("ln -s /data/data/com.termux/files/usr/bin/lua5.3 /data/data/com.termux/files/usr/bin/lua")
  os.execute("ln -s /data/data/com.termux/files/usr/bin/luac5.3 /data/data/com.termux/files/usr/bin/luac")
  print(colors('%{bright green blink}Done.\n'))
  os.execute("lua -v")
end
  
if option == use_lua54 then
  print(colors('%{bright cyan blink}Using lua 5.4 ...\n'))
  os.execute("apt install lua54 -y")
  os.execute("rm /data/data/com.termux/files/usr/bin/lua")
  os.execute("rm /data/data/com.termux/files/usr/bin/luac")
  os.execute("ln -s /data/data/com.termux/files/usr/bin/lua5.4 /data/data/com.termux/files/usr/bin/lua")
  os.execute("ln -s /data/data/com.termux/files/usr/bin/luac5.4 /data/data/com.termux/files/usr/bin/luac")
  print(colors('%{bright green blink}Done.\n'))
  os.execute("lua -v")
else 
   error()
end
