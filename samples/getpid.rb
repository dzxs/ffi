require 'rubygems'
require 'ffi'
module Foo
  extend FFI::Library
  ffi_lib FFI::Library::LIBC
  attach_function :_getpid, [ ], :int
end
puts "My pid=#{Foo._getpid}"
