require 'benchmark'

CACHE = {}

def cache(input)
  return CACHE[input] if CACHE[input]

  CACHE[input] = yield
end

class Ingot
  def self.from_integer(n)
    cache(n) do
      Ingot.new(n)
    end
  end

  attr_reader :n

  def initialize(n)
    @n = n
  end

  def max_value
    @max_value ||= begin
      return 0 if n == 0

      [
        [(n/2).floor, (n/3).floor, (n/4).floor].map { |res| Ingot.from_integer(res).max_value }.sum,
        n
      ].max
    end
  end
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
    output(Ingot.from_integer(number).max_value)
  end
end

def main
  @numbers = []

  time = Benchmark.measure do
    File.open("input_example.txt", "r").each_line do |line|
      @numbers << line.to_i
    end
    challenge
    file = File.open("output.txt", "w")
    file.write(@output.join("\n"))
  end
  puts time.real
end

main
