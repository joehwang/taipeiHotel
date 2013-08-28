taipeiHotel
===========

The ruby gem adapter Hotel location api from Taipei City Government.

##Installtiona##

`gem install taipeiHotel`

##Useage##

`require 'taipeiHotel'`

#### get all Hotel index and name
`TaipeiHotel.list` 
#### get hotel detail
`TaipeiHotel.detail(_hotelID)` 


#### write all taipei hotel data in your model
`aipeiHotel.import2DB(_Your model)`  

>Your model must have follow column.

> `t.string   "travelId"`

> `t.string   "travelName"`

> `t.text     "description"`

> `t.string   "address"`

> `t.string   "lat"`

> `t.string   "lng"`

> `t.string   "imgURL"`

> `t.string   "pb_organization"`
