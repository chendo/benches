require 'rubygems'
require 'bench_press'

extend BenchPress

author 'chendo'
summary "gsubbing with string literals vs regex. For some reason regexp is faster. I suspect it converts string literals to a regexp anyway."

reps 1000
str = 'hello'

measure "literal" do
  str.gsub('foo')
end

measure "regexp" do
  str.gsub(/bar/)
end
