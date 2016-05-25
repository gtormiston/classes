require 'calculator'


describe Calculator do
  calc = Calculator.new
  it 'creates a calculator object' do 
    expect(calc).to be_a(Calculator)
  end 

  it 'adds two numbers' do
    expect(calc.add(2, 3)).to eq 5
   expect(calc.add(6, 4)).to eq 10
   expect(calc.add(0, 0)).to eq 0
   expect(calc.add(-1, -1)).to eq -2
   expect(calc.add(Float::INFINITY, 0)).to eq Float::INFINITY
   expect(calc.add(Float::INFINITY, Float::INFINITY)).to eq Float::INFINITY
  end  

   it 'subtracts two numbers' do
    expect(calc.subtract(3, 2)).to eq 1
    expect(calc.subtract(6, 4)).to eq 2
    expect(calc.subtract(0, 0)).to eq 0
    expect(calc.subtract(-1, -1)).to eq 0
    expect(calc.subtract(Float::INFINITY, 0)).to eq Float::INFINITY
    expect(calc.subtract(Float::INFINITY, Float::INFINITY)).to be_nan
  end

  it 'divides two numbers' do
    expect(calc.divide(10, 5)).to eq 2
    expect(calc.divide(20, 2)).to eq 10
  end

  it 'multiplies two numbers' do
    expect(calc.multiply(3, 2)).to eq 6
    expect(calc.multiply(6, 4)).to eq 24
  end


end

describe Output do
  output = Output.new

  it 'pretty prints the answer' do
    expect(output.print_answer(4)).to eq "The Answer is: 4"
    expect(output.print_answer(6)).to eq "The Answer is: 6"
    expect(output.print_answer(-1)).to eq "The Answer is: -1"
    expect(output.print_answer(0)).to eq "The Answer is: 0"
    expect(output.print_answer(Float::INFINITY)).to eq "The Answer is: Infinity"
  end

  it 'takes calculator outputs and prints them' do
    expect(output.print_answer(Calculator.new.add(2,2))).to eq "The Answer is: 4"
    expect(output.print_answer(Calculator.new.subtract(10,4))).to eq "The Answer is: 6"
  end


end