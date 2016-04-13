$LOAD_PATH.unshift *Dir.glob(File.expand_path('features'))
require 'testmunk/calabash/android/screens/screen'

class MainScreen < Testmunk::Android::Screen
  def await
    super
  end
end