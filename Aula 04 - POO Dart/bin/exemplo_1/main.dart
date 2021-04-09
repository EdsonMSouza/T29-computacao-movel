import 'Aluno.dart';

void main(List<String> args) {
  var aluno = Aluno();
  aluno.nome = 'Edson Melo';
  aluno.idade = 50;
  print('O aluno ${aluno.nome} tem ${aluno.idade} anos');
  aluno.fazAniversario(); // incrementa 1 no atributo idade
  print('Agora, o ${aluno.nome} tem ${aluno.idade} anos');
  print('');

  var aluno2 = Aluno();
  aluno2.nome = 'Tio Patinhas';
  aluno2.idade = 250;
  print('O aluno ${aluno2.nome} tem ${aluno2.idade} anos');
  aluno2.fazAniversario(); // incrementa 1 no atributo idade
  print('Agora, o ${aluno2.nome} tem ${aluno2.idade} anos');
}
