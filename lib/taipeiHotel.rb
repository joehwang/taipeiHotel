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
  end
  def list
    res=self.connect()
  end
  def detail(_num)
	 @endpoint="http://www.api.cloud.taipei.gov.tw/CSCP_API/etm/trv/rows/#{_num}"
	 res=self.connect()
  end
  def import2DB(_dbobj)
   hotelids=list()
   hotelids.each do |x|
		_id=x["travelId"]    
		@endpoint="http://www.api.cloud.taipei.gov.tw/CSCP_API/etm/trv/rows/#{_id}"
		res=self.connect()    
		a=_dbobj.new
		a.travelId=res[0]["travelId"]
		a.travelName=res[0]["travelName"]
		a.description=res[0]["description"]
		a.address=res[0]["address"]
		a.lat=res[0]["lat"]
		a.lng=res[0]["lng"]
		a.imgURL=res[0]["imgURL"]
		a.pb_organization=res[0]["pb_organization"]	
		a.save    
  end

  end
    module_function :list
    module_function :detail
    module_function :import2DB
end
#_dbobj include column 
# t.string   "travelId"
# t.string   "travelName"
# t.text     "description"
# t.string   "address"
# t.string   "lat"
# t.string   "lng"
# t.string   "imgURL"
# t.string   "pb_organization"

