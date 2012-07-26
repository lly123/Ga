$LOAD_PATH.unshift("/Users/lly/Documents/MyProjects/Prog/src/")

require "rspec"
require "SmASTParser"
require "expr_translator"

include SmAST
include ExprTranslator

describe 'expression translator' do

  it "should translate tree into a number expression" do
    parser = Parser.new('18')
    numExpr = translate parser.prog.tree
    eval(numExpr).should == 18
  end

  it "should translate tree into a minus expression" do
    parser = Parser.new('(- 20 8)')
    minusExpr = translate parser.prog.tree
    eval(minusExpr).should == 12
  end

  it "should translate tree into a minus expression given using recursive expression" do
    parser = Parser.new('(- (- 30 10) 8)')
    minusExpr = translate parser.prog.tree
    eval(minusExpr).should == 12
  end

  it "should return constant number given a let expression" do
    parser = Parser.new('(let (x 10) (10))')
    letExpr = translate parser.prog.tree
    eval(letExpr).should == 10
  end

  it "should return the value of x given a let expression" do
    parser = Parser.new('(let (x 10) (x))')
    letExpr = translate parser.prog.tree
    eval(letExpr).should == 10
  end

  it "should calculate the body of a let expression" do
    parser = Parser.new('(let (x 10) ((- x 8)))')
    letExpr = translate parser.prog.tree
    eval(letExpr).should == 2
  end

end