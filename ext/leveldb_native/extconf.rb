require 'mkmf'

dir_config('leveldb')

have_library "leveldb" or abort "Can't find leveldb library."

$CXXFLAGS += " -std=c++11 " if RUBY_PLATFORM =~ /darwin/

create_makefile "leveldb-native/leveldb_native"
