require "general_pair"

module Environment

  include GeneralPair

  def empty_env
    nil
  end

  def extend_env var, val, env
    cons var, (cons val, env)
  end

  def apply_env var, env
    raise "no value in environment for variable #{var}" if env.nil?
    varInEnv = car env
    if varInEnv == var
      car (cdr env)
    else
      cdr (cdr env)
    end
  end

end