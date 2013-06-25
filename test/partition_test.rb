require 'test_helper'

describe "partition" do
  it "will partition the ruby way" do
    button = Button.new
    stream = Frappuccino::Stream.new(button)

    first, second = []
    stream.partition { |d| d.odd? }.on_value do |event|
      # first << event. # TODO
    end

    second = stream.partition { |d| d.odd? }.last
  end

  it "will do more" do

  end

end
