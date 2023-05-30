package models;

import java.util.ArrayList;
import java.util.List;

public class Turma {

	private static int i = 0;
	public static List<Aluno> alunos = new ArrayList<>();

	public static boolean inserir(Aluno aluno) {
		aluno.setId(++i);
		return alunos.add(aluno);
	}

	public static Aluno select(String nome) {
		for (Aluno aluno : alunos) {
			if (aluno.getNome().equals(nome)) {
				return aluno;
			}
		}
		return null;
	}

	public static boolean delete(String nome) {
		for (Aluno aluno : alunos) {
			if (aluno.getNome().equals(nome)) {
				alunos.remove(aluno);
				return true;
			}
		}
		return false;
	}
}
