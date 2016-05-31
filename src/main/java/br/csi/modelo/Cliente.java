package br.csi.modelo;

public class Cliente {

	private Long codigo;
	private String nome;
	private String ruaNroComp;
	private String bairro;
	private String cidade;
	
	public Long getCodigo() {
		return codigo;
	}
	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getRuaNroComp() {
		return ruaNroComp;
	}
	public void setRuaNroComp(String ruaNroComp) {
		this.ruaNroComp = ruaNroComp;
	}
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	
}
