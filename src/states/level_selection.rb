class LevelSelection < State
  LEVELS_ON_SCREEN = 4
  
  def initialize
    @title = Gosu::Image.new 'media/title_dark.png'
    @top = 0
    @selection = 0
    @levels = Dir.glob('levels/*.pml').map(&LevelInfo.method(:new)).sort
  end
  
  def draw
    @title.draw 0, 0, 0
    draw_rect 631, 0, 1, 400, 0xff003010
    draw_rect 632, 0, 16, 400, 0xff004020
    LEVELS_ON_SCREEN.times do |y|
      break if y == @levels.size
      @levels[y + @top].draw y * 100, @top + y == @selection
    end
    if @levels.size > LEVELS_ON_SCREEN then
      draw_string '|', 632, 384.0 * @top / (@levels.size - LEVELS_ON_SCREEN)
    end
    draw_string 'Wähle mit den Pfeiltasten ein Level aus und starte es mit Enter.', :center, 424
    draw_string 'Willst du zurück zum Hauptmenü, drücke Escape.', :center, 446
  end
  
  def button_down(id)
    if cancel? id then
      State.current = Menu.new
    elsif up? id or left? id then
      @selection -= 1 if @selection > 0
      @top -= 1 if @selection < @top
    elsif down? id or right? id then
      @selection += 1 if @selection < @levels.size - 1
      @top += 1 if @selection >= @top + LEVELS_ON_SCREEN
    elsif confirmation? id then
      State.current = Game.new @levels[@selection].filename
    end
  end
  
end