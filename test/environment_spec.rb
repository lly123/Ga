$LOAD_PATH.unshift("/Users/lly/Documents/MyProjects/Prog/src/")

require "rspec"
require "environment"

include Environment

describe "Environment" do

  it "should save number value into environment" do
    env = extend_env 'x', 18, empty_env
    val = apply_env 'x', env
    val.should == 18
  end

end