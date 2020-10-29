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
    [(number/2).floor, (number/3).floor, (number/4).floor].map{ |res| convert(res)}.sum,
    number
  ].max
end

def numbers
  NUMBERS
end

def output(number)
  puts "Result: #{number}"
end

def challenge
  numbers.map do |number|
    output(convert(number))
  end
end

def main
 time = Benchmark.measure do
  challenge
 end
 puts time.real
end

main
