package br.com.fortesi.model;

public class Processo {
	private int id;
	private String cliente;
	private String numprocesso;
	private String assunto;
	private String tipoacao;
	private String datacad;
	private String dataencerramento;
	private String condprocessual;
	private String partecontraria;
	private String tipojust_tribunal;
	private String cidade_comarca;
	private String forum;
	private String vara;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCliente() {
		return cliente;
	}
	public void setCliente(String cliente) {
		this.cliente = cliente;
	}
	public String getNumprocesso() {
		return numprocesso;
	}
	public void setNumprocesso(String numprocesso) {
		this.numprocesso = numprocesso;
	}
	public String getAssunto() {
		return assunto;
	}
	public void setAssunto(String assunto) {
		this.assunto = assunto;
	}
	public String getTipoacao() {
		return tipoacao;
	}
	public void setTipoacao(String tipoacao) {
		this.tipoacao = tipoacao;
	}
	public String getDatacad() {
		return datacad;
	}
	public void setDatacad(String datacad) {
		this.datacad = datacad;
	}
	public String getDataencerramento() {
		return dataencerramento;
	}
	public void setDataencerramento(String dataencerramento) {
		this.dataencerramento = dataencerramento;
	}
	public String getCondprocessual() {
		return condprocessual;
	}
	public void setCondprocessual(String condprocessual) {
		this.condprocessual = condprocessual;
	}
	public String getPartecontraria() {
		return partecontraria;
	}
	public void setPartecontraria(String partecontraria) {
		this.partecontraria = partecontraria;
	}
	public String getTipojust_tribunal() {
		return tipojust_tribunal;
	}
	public void setTipojust_tribunal(String tipojust_tribunal) {
		this.tipojust_tribunal = tipojust_tribunal;
	}
	public String getCidade_comarca() {
		return cidade_comarca;
	}
	public void setCidade_comarca(String cidade_comarca) {
		this.cidade_comarca = cidade_comarca;
	}
	public String getForum() {
		return forum;
	}
	public void setForum(String forum) {
		this.forum = forum;
	}
	public String getVara() {
		return vara;
	}
	public void setVara(String vara) {
		this.vara = vara;
	}
	
	
}
