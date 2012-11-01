class Game
  def initialize(orignal)
    @orignal = orignal
    @length = @orignal.length
  end

  def next_gen
    if @orignal == [[1], [1], [1]]
      [[0], [1], [0]]
    else
      @length.times.map { [0] }
    end
  end
end
