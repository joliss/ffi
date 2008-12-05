require 'rubygems'
require 'spec'

$:.unshift File.join(File.dirname(__FILE__), "../..", "lib"), File.join(File.dirname(__FILE__), "../..", "build") if ENV["MRI_FFI"]
require "ffi"

module TestLibrary
  PATH = "#{Dir.getwd}/build/libtest.#{FFI::Platform::LIBSUFFIX}"
end
module LibTest
  extend FFI::Library
  ffi_lib TestLibrary::PATH
end