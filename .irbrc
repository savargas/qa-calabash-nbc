require "awesome_print"
AwesomePrint.irb!

require 'calabash-android/operations'
extend Calabash::Android::Operations

require 'testmunk/calabash/utils/query'
extend Testmunk::Utils::Query

require 'testmunk/calabash/android/screens/views/views'
extend Testmunk::Android::Views

$LOAD_PATH.unshift File.expand_path("features")

