class ArtistsRequestService 
    
    def initialize

    end
    def request 
        endpoint = 'https://moat.ai/api/task/'
        response = HTTParty.get(
            endpoint,
            :headers => {'Content-Type' => 'application/json',
                         'Basic' => 'ZGV2ZWxvcGVyOlpHVjJaV3h2Y0dWeQ=='})
        response = JSON.parse(response.body)
        p response.flatten
    end
    


    
end