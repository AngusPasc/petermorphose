require 'require_relative'
require 'gosu'

# Gosu related polish
# TODO Proper scaling
# TODO Better resource handling

# Polish
# TODO "Gosu" splash screen
# TODO Remaining Menu
# TODO High Scores

def debug binding
  require 'pry'
  Pry.start binding
end

# This allows a level filename to be passed as the first argument to
# the script. 
ARGV[0] = File.expand_path(ARGV[0]) if ARGV[0]

if EXE_PATH = ENV['OCRA_EXECUTABLE'] then
  # We are running an Ocra-generated EXE on Windows:
  # The current directory is that of the EXE file.
  Dir.chdir File.dirname(EXE_PATH)
else
  # We are running in any other way:
  # The current directory is one above the source (__FILE__).
  Dir.chdir File.expand_path("#{__FILE__}/../..")
end

%w(localization script const helpers/graphics helpers/audio helpers/input
   states/state states/title states/menu states/level_selection states/game
   objects/object_def objects/game_object objects/living_object
    objects/collectible_object objects/effect_object
   ini_file level_info map).each { |fn| require_relative fn }

# Not yet part of gosu-preview
Gosu::enable_undocumented_retrofication rescue nil

WIDTH, HEIGHT = 640, 480
TARGET_FPS = 30

# Z Order
Z_EFFECTS, Z_LAVA, Z_UI, Z_TEXT = *0..255

# Simple implementation of the Gosu "State-Based" game pattern
class Window < Gosu::Window
  def initialize
    super WIDTH, HEIGHT, :update_interval => 1000.0 / TARGET_FPS
    
    self.caption = 'Peter Morphose'
    
    if ARGV[0] then
      State.current = Game.new LevelInfo.new(ARGV[0])
    else
      State.current = Title.new
    end
  end
  
  def update
    if State.current then
      State.current.update
    else
      close
    end
  end
  
  def draw
    State.current.draw if State.current
  end
  
  def button_down id
    State.current.button_down id if State.current
  end
  
  def button_up id
    State.current.button_up id if State.current
  end
  
  def needs_cursor?
    State.current.needs_cursor? if State.current
  end
end

Window.new.show unless defined? Ocra
