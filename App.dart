import 'dart:io';
void main() {
  var op = 1;
  while(op!=0){
    print("Digite a opção [1]ola [2]seu nome: ");
    op = int.parse(stdin.readLineSync());
    switch(op){
      case 1:
        print("Ola");
        break;
      case 2:
        print("Digite seu nome: ");
        var nom = stdin.readLineSync();
        print("Digite sua idade: ");
        var idade = int.parse(stdin.readLineSync());
        algo(nom);
        break;
      default:
        print("Nao foi encontrado o tipo");
      }
    }
    
  }
void soma(String nome,{int idade}){
  print("seu nome é "+nome);
  String p = idade != null ? "nao nulla":" nulla";
  print('Sua idade é {$idade}');
}