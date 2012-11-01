require 'spec_helper'

def assert_stage(original, expected)
  game = Game.new original
  game.next_gen.should == expected
end

describe Game do
  it "1 cell" do
    assert_stage [[0]], [[0]]
    assert_stage [[1]], [[0]]
  end

  it "2 cells" do
    assert_stage [[0], [0]],
                 [[0], [0]]

    assert_stage [[1], [0]],
                 [[0], [0]]

    assert_stage [[1], [1]],
                 [[0], [0]]
  end

  it "3 cells" do
    assert_stage [[0], [0], [0]],
                 [[0], [0], [0]]

    assert_stage [[1], [0], [0]],
                 [[0], [0], [0]]

    assert_stage [[1], [1], [0]],
                 [[0], [0], [0]]

    assert_stage [[1], [1], [1]],
                 [[0], [1], [0]]
  end

  it "4 cells" do
    assert_stage [[0], [0], [0], [0]],
                 [[0], [0], [0], [0]]

    assert_stage [[1], [0], [0], [0]],
                 [[0], [0], [0], [0]]

    assert_stage [[1], [1], [0], [0]],
                 [[0], [0], [0], [0]]

    assert_stage [[1], [1], [1], [0]],
                 [[0], [1], [0], [0]]

    assert_stage [[0], [1], [1], [1]],
                 [[0], [0], [1], [0]]

    assert_stage [[1], [1], [1], [1]],
                 [[0], [1], [1], [0]]
  end
end
