class Aluno {
  String _nome; // transformando em atributo privado
  int _idade;

  // métodos: getters (retorno) e setters (atribuição)
  // Servem para manipular os valores dos atributos,
  // controlando seu acesso direto
  String get getNome => _nome; // => isso se chama arrow function
  set setNome(nome) => _nome = nome;

  int get getIdade => _idade;
  set setIdade(idade) => _idade = idade;

  // métodos: comportamento
  // Servem para realizar alguma ação (verbo)
}
