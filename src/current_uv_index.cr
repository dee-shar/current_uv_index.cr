require "json"
require "http/client"

class CurrentUvIndex
  API_PATH = "api/v1"
  def initialize
    @headers = HTTP::Headers{
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://currentuvindex.com")
    @http_client = HTTP::Client.new(uri)
  end

  def get_uvi(latitude : String, longitude : String) : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/uvi?latitude=#{latitude}&longitude=#{longitude}", headers: @headers).body)
  end
end
