// Listas são estruturas que armazenam dados de forma sequencial
// São similares aos vetores e são indicadas por pares de colchetes "[...]"
void main(List<String> arguments) {
  // Declarando uma lista
  // Esse símbolo '<>' tem o nome de diamond
  var produtos = <String>['Cenoura', 'Batata', 'Melancia'];
  print(produtos);

  // Uma lista tem seus itens indexados, iniciando por zero
  // Mostrando ou acesssando um item pelo índice
  //     0       1         2
  // [Cenoura, Batata, Melancia]
  print(produtos[0]); // Cenoura
  print(produtos[1]); // Batata
  print(produtos[2]); // Melancia

  // Percorrendo a lista com laço
  // Tipo 1 - for tradicional
  for (var i = 0; i < produtos.length; i++) {
    // length calcula o tamanho
    print('Item $i => ${produtos[i]}');
  }

  // Tipo 2 - foreach]
  for (var produto in produtos) {
    print(produto);
  }

  // ADICIONAR ELEMENTOS (add)

  // Adicionar no final da lista
  // [Cenoura, Batata, Melancia]
  produtos.add('Brócolis');
  print(produtos);

  // Adicionar em um ponto específico, pelo índice
  produtos.insert(0, 'Pepino');
  print(produtos);

  // Adionando vários na mesma linha
  produtos..add('Maçã')..add('Pêra')..add('Graviola');
  print(produtos);

  // Adicionando vários através de um vetor
  produtos.insertAll(0, ['Tomate', 'Milho', 'Alface', 'Cenoura']);
  print(produtos);

  // Remover elementos da lista pelo valor
  produtos.remove('Graviola');
  produtos.remove('Cenoura');
  print(produtos);

  // Remover pelo índice
  produtos.removeAt(0);
  print(produtos);

  // Remover por intervalo (índices)
  //produtos.removeRange(4, 6);
  //print(produtos);

  produtos.add('Melancia');
  print(produtos);
  // Remover por Lambda (função anônima) - remove todos que atendem ao
  // requisito
  produtos.removeWhere((String produto) => produto == 'Melancia');
  print(produtos);

  // ATUALIZAÇÃO DE DADOS - Update
  produtos[0] = 'Soja';
  print(produtos);

  // Alterando via laço de repetição
  for (var i = 0; i < produtos.length; i++) {
    if (produtos[i] == 'Pêra') {
      produtos[i] = 'Abacaxi';
    }
  }
  print(produtos);

  // #############################################################
  // ATIVIDADE
  // #############################################################
  // Utilizando um laço de repetição, alterar o valor do
  // Item Laranja para Cebola se existir Laranja na lista.
  // Observação: Não vale usar o indexWhere()
  // Tempo: 5 minutos (21:10)
  //

  // #############################################################
  // ORDENAÇÃO: Crescente ou Decrescente
  // #############################################################
  var programas = <String>[
    'Domingo Legal',
    'Banheira do Gugu',
    'pânico',
    'Show do Milhão',
    'agora é Tarde'
  ];

  // Ordenação crescente
  var crescente = programas..sort();
  print(crescente);

  // Ordenação decrescente
  var decrescente = crescente.reversed;
  print(decrescente);

  // Outra forma de ordenar "chique"
  var x = <String>['Mesa', 'Cadeira', 'porta', 'churrasqueira'];
  x.sort((a, b) => a.compareTo(b));
  print(x);

  // Vamos normalizar os dados - transformando tudo em maiúsculas
  for (var i = 0; i < x.length; i++) {
    x[i] = x[i].toUpperCase();
  }
  print(x..sort());

  // Normalizar do jeito "profissa"
  var y = <String>['Mesa', 'Cadeira', 'porta', 'churrasqueira'];
  var saida = y.map((item) => item.toUpperCase()).toList()..sort();
  print(saida);

  // #############################################################
  // TREINANDO
  // #############################################################
  // Criar uma lista com 10 entradas numéricas (notas) e:
  // 1 - Calcular a média utilizando uma "função criada por você" chamada média
  // 2 - Mostrar as notas em ordem crescente e decrescente
  // 3 - Se a média for menor que 7.2, então adiconar mais uma nota
  // 4 - Utilizar o laço de repetição foreach
  // #############################################################
  // TREINANDO
  // #############################################################
  // Criar uma lista com 10 entradas numéricas (notas) e:
  // 1 - Calcular a média utilizando uma "função criada por você" chamada média
  // 2 - Mostrar as notas em ordem crescente e decrescente
  // 3 - Se a média for menor que 7.2, então adiconar mais uma nota
  // 4 - Utilizar o laço de repetição foreach
  // Tempo: 21:10 (16 minutos)

  var notas = <double>[5.2, 6.4, 7.2, 8.5, 9.2, 2.4, 3.5, 5.6, 10, 6.9];
  var media = calculaMedia(notas);
  print('Media: ' + media.toString());
  print('média: $media');

  if (media < 7.2) {
    notas.add(9.3);
  }
  notas.sort((a, b) => a.compareTo(b));
  print(notas);
  notas.sort((b, a) => a.compareTo(b));
  print(notas);

  // Trabalhando com objetos
  var alunos = <Aluno>[]; // não preciso determinar o tamanho da lista

  // Adicionando objetos na lista
  alunos.add(Aluno(ra: 123, nome: 'Edson Melo'));
  showAlunos(alunos);

  var al = List.filled(0, Aluno(), growable: true);
  al.add(Aluno(ra: 321, nome: 'Maria'));
  showAlunos(al);

  // #############################################################
  // TREINANDO
  // #############################################################
  // Tranformar a lista de produtos em Objeto e:
  // 1 - Adicionar produtos
  // 2 - Remover produtos
  // Utilizar o indexWhere e removeWhere
}

void mostraProdutos(List<String> lista) {
  print('-----');
  for (var item in lista) {
    print(item);
  }
  print('-----');
}

void showAlunos(var alunos) {
  for (var aluno in alunos) {
    print(aluno.nome);
  }
}

class Aluno {
  int ra;
  String nome;

  Aluno({this.ra, this.nome});
}

// Calcula a média para uma lista informada no parâmetro
dynamic calculaMedia(List<double> lista) {
  dynamic soma = 0;

  for (var item in lista) {
    soma += item;
  }
  return soma / lista.length;
}
