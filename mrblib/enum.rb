module Enumerable
  # @overload chunk
  #   @yieldparam []
  # @return [Array]
  def chunk(initial_state = nil, &block)
    return to_enum :chunk, initial_state unless block_given?
    old_state = state = initial_state
    acc = []
    result = []
    each do |*e|
      old_state = state
      state = block.call(*e)
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
