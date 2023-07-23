require 'net/http'
class FetchApiService
    attr_reader :ip

    def Initialize(ip)
        @ip = ip
    end

    def perform
        uri =URI("http://ip-api.com/json/#{ip}")
        response = Net::HTTP.get(uri)
        parsed_response = JSON.parse(response)
        status = parsed_response.dig("status")
        if status == "success"
            parsed_response.dig("query")
        else
            nil
        end
    rescue
        nil
    end
    end
end