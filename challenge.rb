require 'benchmark'


CACHE = {}

def cache(input)
  return CACHE[input] if CACHE[input]

  CACHE[input] = yield
end

def convert(number)
  cache(number) do
    return 0 if number == 0

    [
      [(number/2).floor, (number/3).floor, (number/4).floor].map { |res| convert(res) }.sum,
      number
    ].max
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
    output(convert(number))
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
