package models;

public class Aluno {

	private int id;
	private String nome;
	private String turma;
	private String ira;

	public Aluno() {
	}

	public Aluno(String nome, String turma, String ira) {
		this.nome = nome;
		this.turma = turma;
		this.ira = ira;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getTurma() {
		return turma;
	}

	public void setTurma(String turma) {
		this.turma = turma;
	}

	public String getIra() {
		return ira;
	}

	public void setIra(String ira) {
		this.ira = ira;
	}

}
