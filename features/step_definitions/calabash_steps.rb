require 'calabash-android/calabash_steps'


Given(/^some open app$/) do
@page =	page(PageTest).await(timeout: 5)
end

And(/^I input "(.*?)" in search$/) do |arg1|
  @page.write_search(arg1)  
end

Then(/^show searchs in Terminal$/) do
  @page.show_post
end
