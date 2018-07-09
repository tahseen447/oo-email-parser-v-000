# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailParser
  attr_accessor :list

  def initialize(list)
    @list = list
  end

  def parse
    new_array = @list.split(" ")
    result =  new_array.map {|item| item !=","}
  #  if new_array == nil
  #    new_array = @list.split(",")
  #  end
    result.uniq
  end
end
