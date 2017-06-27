class Preencher_Timesheets
	def Acessar_URL
		navegar_pagina($massa_dados['url'])
	end

	def Recuperar_Captcha_e_Digitar
		captcha = recuperar_objeto("id", "caption").text
		inserir_texto("id", "txtcaption", captcha, "Digitando o captcha")
	end

	def pegar_valor_timesheet
		clicar_botao("link_text" , "Ponto", "Selecionar Ponto")
		clicar_botao("link_text" , "Consulta", "Selecionar Ponto")
	end

	def Preencher_Dados_Acesso
		inserir_texto("id", "txtLogin", $massa_dados['usuario'], "Digitando o usuário")
		inserir_texto("id", "txtSenha", $massa_dados['senha'], "Digitando a senha")
	end

	def Click_Entrar
		clicar_botao("id", "btnEntrar", "Clicando em Entrar")
	end

	def Preencher_Combos_Tela_Inicial
		selecionar_combo("name", "ctl00$ContentConteudo$ddlFilial", $massa_dados['filial'], "Selecionar combo filial")
		selecionar_combo("name", "ctl00$ContentConteudo$ddlPlantasUsuario", $massa_dados['planta'], "Selecionar combo Planta")	
 	end

 	def Acessar_Pagina_Timesheets
 		clicar_botao("link_text" , "TimeSheet", "Selecionar Menu TimeSheet")
		clicar_botao("link_text" , "Lançamento de TimeSheet", "Selecionar Submenu Lançamento de TimeSheet")
	end

	def Click_Timesheets
		clicar_botao("id", "ctl00_ContentConteudo_btnAddAcao", "Clicando em Lançar TimeSheet")
	end

	def Preencher_Combos_Tela_Lancamento_Timesheet
		selecionar_combo("name", "ctl00$ContentConteudo$ddlProjeto", $massa_dados['projeto'], "Selecionar combo Projeto")
		selecionar_combo("name", "ctl00$ContentConteudo$ddlDemanda", $massa_dados['demanda'], "Selecionar combo Demanda")
		selecionar_combo("name", "ctl00$ContentConteudo$ddlTarefa", $massa_dados['tarefa'], "Selecionar combo Tarefa")

		inserir_texto("name", "ctl00$ContentConteudo$txtData_Trabalhada",  $massa_dados['data'], "Preenchendo Data")
		inserir_texto("name", "ctl00$ContentConteudo$txtHoras",  $massa_dados['horas'], "Preenchendo Hora")
		inserir_texto("name", "ctl00$ContentConteudo$txtObservacao",  $massa_dados['descricao'], "Preenchendo Descrição")
 	end

 	def Click_Salvar
		#clicar_botao("id", "ctl00$ContentConteudo$btnSalvar", "Clicando em Salvar")

		if verificar_existencia("id", "ctl00_ContentConteudo_btnSalvar")
			puts "Salvando..."
		else
			puts "Não achou na tela o botão Salvar"
		end

	end

	def Validar_Teste
		clicar_botao("id", "ctl00_ContentConteudo_btnCancelar", "Validando teste")
	end
end