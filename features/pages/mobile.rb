require 'calabash-android/abase'

class PageTest < Calabash::ABase

BTN_SEARCH = "* marked:'action_search'"
TXT_SEARCH = "* marked:'search_src_text'"
LBL_PRICE  = "* marked:'row_ad_price'"
LBL_TITLE  = "* marked:'row_ad_title'"
LBL_REGION = "* marked:'row_ad_region'"

 def trait
    BTN_SEARCH
  end

  def await(opts={})
    wait_for_elements_exist([trait])
    self
  end
def inicializar_app
  if  "* marked:'Escolher estado'" then
  touch "* marked:'Escolher estado'"
  touch "* marked:'São Paulo'"
  touch "* marked:'DDD 11 - São Paulo e região'"
  end
end


def write_search(search) 
  touch BTN_SEARCH
  enter_text TXT_SEARCH, search
  press_enter_button
end

def show_post
    $i=0
  while $i < 4 do
  wait_for_elements_exist LBL_PRICE
  price =  query(LBL_PRICE, :text)[$i]
  title =  query(LBL_TITLE, :text)[$i]
  region = query(LBL_REGION, :text)[$i]
  puts "Oferta #{$i} -  #{price},  #{title}, #{region}. "
   $i +=1
   puts $i
  end 
end

end