module Enumerable
  def chunk(initial_state = nil)
    old_state = state = initial_state
    acc = []
    result = []
    each do |*e|
      old_state = state
      state = yield(*e)
      if old_state == state
        acc << e.__svalue
      else # state has changed, setup a new accumulator
        result << [old_state, acc] if old_state != nil
        acc = [e.__svalue]
      end
    end
    result << [state, acc] unless acc.empty?
    result
  end
end
