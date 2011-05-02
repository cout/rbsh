class Bareword < Command
  def initialize(m, args)
    super(m.to_s, args)
  end
end

module Barewords
  def method_missing(m, *args)
    return Bareword.new(m, args)
  end
end

