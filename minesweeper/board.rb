require "Tile"

class Board

def initialize
  @grid = Array.new(9) do Array.new(9) {Tile.new(0)}
  end
  grid.each do
end

def []=(pos,value)
  x,y = pos
  grid[x][y] = value
end

end
