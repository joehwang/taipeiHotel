taipeiHotel
===========

The ruby gem adapter Hotel location api of Taipei City Government.

##Installtiona##

> gem install taipeiHotel

##Useage##

>  *TaipeiHotel.list* #get all Hotel index and name

>  *TaipeiHotel.detail(_hotelID)* #get hotel detail

>  *TaipeiHotel.import2DB(_Your model)* #write all taipei hotel data in your model
>
>>Your model must have follow column.

>> t.string   "travelId"

>> t.string   "travelName"

>> t.text     "description"

>> t.string   "address"

>> t.string   "lat"

>> t.string   "lng"

>> t.string   "imgURL"

>> t.string   "pb_organization"
