class ArtistsRequestService 
    
    def initialize

    end
    def request 
     endpoint = 'https://moat.ai/api/task/'
     response = HTTParty.get(endpoint,
        #:body => {:text => data}.to_json,
        :headers => {'Content-Type' => 'application/json',
            'Authorization' => 'Basic ZGV2ZWxvcGVyOlpHVjJaV3h2Y0dWeQ=='})
        p response.header
    end
    


    
end