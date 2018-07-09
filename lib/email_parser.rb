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
    new_array.map! {|item| item.chomp(",")}
    result =  new_array.map {|item| if item !="," then item end}
    result.uniq
  end
end
