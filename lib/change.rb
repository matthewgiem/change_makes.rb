
require('pry')

class Fixnum
  define_method(:change)  do
    entry = self
    answer = ""
    if (entry./(25)).>(0)
      quarters = entry/25
      num_quarters = quarters.to_s+(" quarters")
      answer.concat(num_quarters)
      entry = entry.%(25)
    end
    if (entry./(10)).>(0)
      dimes = entry/10
      num_dimes = dimes.to_s+(" dimes")
      answer.concat(num_dimes)
      entry = entry.%(10)
    end
    answer
  end
end
