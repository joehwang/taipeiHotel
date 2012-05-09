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
  def list
    res=self.connect()
  end
  def detail(_num)

  end
  def mergelist
   l=list()
   l.each do |x|
    _id=x["travelId"]
    p _id
    @endpoint="http://www.api.cloud.taipei.gov.tw/CSCP_API/etm/trv/rows/#{_id}"
    res=self.connect()
    p res.inspect
    return
  end

  end
    module_function :list
    module_function :detail
    module_function :mergelist
end
TaipeiHotel.mergelist()
