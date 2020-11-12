require 'benchmark'

CACHE = {}
SPLIT = [2, 3, 4]

def cache(input)
  return CACHE[input] if CACHE[input]

  CACHE[input] = yield
end

def convert(number)
  cache(number) do
    return 0 if number == 0

    [
      SPLIT.map { |split| convert((number/split).floor) }.sum,
      number
    ].max
  end
end

def main
  @output = []

  time = Benchmark.measure do
    File.open("input_example.txt", "r").each_line do |line|
      @output << convert(line.to_i)
    end
    file = File.open("output.txt", "w")
    file.write(@output.join("\n"))
  end
  puts time.real
end

main
