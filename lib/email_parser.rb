# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :email_string


  def initialize(emails)
    @email_string=emails
  end

  def parse
    res=[]
    email_array=@email_string.sub(", "," ")
    elsif @email_string.include?(" ")
      email_array=@email_string.split!(" ")
    else
      "No email delimiter found"
    end
    email_array.each do |email|
      if !res.include?(email)
        res<<email
      end
    end
    res
  end
end
