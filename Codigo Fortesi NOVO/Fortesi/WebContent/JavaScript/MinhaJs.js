function ValidarFormCadCliente(form1){
	if(form1.txtNome.value == ""){
		alert("Preencha o campo Nome");
		form1.txtNome.focus();
		return false;
	}
	if(form1.txtCpf.value == ""){
		alert("Preencha o campo Cpf");
		form1.txtCpf.focus();
		return false;
	}
	if(form1.txtRg.value == ""){
		alert("Preencha o campo Rg");
		form1.txtRg.focus();
		return false;
	}
	if(form1.txtData.value == ""){
		alert("Preencha o campo Data de Nascimento");
		form1.txtData.focus();
		return false;
	}
	if(form1.txtCidade.value == ""){
		alert("Preencha o campo Cidade")
		form1.txtCidade.focus();
	}
	if(form1.txtSexo.value == ""){
		alert("Selecione o campo Sexo");
		form1.txtSexo.focus();
		return false;
	}
	if(form1.txtEstadoCivil.value == ""){
		alert("Selecione o campo Estado Civil");
		form1.txtEstadoCivil.focus();
		return false;
	}
		return true;
}
//botao ajuda
function alertaAjuda(){
	alert("Olá Você encontrou algum problema com o fortesi? tem alguma sugestão? entre em contato softechfortesi@hotmail.com");
}


//Fomulário de cadastro de processo invalidar campos vazios
function ValidarFormCadProcesso(form2){
	if(form2.txtNProcesso.value == ""){
		alert("Preencha o Campo Numero do Processo");
		form2.txtNProcesso.focus();
		return false;
	}
	if(form2.cliente.value == ""){
		alert("Selecione um cliente");
		return false;
	}
	if(form2.txtAssunto.value == ""){
		alert("Preencha o Campo Assunto");
		form2.txtAssunto.focus();
		return false;
	}
	if(form2.txtTipoacao.value == ""){
		alert("Preencha o Campo Tipo de Acao");
		form2.txtTipoacao.focus();
		return false;
	}
	if(form2.txtDataCad.value == ""){
		alert("Preencha o Campo Data de Cadastro");
		form2.txtDataCad.focus();
		return false;
	}
	if(form2.txtDataEnce.value == ""){
		alert("Preencha o Campo Data de Encerramento");
		form2.txtDataEnce.focus();
		return false;
	}
	if(form2.txtCondProcess.value == ""){
		alert("Preencha o Campo Condicao Processual");
		form2.txtCondProcess.focus();
		return false;
	}
	if(form2.txtParteContraria.value == ""){
		alert("Preencha o Campo Parte Contraria");
		form2.txtParteContraria.focus();
		return false;
	}
	if(form2.txtTipoJustica.value == ""){
		alert("Preencha o campo tipo de Justica");
		form2.txtTipoJustica.focus();
		return false;
	}
	if(form2.txtCidadeComarca.value == ""){
		alert("Preencha o Campo Cidade/Comarca");
		form2.txtCidadeComarca.focus();
		return false;
	}
	if(form2.txtForum.value == ""){
		alert("Preencha o Campo Forum");
		form2.txtAssunto.focus();
		return false;
	}
	if(form2.txtVara.value == ""){
		alert("Preencha o Campo Vara ");
		form2.txtVara.focus();
		return false;
	}
		return true;
}
function Botaovoltartelainicial()
{
location.href="http://localhost:8080/Fortesi/Jsp/PaginaInicial.jsp"
}

function BotaoListarClientesCadastrados()
{
location.href="http://localhost:8080/Fortesi/Jsp/ListarClientes.jsp"
}

function BotaoListarProcessosCadastrados()
{
location.href="http://localhost:8080/Fortesi/Jsp/ListarProcessos.jsp"
}
function BotaoNovosDados(){
location.href="http://localhost:8080/Fortesi/Jsp/NovosDadosCadProcesso.jsp"	
}
function BotaoListarMaisProcesso(){
location.href="http://localhost:8080/Fortesi/Jsp/ListarProcessosPag2.jsp"
}
//Mascara do cpf
$(document).ready(function(){
		$("#cCpf").mask("999.999.999-99",{placeholder:" "});
});

//mascara telefone
$(document).ready(function(){
	$('#txtTelefone').mask("(99) 9999-9999",{placeholder:" "});
});
//mascara data
$(document).ready(function(){
	$('#txtData').mask("99/99/9999",{placeholder:" "}); //form cadastro cliente
	$('#NDataCad').mask("99/99/9999",{placeholder:" "}); //form cadastro processo
	$('#NDataEnce').mask("99/99/9999",{placeholder:" "}); //form cadastro processo
});
//mascara monetaria
//$(document).ready(function(){
//    $("input#NValorhora").maskMoney({showSymbol:true, symbol:"R$", decimal:",", thousands:"."});
//});
