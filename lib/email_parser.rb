# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_reader :emails

    def initialize emails
    @emails = emails
    end

    def parse
        split_mail = emails.split(/[, ]/)
        
        filtered_mail = split_mail.filter do |email|
            email != ""
        end
        
        filtered_mail.uniq
    end
end