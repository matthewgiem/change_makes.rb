
require("rspec")
require("change.rb")

describe('Fixnum#change') do
  it('take a change value less than 5 and give how many pennies you need') do
    expect(3.change()).to(eq("3 pennies"))
  end
  it('take a change value thats a mulitple of 5 and give how many nickles you need') do
    expect(5.change()).to(eq("1 nickle"))
  end
  it('take a change value thats a mulitple of 10 and give how many dimes you need') do
    expect(20.change()).to(eq("2 dimes"))
  end
  it('take a change value thats a mulitple of 25 and give how many quarters you need') do
    expect(75.change()).to(eq("3 quarters"))
  end
  it('take a change value thats less than 100 and give you the least amout of coins you need') do
    expect(88.change()).to(eq("3 quarters 1 dime 3 pennies"))
  end
end
