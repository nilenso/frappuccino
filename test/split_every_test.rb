require 'test_helper'

describe "split_every" do
  it "returns every 2 values as one value" do
    button = Button.new

    stream = Frappuccino::Stream.new(button)

    parted_stream = stream.partition(2)

    parts = []

    parted_stream.on_value do |event|
      parts << event
    end

    5.times { button.push }

    assert_equal [ [:pushed, :pushed],
                   [:pushed, :pushed] ], parts
  end

  it "returns every 3 values as one value" do
    button = Button.new

    stream = Frappuccino::Stream.new(button)

    parted_stream = stream.partition(3)

    parts = []

    parted_stream.on_value do |event|
      parts << event
    end

    7.times { button.push }
 
    assert_equal [ [:pushed, :pushed, :pushed],
                   [:pushed, :pushed, :pushed] ], parts
  end

end
