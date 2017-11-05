# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :email_list
  @@all = []

  def initialize(list_string)
    @email_list = list_string
    @@all<<self
  end

  def parse
    if self.email_list include?(',')
      email_array = self.email_list.split(', ')
    else
      email_array = self.email_list.split('.com ')
    if email_array.uniq.length == email_array.length
      email_array
    else
      email_array.uniq
    end
  end
end
