require 'mailgun'

class HomeController < ApplicationController
    
    def write
        
    end
    
    def complete
        @to = params[:email]
        @title = params[:title]
        @from = params[:email2]
        @content = params[:content]
        
        mg_client = Mailgun::Client.new("key-7093b51f2f16e2d3a84868e4e0aef758")

        message_params =  {
                   from: @from,
                   to:   @to,
                   subject: @title,
                   text:    @content
                  }

        result = mg_client.send_message('sandbox8e6d7ffae14a435cbdf5e65ef9b2082a.mailgun.org', message_params).to_h!

        message_id = result['id']
        message = result['message']
    
    end
end
