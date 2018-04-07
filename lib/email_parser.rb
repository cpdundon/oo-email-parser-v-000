# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :addresses
  
  def initialize(email_info)
      @addresses = parse(email_info)
  end
  
  def parse(str)
    arr = str.scan(/[^[([\s]|[,][\s])]]/)
    arr
  end
end