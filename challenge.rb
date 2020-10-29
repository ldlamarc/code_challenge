require 'benchmark'

NUMBERS = [
  0,
  2,
  12,
  100,
  400,
  123456,
  654321,
  999999,
  1000000000
]

CACHE = {}

def convert(number)
  return 0 if number == 0
  return 1 if number == 1
  return CACHE[number] if CACHE[number]

  CACHE[number] = [
    [(number/2).floor, (number/3).floor, (number/4).floor].map { |res| convert(res) }.sum,
    number
  ].max
end

def numbers
  @numbers
end

def output(number)
  @output ||= []
  @output << number
end

def challenge
  numbers.map do |number|
    output(convert(number))
  end
end

def main
  @numbers = []
  File.open("input_example.txt", "r").each_line do |line|
    @numbers << line.to_i
  end
  time = Benchmark.measure do
    challenge
  end
  file = File.open("output.txt", "w")
  file.write(@output.join("\n"))
  puts time.real
end

main
