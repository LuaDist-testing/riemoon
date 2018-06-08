-- This file was automatically generated for the LuaDist project.

package="riemoon"
version="0.0.1-1"
-- LuaDist source
source = {
  tag = "0.0.1-1",
  url = "git://github.com/LuaDist-testing/riemoon.git"
}
-- Original source
-- source = {
--    url = "git://github.com/algernon/riemoon"
-- }
description = {
   summary = "A Riemann client library.",
   detailed = [[
            A Riemann client library built on top of riemann-c-client.
    ]],
   homepage = "http://github.com/algernon/riemoon/",
   license = "LGPL3+"
}
dependencies = {
   "lua >= 5.2",
   "busted >= 2.0.rc7-0"
}
build = {
   type = "command",
   build_command = "autoreconf -i && ./configure --prefix=$(PREFIX) --libdir=$(LIBDIR) --datadir=$(LUADIR) && make clean && make && make check",
   install_command = "make install"
}