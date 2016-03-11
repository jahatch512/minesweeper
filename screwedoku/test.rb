def self.from_file(filename)
  rows = File.readlines(filename).map(&:chomp)
  tiles = rows.map do |row|
    nums = row.split("").map { |char| Integer(char) }
    nums.map { |num| Tile.new(num) }
  end

  self.new(tiles)
end




class SudokuGame
  def self.from_file(filename)
    board = Board.from_file(filename)
    self.new(board)
  end

  def initialize(board)
    @board = board
  end
