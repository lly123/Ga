$LOAD_PATH.unshift("/Users/lly/Documents/MyProjects/Prog/src/")

require "rspec"
require "general_pair"

include GeneralPair

describe 'general pair' do

  it "should returns left value" do
    pair = cons 'left', 'right'
    (car pair).should == 'left'
  end

  it "should returns right value" do
    pair = cons 'left', 'right'
    (cdr pair).should == 'right'
  end

end