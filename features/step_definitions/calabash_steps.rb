require 'calabash-android/calabash_steps'

Dado(/^que abriu o app$/) do
@page =	page(PageTest).await(timeout: 5)
end

E(/^faça busca$/) do
	#@page.inicializar_app
  @page.write_search("Gol")  
end

Então(/^mostre$/) do
  @page.show_post
end
