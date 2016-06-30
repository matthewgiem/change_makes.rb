
require('pry')

class Fixnum
  define_method(:change)  do
    entry = self
    answer = ""
    if (entry./(25)).>(0)
      quarters = entry/25
      num_quarters = quarters.to_s+(" quarter") if quarters == 1
      num_quarters = quarters.to_s+(" quarters") if quarters > 1
      answer.concat(num_quarters)
      answer.concat(" ") if entry.%(25) > 0
      entry = entry.%(25)
    end
    if (entry./(10)).>(0)
      dimes = entry/10
      num_dimes = dimes.to_s+(" dime") if dimes == 1
      num_dimes = dimes.to_s+(" dimes") if dimes > 1
      answer.concat(num_dimes)
      answer.concat(" ") if entry.%(10) > 0
      entry = entry.%(10)
    end
    if (entry./(5)).>(0)
      nickles = entry/5
      num_nickles = nickles.to_s+(" nickle")
      answer.concat(num_nickles)
      answer.concat(" ") if entry.%(5) > 0
      entry = entry.%(5)
    end
    if (entry./(1)).>(0)
      pennies = entry/1
      num_pennies = pennies.to_s+(" pennies") if pennies > 1
      num_pennies = pennies.to_s+(" penny") if pennies == 1
      answer.concat(num_pennies)
    end
    answer
  end
end
