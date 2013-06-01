require 'net/http'
require 'json'
 
class CatData
  
  def self.get_data
    result = do_request("/resource/9uq7-nngh.json")

    return JSON.parse(result.body)
  end
  
  def self.get_metadata
    result = do_request("/api/views/9uq7-nngh/rows.json")

    return JSON.parse(result.body)
  end

  def self.columns
    get_metadata["meta"]["view"]["columns"]
  end
  
  def self.column_names
    columns.collect{|n| n["name"] }
  end
  
  @@oauth_key
  @@connection = nil
  private
  def self.do_request(path, kind = :get)
    request = if kind == :get
      Net::HTTP::Get.new(path)
    elsif kind == :post
      Net::HTTP::Post.new(path)
    end
    request["Accept"] = "application/json"
    request["Content-Type"] = "application/json"
    request["X-App-Token"] = Socrata::APP_TOKEN
    request.basic_auth "#{Socrata::USER}", "#{Socrata::PASSWORD}"
    
    return connection.request(request)
  end
  
  def self.connection
    return @@connection if @@connection

    http = Net::HTTP.new(Socrata::URL, 443)
    
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    http.set_debug_output $stderr
    http.open_timeout = 10
    http.read_timeout = 15

    @@connection = http
  end
  
  def oauth_key
    return @@oauth_key if @@oauth_key
    request = Net::HTTP::Get.new("/resource/9uq7-nngh.json")
    request["Accept"] = "application/json"
    request["Content-Type"] = "application/json"
    request["X-App-Token"] = Socrata::APP_TOKEN
    
    result = connection.request(request)
    
    value = 
    
    @@oauth_key = value
  end
end
