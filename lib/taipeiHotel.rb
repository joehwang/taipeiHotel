#$LOAD_PATH << "."
require "taipeiHotel/version"
require 'json'
require 'net/http'
require 'pathname'
module TaipeiHotel
 # @endpoint="http://www.api.cloud.taipei.gov.tw/CSCP_API/etm/trv"
   @endpoint="http://www.api.cloud.taipei.gov.tw/CSCP_API/etm/trv/subCategories/H03/topics"
  def self.connect
    resp = Net::HTTP.get_response(URI.parse("#{@endpoint}"))
    data = resp.body
    result = JSON.parse(data)
   # result.each do |p|
   # p p["travelName"]
   # end
  end
  def rest
    res=self.connect()
  end
    module_function :rest
end
