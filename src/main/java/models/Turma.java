package models;

import java.util.ArrayList;
import java.util.List;

public class Turma {

	private static int qtd = 0;
	private static List<Aluno> alunos = new ArrayList<>();

	public static boolean inserir(Aluno a) {
		a.setId(++qtd);
		return alunos.add(a);
	}

	public static List<Aluno> getAlunos() {
		return Turma.alunos;
	}

}
