require 'benchmark'

def main
 time = Benchmark.measure do
  challenge
 end
 puts time.real
end


def challenge
  1*1
end

main
