class EmailAddressParser
    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end

    def parse
        delim = /[\s,\,]/

        res_arr = @emails.split(delim).collect do |email| 
            if email.length > 0
                email.strip
            else
                nil
            end
        end.select {|e| e != nil}
        
        res_arr.uniq
    end
end

 