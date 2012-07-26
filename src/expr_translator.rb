require "SmASTLexer"
require "environment"

module ExprTranslator

  include Environment

  class NumExpr
    attr_reader :value

    def initialize num
      @value = num
    end
  end

  class VarExpr
    attr_reader :name

    def initialize name
      @name = name
    end
  end

  class MinusExpr
    attr_reader :leftExpr, :rightExpr

    def initialize leftExpr, rightExpr
      @leftExpr = leftExpr
      @rightExpr = rightExpr
    end
  end

  class LetExpr
    attr_reader :var, :val, :body

    def initialize var, val, body
      @var = var
      @val = val
      @body = body
    end
  end

  def translate tree
    case tree.name
      when :NUMBER.to_s
        NumExpr.new tree.child(0).text.to_i
      when :VARIABLE.to_s
        VarExpr.new tree.child(0).text
      when :MINUS.to_s
        left = translate tree.child(0)
        right = translate tree.child(1)
        MinusExpr.new left, right
      when :LET.to_s
        var = tree.child(0).text
        val = translate tree.child(1)
        body = translate tree.child(2)
        LetExpr.new var, val, body
    end
  end

  def eval expr, env = nil
    case expr
      when NumExpr
        expr.value
      when VarExpr
        apply_env expr.name, env
      when MinusExpr
        eval(expr.leftExpr, env) - eval(expr.rightExpr, env)
      when LetExpr
        env = extend_env expr.var, eval(expr.val, env), env
        eval expr.body, env
    end
  end

end